<SML> 0.25

#=======================================================================
#             	name     convention
<ResidueDef>  	TYR      INTERNAL_1
#=======================================================================
	commonName = 'TYR'
	shortName  = 'Y'
	comment    = 'Regular Tyr residue'
	nameDict   = {'STAP': 'TYR', 'IUPAC': 'TYR', 'CYANA': 'TYR', 'PDB': 'TYR', 'XPLOR': 'TYR', 'CCPN': 'protein Tyr prot:HH', 'BMRBd': 'TYR', 'AQUA': 'TYR', 'INTERNAL_0': 'TYR', 'INTERNAL_1': 'TYR', 'CYANA2': 'TYR'}
	properties = ['protein', 'aromatic', 'large', 'polar']

	dihedrals  = <NTlist>
	#---------------------------------------------------------------
	<DihedralDef> PHI     
	#---------------------------------------------------------------
		atoms    = [(-1, 'C'), (0, 'N'), (0, 'CA'), (0, 'C')]
		karplus  = None
	</DihedralDef>
	#---------------------------------------------------------------
	<DihedralDef> PSI     
	#---------------------------------------------------------------
		atoms    = [(0, 'N'), (0, 'CA'), (0, 'C'), (1, 'N')]
		karplus  = None
	</DihedralDef>
	#---------------------------------------------------------------
	<DihedralDef> CHI1    
	#---------------------------------------------------------------
		atoms    = [(0, 'N'), (0, 'CA'), (0, 'CB'), (0, 'CG')]
		karplus  = None
	</DihedralDef>
	#---------------------------------------------------------------
	<DihedralDef> CHI2    
	#---------------------------------------------------------------
		atoms    = [(0, 'CA'), (0, 'CB'), (0, 'CG'), (0, 'CD1')]
		karplus  = None
	</DihedralDef>
	#---------------------------------------------------------------
	<DihedralDef> CHI6    
	#---------------------------------------------------------------
		atoms    = [(0, 'CE1'), (0, 'CZ'), (0, 'OH'), (0, 'HH')]
		karplus  = None
	</DihedralDef>
	#---------------------------------------------------------------
	<DihedralDef> OMEGA   
	#---------------------------------------------------------------
		atoms    = [(-1, 'CA'), (-1, 'C'), (0, 'N'), (0, 'CA')]
		karplus  = None
	</DihedralDef>
	</NTlist>

	atoms      = <NTlist>
	#---------------------------------------------------------------
	<AtomDef> N       
	#---------------------------------------------------------------
		topology   = [(-1, 'C'), (0, 'H'), (0, 'CA')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'N', 'IUPAC': 'N', 'CYANA': 'N', 'PDB': 'N', 'XPLOR': 'N', 'CCPN': 'N', 'BMRBd': 'N', 'AQUA': 'N', 'INTERNAL_0': 'N', 'INTERNAL_1': 'N', 'CYANA2': 'N'}
		aliases    = []
		type       = 'N_AMI'
		spinType   = '15N'
		shift      = NTdict( average = 121.13, sd = 12.29 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isNotCarbon', 'notcarbon', 'isNitrogen', 'nitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> H       
	#---------------------------------------------------------------
		topology   = [(0, 'N')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'HN', 'IUPAC': 'H', 'CYANA': 'HN', 'PDB': 'H', 'XPLOR': 'HN', 'CCPN': 'H', 'BMRBd': 'H', 'AQUA': 'H', 'INTERNAL_0': 'HN', 'INTERNAL_1': 'H', 'CYANA2': 'H'}
		aliases    = ['HN', 'H']
		type       = 'H_AMI'
		spinType   = '1H'
		shift      = NTdict( average = 8.34, sd = 0.75 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CA      
	#---------------------------------------------------------------
		topology   = [(0, 'N'), (0, 'HA'), (0, 'CB'), (0, 'C')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CA', 'IUPAC': 'CA', 'CYANA': 'CA', 'PDB': 'CA', 'XPLOR': 'CA', 'CCPN': 'CA', 'BMRBd': 'CA', 'AQUA': 'CA', 'INTERNAL_0': 'CA', 'INTERNAL_1': 'CA', 'CYANA2': 'CA'}
		aliases    = []
		type       = 'C_ALI'
		spinType   = '13C'
		shift      = NTdict( average = 58.05, sd = 2.79 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HA      
	#---------------------------------------------------------------
		topology   = [(0, 'CA')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'HA', 'IUPAC': 'HA', 'CYANA': 'HA', 'PDB': 'HA', 'XPLOR': 'HA', 'CCPN': 'HA', 'BMRBd': 'HA', 'AQUA': 'HA', 'INTERNAL_0': 'HA', 'INTERNAL_1': 'HA', 'CYANA2': 'HA'}
		aliases    = []
		type       = 'H_ALI'
		spinType   = '1H'
		shift      = NTdict( average = 4.63, sd = 0.58 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CB      
	#---------------------------------------------------------------
		topology   = [(0, 'CA'), (0, 'HB2'), (0, 'HB3'), (0, 'CG')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CB', 'IUPAC': 'CB', 'CYANA': 'CB', 'PDB': 'CB', 'XPLOR': 'CB', 'CCPN': 'CB', 'BMRBd': 'CB', 'AQUA': 'CB', 'INTERNAL_0': 'CB', 'INTERNAL_1': 'CB', 'CYANA2': 'CB'}
		aliases    = []
		type       = 'C_ALI'
		spinType   = '13C'
		shift      = NTdict( average = 39.4, sd = 3.08 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isMethylene', 'methylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HB2     
	#---------------------------------------------------------------
		topology   = [(0, 'CB')]
		real       = []
		pseudo     = 'QB'
		nameDict   = {'STAP': 'HB2', 'IUPAC': 'HB2', 'CYANA': 'HB2', 'PDB': '1HB', 'XPLOR': 'HB2', 'CCPN': 'HB2', 'BMRBd': 'HB2', 'AQUA': 'HB2', 'INTERNAL_0': 'HB2', 'INTERNAL_1': 'HB2', 'CYANA2': 'HB2'}
		aliases    = []
		type       = 'H_ALI'
		spinType   = '1H'
		shift      = NTdict( average = 2.91, sd = 0.5 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasPseudoAtom', 'haspseudoatom', 'isMethylene', 'methylene', 'isMethyleneProton', 'methyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HB3     
	#---------------------------------------------------------------
		topology   = [(0, 'CB')]
		real       = []
		pseudo     = 'QB'
		nameDict   = {'STAP': 'HB1', 'IUPAC': 'HB3', 'CYANA': 'HB3', 'PDB': '2HB', 'XPLOR': 'HB1', 'CCPN': 'HB3', 'BMRBd': 'HB3', 'AQUA': 'HB3', 'INTERNAL_0': 'HB3', 'INTERNAL_1': 'HB3', 'CYANA2': 'HB3'}
		aliases    = []
		type       = 'H_ALI'
		spinType   = '1H'
		shift      = NTdict( average = 2.88, sd = 0.5 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasPseudoAtom', 'haspseudoatom', 'isMethylene', 'methylene', 'isMethyleneProton', 'methyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> QB      
	#---------------------------------------------------------------
		topology   = [(0, 'CB')]
		real       = ['HB2', 'HB3']
		pseudo     = None
		nameDict   = {'STAP': None, 'IUPAC': 'QB', 'CYANA': 'QB', 'PDB': None, 'XPLOR': 'HB*,HB#,HB%,HB+', 'CCPN': 'HB*', 'BMRBd': None, 'AQUA': 'QB', 'INTERNAL_0': 'QB', 'INTERNAL_1': 'QB', 'CYANA2': 'QB'}
		aliases    = []
		type       = 'PSEUD'
		spinType   = '1H'
		shift      = NTdict( average = 2.895, sd = 0.5 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isPseudoAtom', 'pseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isMethylene', 'methylene', 'isMethyleneProton', 'methyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> QD      
	#---------------------------------------------------------------
		topology   = [(0, 'CD1'), (0, 'CD2')]
		real       = ['HD1', 'HD2']
		pseudo     = None
		nameDict   = {'STAP': None, 'IUPAC': 'QD', 'CYANA': 'QD', 'PDB': None, 'XPLOR': 'HD*,HD#,HD%,HD+', 'CCPN': 'HD*', 'BMRBd': None, 'AQUA': 'QD', 'INTERNAL_0': 'QD', 'INTERNAL_1': 'QD', 'CYANA2': 'QD'}
		aliases    = []
		type       = 'PSEUD'
		spinType   = '1H'
		shift      = NTdict( average = 6.895, sd = 0.5449999999999999 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isPseudoAtom', 'pseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> QE      
	#---------------------------------------------------------------
		topology   = [(0, 'CE1'), (0, 'CE2')]
		real       = ['HE1', 'HE2']
		pseudo     = None
		nameDict   = {'STAP': None, 'IUPAC': 'QE', 'CYANA': 'QE', 'PDB': None, 'XPLOR': 'HE*,HE#,HE%,HE+', 'CCPN': 'HE*', 'BMRBd': None, 'AQUA': 'QE', 'INTERNAL_0': 'QE', 'INTERNAL_1': 'QE', 'CYANA2': 'QE'}
		aliases    = []
		type       = 'PSEUD'
		spinType   = '1H'
		shift      = NTdict( average = 6.675, sd = 0.49 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isPseudoAtom', 'pseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> QR      
	#---------------------------------------------------------------
		topology   = [(0, 'CD1'), (0, 'CE1'), (0, 'CE2'), (0, 'CD2')]
		real       = ['HD1', 'HD2', 'HE1', 'HE2']
		pseudo     = None
		nameDict   = {'STAP': None, 'IUPAC': 'QR', 'CYANA': 'QR', 'PDB': None, 'XPLOR': None, 'CCPN': 'HD*|HE*', 'BMRBd': None, 'AQUA': 'QR', 'INTERNAL_0': 'QR', 'INTERNAL_1': 'QR', 'CYANA2': 'QR'}
		aliases    = []
		type       = 'PSEUD'
		spinType   = '1H'
		shift      = NTdict( average = 6.785, sd = 0.5175 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isPseudoAtom', 'pseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CG      
	#---------------------------------------------------------------
		topology   = [(0, 'CB'), (0, 'CD1'), (0, 'CD2')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CG', 'IUPAC': 'CG', 'CYANA': 'CG', 'PDB': 'CG', 'XPLOR': 'CG', 'CCPN': 'CG', 'BMRBd': 'CG', 'AQUA': 'CG', 'INTERNAL_0': 'CG', 'INTERNAL_1': 'CG', 'CYANA2': 'CG'}
		aliases    = []
		type       = 'C_VIN'
		spinType   = '13C'
		shift      = NTdict( average = 129.12, sd = 2.53 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CD1     
	#---------------------------------------------------------------
		topology   = [(0, 'CG'), (0, 'HD1'), (0, 'CE1')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CD1', 'IUPAC': 'CD1', 'CYANA': 'CD1', 'PDB': 'CD1', 'XPLOR': 'CD1', 'CCPN': 'CD1', 'BMRBd': 'CD1', 'AQUA': 'CD1', 'INTERNAL_0': 'CD1', 'INTERNAL_1': 'CD1', 'CYANA2': 'CD1'}
		aliases    = []
		type       = 'C_ARO'
		spinType   = '13C'
		shift      = NTdict( average = 131.95, sd = 7.41 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HD1     
	#---------------------------------------------------------------
		topology   = [(0, 'CD1')]
		real       = []
		pseudo     = 'QD'
		nameDict   = {'STAP': 'HD1', 'IUPAC': 'HD1', 'CYANA': 'HD1', 'PDB': 'HD1', 'XPLOR': 'HD1', 'CCPN': 'HD1', 'BMRBd': 'HD1', 'AQUA': 'HD1', 'INTERNAL_0': 'HD1', 'INTERNAL_1': 'HD1', 'CYANA2': 'HD1'}
		aliases    = []
		type       = 'H_ARO'
		spinType   = '1H'
		shift      = NTdict( average = 6.9, sd = 0.52 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasPseudoAtom', 'haspseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CE1     
	#---------------------------------------------------------------
		topology   = [(0, 'CD1'), (0, 'HE1'), (0, 'CZ')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CE1', 'IUPAC': 'CE1', 'CYANA': 'CE1', 'PDB': 'CE1', 'XPLOR': 'CE1', 'CCPN': 'CE1', 'BMRBd': 'CE1', 'AQUA': 'CE1', 'INTERNAL_0': 'CE1', 'INTERNAL_1': 'CE1', 'CYANA2': 'CE1'}
		aliases    = []
		type       = 'C_ARO'
		spinType   = '13C'
		shift      = NTdict( average = 117.57, sd = 4.52 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HE1     
	#---------------------------------------------------------------
		topology   = [(0, 'CE1')]
		real       = []
		pseudo     = 'QE'
		nameDict   = {'STAP': 'HE1', 'IUPAC': 'HE1', 'CYANA': 'HE1', 'PDB': 'HE1', 'XPLOR': 'HE1', 'CCPN': 'HE1', 'BMRBd': 'HE1', 'AQUA': 'HE1', 'INTERNAL_0': 'HE1', 'INTERNAL_1': 'HE1', 'CYANA2': 'HE1'}
		aliases    = []
		type       = 'H_ARO'
		spinType   = '1H'
		shift      = NTdict( average = 6.68, sd = 0.47 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasPseudoAtom', 'haspseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CZ      
	#---------------------------------------------------------------
		topology   = [(0, 'CE1'), (0, 'CE2'), (0, 'OH')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CZ', 'IUPAC': 'CZ', 'CYANA': 'CZ', 'PDB': 'CZ', 'XPLOR': 'CZ', 'CCPN': 'CZ', 'BMRBd': 'CZ', 'AQUA': 'CZ', 'INTERNAL_0': 'CZ', 'INTERNAL_1': 'CZ', 'CYANA2': 'CZ'}
		aliases    = []
		type       = 'C_VIN'
		spinType   = '13C'
		shift      = NTdict( average = 153.34, sd = 18.84 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CE2     
	#---------------------------------------------------------------
		topology   = [(0, 'CZ'), (0, 'HE2'), (0, 'CD2')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CE2', 'IUPAC': 'CE2', 'CYANA': 'CE2', 'PDB': 'CE2', 'XPLOR': 'CE2', 'CCPN': 'CE2', 'BMRBd': 'CE2', 'AQUA': 'CE2', 'INTERNAL_0': 'CE2', 'INTERNAL_1': 'CE2', 'CYANA2': 'CE2'}
		aliases    = []
		type       = 'C_ARO'
		spinType   = '13C'
		shift      = NTdict( average = 117.46, sd = 5.18 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HE2     
	#---------------------------------------------------------------
		topology   = [(0, 'CE2')]
		real       = []
		pseudo     = 'QE'
		nameDict   = {'STAP': 'HE2', 'IUPAC': 'HE2', 'CYANA': 'HE2', 'PDB': 'HE2', 'XPLOR': 'HE2', 'CCPN': 'HE2', 'BMRBd': 'HE2', 'AQUA': 'HE2', 'INTERNAL_0': 'HE2', 'INTERNAL_1': 'HE2', 'CYANA2': 'HE2'}
		aliases    = []
		type       = 'H_ARO'
		spinType   = '1H'
		shift      = NTdict( average = 6.67, sd = 0.51 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasPseudoAtom', 'haspseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> CD2     
	#---------------------------------------------------------------
		topology   = [(0, 'CG'), (0, 'CE2'), (0, 'HD2')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'CD2', 'IUPAC': 'CD2', 'CYANA': 'CD2', 'PDB': 'CD2', 'XPLOR': 'CD2', 'CCPN': 'CD2', 'BMRBd': 'CD2', 'AQUA': 'CD2', 'INTERNAL_0': 'CD2', 'INTERNAL_1': 'CD2', 'CYANA2': 'CD2'}
		aliases    = []
		type       = 'C_ARO'
		spinType   = '13C'
		shift      = NTdict( average = 131.52, sd = 9.26 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HD2     
	#---------------------------------------------------------------
		topology   = [(0, 'CD2')]
		real       = []
		pseudo     = 'QD'
		nameDict   = {'STAP': 'HD2', 'IUPAC': 'HD2', 'CYANA': 'HD2', 'PDB': 'HD2', 'XPLOR': 'HD2', 'CCPN': 'HD2', 'BMRBd': 'HD2', 'AQUA': 'HD2', 'INTERNAL_0': 'HD2', 'INTERNAL_1': 'HD2', 'CYANA2': 'HD2'}
		aliases    = []
		type       = 'H_ARO'
		spinType   = '1H'
		shift      = NTdict( average = 6.89, sd = 0.57 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasPseudoAtom', 'haspseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> OH      
	#---------------------------------------------------------------
		topology   = [(0, 'CZ'), (0, 'HH')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'OH', 'IUPAC': 'OH', 'CYANA': 'OH', 'PDB': 'OH', 'XPLOR': 'OH', 'CCPN': 'OH', 'BMRBd': 'OH', 'AQUA': 'OH', 'INTERNAL_0': 'OH', 'INTERNAL_1': 'OH', 'CYANA2': 'OH'}
		aliases    = []
		type       = 'O_HYD'
		spinType   = '16O'
		shift      = None
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> HH      
	#---------------------------------------------------------------
		topology   = [(0, 'OH')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'HH', 'IUPAC': 'HH', 'CYANA': 'HH', 'PDB': 'HH', 'XPLOR': 'HH', 'CCPN': 'HH', 'BMRBd': 'HH', 'AQUA': 'HH', 'INTERNAL_0': 'HH', 'INTERNAL_1': 'HH', 'CYANA2': 'HH'}
		aliases    = []
		type       = 'H_OXY'
		spinType   = '1H'
		shift      = NTdict( average = 9.08, sd = 3.03 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isSidechain', 'sidechain', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> C       
	#---------------------------------------------------------------
		topology   = [(0, 'CA'), (0, 'O'), (1, 'N')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'C', 'IUPAC': 'C', 'CYANA': 'C', 'PDB': 'C', 'XPLOR': 'C', 'CCPN': 'C', 'BMRBd': 'C', 'AQUA': 'C', 'INTERNAL_0': 'C', 'INTERNAL_1': 'C', 'CYANA2': 'C'}
		aliases    = ['C', 'CO']
		type       = 'C_BYL'
		spinType   = '13C'
		shift      = NTdict( average = 175.41, sd = 3.96 )
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isCarbon', 'carbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isAromatic', 'aromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> O       
	#---------------------------------------------------------------
		topology   = [(0, 'C')]
		real       = []
		pseudo     = None
		nameDict   = {'STAP': 'O,OT1', 'IUPAC': 'O', 'CYANA': 'O', 'PDB': 'O', 'XPLOR': 'O,OT1', 'CCPN': 'O', 'BMRBd': 'O', 'AQUA': 'O', 'INTERNAL_0': 'O', 'INTERNAL_1': 'O', 'CYANA2': 'O'}
		aliases    = ['O', "O'"]
		type       = 'O_BYL'
		spinType   = '16O'
		shift      = None
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isSidechain', 'sidechain', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> H1      
	#---------------------------------------------------------------
		topology   = [(0, 'N')]
		real       = []
		pseudo     = None
		nameDict   = {'CCPN': 'H1', 'STAP': 'H1,HT1', 'IUPAC': 'H1', 'INTERNAL_0': 'H1', 'INTERNAL_1': 'H1', 'XPLOR': 'HT1'}
		aliases    = []
		type       = 'H_AMI'
		spinType   = '1H'
		shift      = NTdict( average = 8.34, sd = 0.75 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> H2      
	#---------------------------------------------------------------
		topology   = [(0, 'N')]
		real       = []
		pseudo     = None
		nameDict   = {'CCPN': 'H2', 'STAP': 'H2,HT2', 'IUPAC': 'H2', 'INTERNAL_0': 'H2', 'INTERNAL_1': 'H2', 'XPLOR': 'HT2'}
		aliases    = []
		type       = 'H_AMI'
		spinType   = '1H'
		shift      = NTdict( average = 8.34, sd = 0.75 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> H3      
	#---------------------------------------------------------------
		topology   = [(0, 'N')]
		real       = []
		pseudo     = None
		nameDict   = {'CCPN': 'H3', 'STAP': 'H3,HT3', 'IUPAC': 'H3', 'INTERNAL_0': 'H3', 'INTERNAL_1': 'H3', 'XPLOR': 'HT3'}
		aliases    = []
		type       = 'H_AMI'
		spinType   = '1H'
		shift      = NTdict( average = 8.34, sd = 0.75 )
		hetatm     = False
		properties = ['isProton', 'proton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	#---------------------------------------------------------------
	<AtomDef> OXT     
	#---------------------------------------------------------------
		topology   = [(0, 'C')]
		real       = []
		pseudo     = None
		nameDict   = {'CCPN': "O''", 'STAP': 'OXT,OT2', 'IUPAC': "OXT,O''", 'INTERNAL_0': 'OXT', 'INTERNAL_1': 'OXT', 'XPLOR': 'OT2'}
		aliases    = ['OXT', "O''"]
		type       = 'O_BYL'
		spinType   = '16O'
		shift      = None
		hetatm     = False
		properties = ['isNotProton', 'notproton', 'isNotCarbon', 'notcarbon', 'isNotNitrogen', 'notnitrogen', 'isNotSulfur', 'isNotSulphur', 'notsulfur', 'notsulphur', 'isBackbone', 'backbone', 'isNotAromatic', 'notaromatic', 'isNotMethyl', 'notmethyl', 'isNotMethylProton', 'notmethylproton', 'isNotPseudoAtom', 'notpseudoatom', 'hasNoPseudoAtom', 'hasnopseudoatom', 'isSidechain', 'sidechain', 'isNotMethylene', 'notmethylene', 'isNotMethyleneProton', 'notmethyleneproton']
	</AtomDef>
	</NTlist>
</ResidueDef>
#=======================================================================
</SML>
