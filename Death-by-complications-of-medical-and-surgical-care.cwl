cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-therap---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-therap---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  anaesthetic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: anaesthetic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-therap---secondary/output
  miscellaneous-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: miscellaneous-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anaesthetic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-perfusion---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-perfusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: miscellaneous-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-puncture---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-puncture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-perfusion---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antiparkinsonism---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antiparkinsonism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-puncture---secondary/output
  agonist-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: agonist-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antiparkinsonism---secondary/output
  patient-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: patient-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: agonist-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antibiotics---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antibiotics---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: patient-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-specified---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antibiotics---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-heart---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-specified---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-misadventure---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-misadventure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-heart---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-anaesthesiology---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-anaesthesiology---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-misadventure---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-blocking---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-blocking---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-anaesthesiology---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antiparasitics---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antiparasitics---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-blocking---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-surgery---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-surgery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antiparasitics---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-plastic---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-plastic---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-surgery---secondary/output
  topical-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: topical-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-plastic---secondary/output
  central-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: central-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: topical-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  systemic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: systemic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: central-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-sequelae---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: systemic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-unspec---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-sequelae---secondary/output
  otorhinolaryngological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: otorhinolaryngological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-unspec---secondary/output
  mineralocorticoid-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: mineralocorticoid-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: otorhinolaryngological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-neuroleptics---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-neuroleptics---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: mineralocorticoid-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-medicine---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-medicine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-neuroleptics---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-immunization---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-immunization---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-medicine---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-examination---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-examination---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-immunization---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-acting---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-acting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-examination---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-classified---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-acting---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-fluid---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-fluid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-classified---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antipsychotics---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antipsychotics---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-fluid---secondary/output
  radiological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: radiological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antipsychotics---secondary/output
  derivative-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: derivative-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: radiological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antipyretics---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antipyretics---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: derivative-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  ophthalmic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: ophthalmic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antipyretics---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antianxiety---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antianxiety---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ophthalmic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-product---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-product---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antianxiety---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-constituent---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-constituent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-product---secondary/output
  neurological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: neurological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-constituent---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-transfusion---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-transfusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: neurological-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  orthopaedic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: orthopaedic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-transfusion---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-given---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-given---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: orthopaedic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-vasodilator---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-vasodilator---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-given---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antidepressant---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antidepressant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-vasodilator---secondary/output
  psychotropic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: psychotropic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antidepressant---secondary/output
  personal-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: personal-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: psychotropic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  bacterial-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: bacterial-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: personal-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-means---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-means---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: bacterial-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-monitoring---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-monitoring---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-means---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-inhibitor---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-inhibitor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-monitoring---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-packing---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-packing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-inhibitor---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-stimulant---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-stimulant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-packing---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-diuretics---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-diuretics---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-stimulant---secondary/output
  cardiovascular-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: cardiovascular-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-diuretics---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-antifungal---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antifungal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: cardiovascular-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-component---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-component---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-antifungal---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-accessory---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-accessory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-component---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-operation---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-operation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-accessory---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-instrument---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-instrument---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-operation---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-dosage---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-dosage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-instrument---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-anticoagulant---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-anticoagulant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-dosage---secondary/output
  opioid-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: opioid-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-anticoagulant---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-administration---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-administration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: opioid-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-gynae---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-gynae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-administration---secondary/output
  inappropriate-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: inappropriate-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-gynae---secondary/output
  antineopastic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: antineopastic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: inappropriate-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  mixed-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary:
    run: mixed-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: antineopastic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  death-by-complications-of-medical-and-surgical-care-unnatural-cause-preparation---secondary:
    run: death-by-complications-of-medical-and-surgical-care-unnatural-cause-preparation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: mixed-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-complications-of-medical-and-surgical-care-unnatural-cause-preparation---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
