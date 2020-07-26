/**
 * Copyright (C) 2014-2020 Philip Helger (www.helger.com)
 * philip[at]helger[dot]com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.helger.bdve.peppol;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.Locale;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.helger.bdve.api.execute.ValidationExecutionManager;
import com.helger.bdve.api.executorset.IValidationExecutorSet;
import com.helger.bdve.api.result.ValidationResultList;
import com.helger.bdve.engine.mock.MockFile;
import com.helger.bdve.engine.source.IValidationSourceXML;
import com.helger.bdve.engine.source.ValidationSourceXML;
import com.helger.bdve.peppol.mock.CTestFiles;

/**
 * Test class for class {@link ValidationExecutionManager}.
 *
 * @author Philip Helger
 */
public final class ValidationExecutionManagerFuncTest
{
  private static final Logger LOGGER = LoggerFactory.getLogger (ValidationExecutionManagerFuncTest.class);

  @Test
  public void testApplyCompleteValidation ()
  {
    for (final MockFile aTestFile : CTestFiles.getAllTestFiles ())
    {
      final IValidationExecutorSet <IValidationSourceXML> aExecutors = CTestFiles.VES_REGISTRY.getOfID (aTestFile.getVESID ());
      assertNotNull (aExecutors);

      LOGGER.info ("Validating " +
                   aTestFile.getResource ().getPath () +
                   " against " +
                   aExecutors.executors ().size () +
                   " validation layers using " +
                   aTestFile.getVESID ().getAsSingleID ());

      // Read as desired type
      final IValidationSourceXML aSource = ValidationSourceXML.create (aTestFile.getResource ());
      final ValidationResultList aErrors = ValidationExecutionManager.executeValidation (aExecutors, aSource, Locale.US);
      if (aTestFile.isGoodCase ())
        assertTrue (aErrors.getAllErrors ().toString (), aErrors.containsNoError ());
      else
        assertTrue (aErrors.containsAtLeastOneError ());
    }
  }
}
