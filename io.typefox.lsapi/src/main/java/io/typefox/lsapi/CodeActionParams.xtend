/*******************************************************************************
 * Copyright (c) 2016 TypeFox GmbH (http://www.typefox.io) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package io.typefox.lsapi

import io.typefox.lsapi.annotations.LanguageServerAPI

/**
 * The code action request is sent from the client to the server to compute commands for a given text document and range.
 * The request is triggered when the user moves the cursor into an problem marker in the editor or presses the lightbulb
 * associated with a marker.
 */
@LanguageServerAPI
interface CodeActionParams {
	
	/**
	 * The document in which the command was invoked.
	 */
	def TextDocumentIdentifier getTextDocument()
	
	/**
	 * The range for which the command was invoked.
	 */
	def Range getRange()
	
	/**
	 * Context carrying additional information.
	 */
	def CodeActionContext getContext()
	
}