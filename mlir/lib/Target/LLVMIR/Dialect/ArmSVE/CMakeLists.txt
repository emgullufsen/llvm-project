add_mlir_translation_library(MLIRArmSVEToLLVMIRTranslation
  ArmSVEToLLVMIRTranslation.cpp

  DEPENDS
  MLIRArmSVEConversionsIncGen

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRIR
  MLIRArmSVEDialect
  MLIRLLVMDialect
  MLIRSupport
  MLIRTargetLLVMIRExport
  )
