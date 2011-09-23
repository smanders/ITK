WRAP_CLASS("itk::BSplineResampleImageFunction" POINTER)
  FOREACH(d ${WRAP_ITK_DIMS})
    FOREACH(t ${WRAP_ITK_SCALAR})
      WRAP_TEMPLATE("${ITKM_I${t}${d}}${ITKM_D}" "${ITKT_I${t}${d}},${ITKT_D}")    
    ENDFOREACH(t)
  ENDFOREACH(d)
END_WRAP_CLASS()