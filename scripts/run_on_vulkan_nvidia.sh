#!/bin/bash
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json:/usr/share/vulkan/icd.d/primus_vk_wrapper.json
pvkrun $*
