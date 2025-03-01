%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT1009+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n031.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:44:38 EST 2020

% Result     : Theorem 0.94s
% Output     : CNFRefutation 0.94s
% Verified   : 
% Statistics : Number of formulae       :   75 ( 165 expanded)
%              Number of clauses        :   48 (  67 expanded)
%              Number of leaves         :    8 (  30 expanded)
%              Depth                    :   18
%              Number of atoms          :  186 ( 567 expanded)
%              Number of equality atoms :   92 ( 169 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X3,k1_tarski(X0),X1)
        & v1_funct_1(X3) )
     => ( k1_xboole_0 != X1
       => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X3,k1_tarski(X0),X1)
          & v1_funct_1(X3) )
       => ( k1_xboole_0 != X1
         => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) ) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f14,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
      & k1_xboole_0 != X1
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X3,k1_tarski(X0),X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f15,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
      & k1_xboole_0 != X1
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X3,k1_tarski(X0),X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f14])).

fof(f16,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
        & k1_xboole_0 != X1
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X3,k1_tarski(X0),X1)
        & v1_funct_1(X3) )
   => ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))
      & k1_xboole_0 != sK1
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))
      & v1_funct_2(sK3,k1_tarski(sK0),sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))
    & k1_xboole_0 != sK1
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))
    & v1_funct_2(sK3,k1_tarski(sK0),sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f15,f16])).

fof(f25,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
     => ( k1_xboole_0 != X1
       => k2_relset_1(k1_tarski(X0),X1,X2) = k1_tarski(k1_funct_1(X2,X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(k1_tarski(X0),X1,X2) = k1_tarski(k1_funct_1(X2,X0))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      | ~ v1_funct_2(X2,k1_tarski(X0),X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(k1_tarski(X0),X1,X2) = k1_tarski(k1_funct_1(X2,X0))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      | ~ v1_funct_2(X2,k1_tarski(X0),X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f12])).

fof(f22,plain,(
    ! [X2,X0,X1] :
      ( k2_relset_1(k1_tarski(X0),X1,X2) = k1_tarski(k1_funct_1(X2,X0))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      | ~ v1_funct_2(X2,k1_tarski(X0),X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f24,plain,(
    v1_funct_2(sK3,k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f17])).

fof(f23,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f17])).

fof(f26,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f17])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X2,X0,X1] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f20,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f27,plain,(
    ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k9_relat_1(X1,X0),k2_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( r1_tarski(k9_relat_1(X1,X0),k2_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_tarski(k9_relat_1(X1,X0),k2_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f18,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f8])).

cnf(c_7,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_4,plain,
    ( ~ v1_funct_2(X0,k1_tarski(X1),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2)))
    | ~ v1_funct_1(X0)
    | k2_relset_1(k1_tarski(X1),X2,X0) = k1_tarski(k1_funct_1(X0,X1))
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f22])).

cnf(c_8,negated_conjecture,
    ( v1_funct_2(sK3,k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_139,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2)))
    | ~ v1_funct_1(X0)
    | k2_relset_1(k1_tarski(X1),X2,X0) = k1_tarski(k1_funct_1(X0,X1))
    | k1_tarski(X1) != k1_tarski(sK0)
    | sK3 != X0
    | sK1 != X2
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_8])).

cnf(c_140,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),sK1)))
    | ~ v1_funct_1(sK3)
    | k2_relset_1(k1_tarski(X0),sK1,sK3) = k1_tarski(k1_funct_1(sK3,X0))
    | k1_tarski(X0) != k1_tarski(sK0)
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_139])).

cnf(c_9,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_6,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_144,plain,
    ( k1_tarski(X0) != k1_tarski(sK0)
    | k2_relset_1(k1_tarski(X0),sK1,sK3) = k1_tarski(k1_funct_1(sK3,X0))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_140,c_9,c_6])).

cnf(c_145,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),sK1)))
    | k2_relset_1(k1_tarski(X0),sK1,sK3) = k1_tarski(k1_funct_1(sK3,X0))
    | k1_tarski(X0) != k1_tarski(sK0) ),
    inference(renaming,[status(thm)],[c_144])).

cnf(c_194,plain,
    ( k2_relset_1(k1_tarski(X0),sK1,sK3) = k1_tarski(k1_funct_1(sK3,X0))
    | k1_tarski(X0) != k1_tarski(sK0)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))
    | sK3 != sK3 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_145])).

