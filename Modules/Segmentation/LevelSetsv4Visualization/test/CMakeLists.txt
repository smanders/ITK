itk_module_test()
set(ITKLevelSetsv4VisualizationTests
itkVTKVisualizeLevelSetsInteractivePauseTest
itkVTKVisualize2DDenseImageLevelSetTest
itkVTKVisualize2DWhitakerLevelSetTest
itkImageToRGBVTKImageFilterTest
itkVTKVisualize2DCellsLevelSetTest
itkVTKVisualize2DCellsLevelSetSurfaceTest
itkVTKVisualize2DCellsLevelSetLayersTest
itkVTKVisualize2DWhitakerLevelSetLayersTest
itkVTKVisualize2DShiLevelSetLayersTest
itkVTKVisualize2DMalcolmLevelSetLayersTest
itkVTKVisualize3DDenseImageLevelSetTest
itkVTKVisualize3DWhitakerLevelSetTest
itkVTKVisualize2DLevelSetAsElevationMapTest
)

set(ITKLevelSetsv4Visualization-Test_LIBRARIES ${ITKLevelSetsv4Visualization_LIBRARIES} )
CreateTestDriver(ITKLevelSetsv4Visualization  "${ITKLevelSetsv4Visualization-Test_LIBRARIES}" "${ITKLevelSetsv4VisualizationTests}")

set(TEMP ${ITK_TEST_OUTPUT_DIR})

itk_add_test(NAME itkVTKVisualize2DDenseImageLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DDenseImageLevelSetTest)

itk_add_test(NAME itkVTKVisualize2DWhitakerLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DWhitakerLevelSetTest)

itk_add_test(NAME itkImageToRGBVTKImageFilterTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkImageToRGBVTKImageFilterTest)

itk_add_test(NAME itkVTKVisualize2DWhitakerLevelSetLayersTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DWhitakerLevelSetLayersTest)

itk_add_test(NAME itkVTKVisualize2DShiLevelSetLayersTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DShiLevelSetLayersTest)

itk_add_test(NAME itkVTKVisualize2DMalcolmLevelSetLayersTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DMalcolmLevelSetLayersTest)

itk_add_test(NAME itkVTKVisualize3DDenseImageLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize3DDenseImageLevelSetTest)

itk_add_test(NAME itkVTKVisualize3DWhitakerLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize3DWhitakerLevelSetTest)

itk_add_test(NAME itkVTKVisualize2DCellsDenseLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetTest
  DATA{Input/cells.png} 60 Dense
  ${TEMP}/itkVTKVisualize2DCellsDenseLevelSetTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsDenseLevelSetSurfaceTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetSurfaceTest
  DATA{Input/cells.png} 60 Dense
  ${TEMP}/itkVTKVisualize2DCellsDenseLevelSetSurfaceTest.png
  )

itk_add_test(NAME itkVTKVisualize2DCellsWhitakerLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetTest
  DATA{Input/cells.png} 200 Whitaker
  ${TEMP}/itkVTKVisualize2DCellsWhitakerLevelSetTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsWhitakerLevelSetSurfaceTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetSurfaceTest
  DATA{Input/cells.png} 200 Whitaker
  ${TEMP}/itkVTKVisualize2DCellsWhitakerLevelSetSurfaceTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsWhitakerLevelSetLayersTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetLayersTest
  DATA{Input/cells.png} 200 Whitaker
  )

itk_add_test(NAME itkVTKVisualize2DCellsShiLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetTest
  DATA{Input/cells.png} 200 Shi
  ${TEMP}/itkVTKVisualize2DCellsShiLevelSetTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsShiLevelSetSurfaceTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetSurfaceTest
  DATA{Input/cells.png} 200 Shi
  ${TEMP}/itkVTKVisualize2DCellsShiLevelSetSurfaceTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsShiLevelSetLayersTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetLayersTest
  DATA{Input/cells.png} 200 Shi
  )

itk_add_test(NAME itkVTKVisualize2DCellsMalcolmLevelSetTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetTest
  DATA{Input/cells.png} 60 Malcolm
  ${TEMP}/itkVTKVisualize2DCellsMalcolmLevelSetTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsMalcolmLevelSetSurfaceTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetSurfaceTest
  DATA{Input/cells.png} 60 Malcolm
  ${TEMP}/itkVTKVisualize2DCellsMalcolmLevelSetSurfaceTest.png
  )
itk_add_test(NAME itkVTKVisualize2DCellsMalcolmLevelSetLayersTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DCellsLevelSetLayersTest
  DATA{Input/cells.png} 60 Malcolm
  )

itk_add_test(NAME itkVTKVisualizeLevelSetsInteractivePauseTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualizeLevelSetsInteractivePauseTest
  DATA{Input/cells.png} 30
  )

itk_add_test(NAME itkVTKVisualize2DLevelSetAsElevationMapTest
  COMMAND ITKLevelSetsv4VisualizationTestDriver itkVTKVisualize2DLevelSetAsElevationMapTest
  )
