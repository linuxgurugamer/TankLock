using System;
using KSP;


/******************************************************************************
 * Copyright (c) 2014~2015, Justin Bengtson
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met: 
 * 
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 ******************************************************************************/

namespace regexKSP {
	public class ModuleTankActionLock : PartModule {
		[KSPAction ("Toggle Resource Lock")]
		public void ToggleResourcesAction(KSPActionParam param) {
			this.toggleResources();
		}

		[KSPAction ("Lock Resources")]
		public void LockResourcesAction(KSPActionParam param) {
			this.lockResources();
		}

		[KSPAction ("Unlock Resources")]
		public void UnlockResourcesAction(KSPActionParam param) {
			this.unlockResources();
		}

		private void lockResources() {
			PartResourceList res = this.part.Resources;
			for(int i = 0; i < res.Count; i++) {
				res[i].flowState = false;
			}
		}

		private void unlockResources() {
			PartResourceList res = this.part.Resources;
			for(int i = 0; i < res.Count; i++) {
				res[i].flowState = true;
			}
		}

		private void toggleResources() {
			PartResourceList res = this.part.Resources;
			for(int i = 0; i < res.Count; i++) {
				res[i].flowState = !res[i].flowState;
			}
		}
	}
}