cnf(c_251,plain,
    ( k2_relset_1(k1_tarski(X0),sK1,sK3) = k1_tarski(k1_funct_1(sK3,X0))
    | k1_tarski(X0) != k1_tarski(sK0)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) ),
    inference(equality_resolution_simp,[status(thm)],[c_194])).

cnf(c_288,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0_49),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))
    | k2_relset_1(k1_tarski(X0_49),sK1,sK3) = k1_tarski(k1_funct_1(sK3,X0_49))
    | k1_tarski(X0_49) != k1_tarski(sK0) ),
    inference(subtyping,[status(esa)],[c_251])).

cnf(c_510,plain,
    ( k2_relset_1(k1_tarski(sK0),sK1,sK3) = k1_tarski(k1_funct_1(sK3,sK0))
    | k1_tarski(sK0) != k1_tarski(sK0) ),
    inference(equality_resolution,[status(thm)],[c_288])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f19])).

cnf(c_173,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_7])).

cnf(c_174,plain,
    ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_173])).

cnf(c_290,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_46,X0_47))
    | k2_relset_1(X0_46,X0_47,sK3) = k2_relat_1(sK3) ),
    inference(subtyping,[status(esa)],[c_174])).

cnf(c_468,plain,
    ( k2_relset_1(k1_tarski(sK0),sK1,sK3) = k2_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_290])).

cnf(c_511,plain,
    ( k1_tarski(k1_funct_1(sK3,sK0)) = k2_relat_1(sK3)
    | k1_tarski(sK0) != k1_tarski(sK0) ),
    inference(light_normalisation,[status(thm)],[c_510,c_468])).

cnf(c_512,plain,
    ( k1_tarski(k1_funct_1(sK3,sK0)) = k2_relat_1(sK3) ),
    inference(equality_resolution_simp,[status(thm)],[c_511])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_164,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_7])).

cnf(c_165,plain,
    ( k7_relset_1(X0,X1,sK3,X2) = k9_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_164])).

cnf(c_291,plain,
    ( k7_relset_1(X0_46,X0_47,sK3,X0_53) = k9_relat_1(sK3,X0_53)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_46,X0_47)) ),
    inference(subtyping,[status(esa)],[c_165])).

cnf(c_471,plain,
    ( k7_relset_1(k1_tarski(sK0),sK1,sK3,X0_53) = k9_relat_1(sK3,X0_53) ),
    inference(equality_resolution,[status(thm)],[c_291])).

cnf(c_5,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_293,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_405,plain,
    ( r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_293])).

cnf(c_484,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_471,c_405])).

cnf(c_644,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k2_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_512,c_484])).

cnf(c_3,plain,
    ( r1_tarski(k9_relat_1(X0,X1),k2_relat_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f18])).

cnf(c_182,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_7])).

cnf(c_183,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_182])).

cnf(c_219,plain,
    ( r1_tarski(k9_relat_1(X0,X1),k2_relat_1(X0))
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_183])).

cnf(c_220,plain,
    ( r1_tarski(k9_relat_1(sK3,X0),k2_relat_1(sK3))
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2)) ),
    inference(unflattening,[status(thm)],[c_219])).

cnf(c_289,plain,
    ( r1_tarski(k9_relat_1(sK3,X0_53),k2_relat_1(sK3))
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_46,X0_47)) ),
    inference(subtyping,[status(esa)],[c_220])).

cnf(c_294,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_46,X0_47))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_289])).

cnf(c_454,plain,
    ( ~ sP0_iProver_split
    | k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) ),
    inference(instantiation,[status(thm)],[c_294])).

cnf(c_458,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_454])).

cnf(c_300,plain,
    ( X0_50 = X0_50 ),
    theory(equality)).

cnf(c_453,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) = k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)) ),
    inference(instantiation,[status(thm)],[c_300])).

cnf(c_295,plain,
    ( r1_tarski(k9_relat_1(sK3,X0_53),k2_relat_1(sK3))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_289])).

cnf(c_327,plain,
    ( r1_tarski(k9_relat_1(sK3,X0_53),k2_relat_1(sK3)) = iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_295])).

cnf(c_329,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k2_relat_1(sK3)) = iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(instantiation,[status(thm)],[c_327])).

cnf(c_296,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_289])).

cnf(c_326,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_296])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_644,c_458,c_453,c_329,c_326])).


%------------------------------------------------------------------------------
