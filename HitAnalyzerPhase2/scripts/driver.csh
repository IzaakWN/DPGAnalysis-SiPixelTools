#cmsDriver.py TTbar_Tauola_14TeV_cfi \
#--conditions POSTLS261_V2::All -n 10 --no_exec\
#--eventcontent FEVTDEBUG \
#-s GEN,SIM --datatier GEN-SIM --beamspot Gauss \
#--geometry Extended2023D17 --fileout file:step1BE.root 

# in: /afs/cern.ch/user/d/dkotlins/public/CMSSW/CMSSW_10_1_1/src/DPGAnalysis-SiPixelTools/HitAnalyzerPhase2/scripts dryRun for 'cd 21233.0_JpsiMM_14TeV+JpsiMM_14TeV_TuneCUETP8M1_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21
# cmsDriver.py dupa_cfi --conditions auto:phase2_realistic -n 10  --no_exec --era Phase2 --eventcontent FEVTDEBUG -s GEN,SIM --datatier GEN-SIM --beamspot HLLHC14TeV --geometry Extended2023D21 --fileout file:step1.root  


 cmsDriver.py SingleElectronPt15Eta1p7_2p7_cfi  --conditions auto:phase2_realistic -n 10 --no_exec --era Phase2 --eventcontent FEVTDEBUG --relval 9000,100 -s GEN,SIM --datatier GEN-SIM --beamspot HLLHC --geometry Extended2023D23 --fileout file:step1.root  > step1_SingleElectron
Pt15Eta1p7_2p7+SingleElectronPt15Eta1p7_2p7_2023D23PU_GenSimHLBeamSpotFull+DigiFullTriggerPU_2023D23PU+RecoFullGlobalPU_2023D23PU+HARVESTFullGlobalPU_2023D23PU.log  2>&1


#> step1_JpsiMM_14TeV+JpsiMM_14TeV_TuneCUETP8M1_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21.log  2>&1
 

# in: /afs/cern.ch/user/d/dkotlins/public/CMSSW/CMSSW_10_1_1/src/DPGAnalysis-SiPixelTools/HitAnalyzerPhase2/scripts dryRun for 'cd 21232.0_Higgs200ChargedTaus_14TeV+H200ChargedTaus_Tauola_14TeV_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21
# cmsDriver.py step2  --conditions auto:phase2_realistic -s DIGI:pdigi_valid,L1,L1TrackTrigger,DIGI2RAW,HLT:@fake2 --datatier GEN-SIM-DIGI-RAW -n 10 --geometry Extended2023D21 --era Phase2 --eventcontent FEVTDEBUGHLT --filein file:step1.root  --fileout file:step2.root  > step2_Higgs200ChargedTaus_14TeV+H200ChargedTaus_Tauola_14TeV_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21.log  2>&1
 

# in: /afs/cern.ch/user/d/dkotlins/public/CMSSW/CMSSW_10_1_1/src/DPGAnalysis-SiPixelTools/HitAnalyzerPhase2/scripts dryRun for 'cd 21230.0_QCD_Pt_3000_3500_14TeV+QCD_Pt_3000_3500_14TeV_TuneCUETP8M1_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21
# cmsDriver.py step3  --conditions auto:phase2_realistic -n 10 --era Phase2 --eventcontent FEVTDEBUGHLT,MINIAODSIM,DQM --runUnscheduled  -s RAW2DIGI,L1Reco,RECO,RECOSIM,PAT,VALIDATION:@phase2Validation+@miniAODValidation,DQM:@phase2+@miniAODDQM --datatier GEN-SIM-RECO,MINIAODSIM,DQMIO --geometry Extended2023D21 --filein file:step2.root  --fileout file:step3.root  > step3_QCD_Pt_3000_3500_14TeV+QCD_Pt_3000_3500_14TeV_TuneCUETP8M1_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21.log  2>&1
 
# in: /afs/cern.ch/user/d/dkotlins/public/CMSSW/CMSSW_10_1_1/src/DPGAnalysis-SiPixelTools/HitAnalyzerPhase2/scripts dryRun for 'cd 21231.0_QCD_Pt_80_120_14TeV+QCD_Pt_80_120_14TeV_TuneCUETP8M1_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21
# cmsDriver.py step4  --conditions auto:phase2_realistic -s HARVESTING:@phase2Validation+@phase2+@miniAODValidation+@miniAODDQM --era Phase2 --filein file:step3_inDQM.root --scenario pp --filetype DQM --geometry Extended2023D21 --mc  -n 100  --fileout file:step4.root  > step4_QCD_Pt_80_120_14TeV+QCD_Pt_80_120_14TeV_TuneCUETP8M1_2023D21_GenSimHLBeamSpotFull14+DigiFullTrigger_2023D21+RecoFullGlobal_2023D21+HARVESTFullGlobal_2023D21.log  2>&1
