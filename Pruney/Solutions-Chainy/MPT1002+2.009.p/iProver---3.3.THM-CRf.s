%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:04:23 EST 2020

% Result     : Theorem 1.99s
% Output     : CNFRefutation 1.99s
% Verified   : 
% Statistics : Number of formulae       :  139 ( 945 expanded)
%              Number of clauses        :   92 ( 341 expanded)
%              Number of leaves         :   13 ( 168 expanded)
%              Depth                    :   26
%              Number of atoms          :  405 (4092 expanded)
%              Number of equality atoms :  269 (1769 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r1_tarski(X2,X0)
       => ( r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2)))
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ( r1_tarski(X2,X0)
         => ( r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2)))
            | ( k1_xboole_0 != X0
              & k1_xboole_0 = X1 ) ) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f11,plain,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1) )
       => ( r1_tarski(X2,X0)
         => ( r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2)))
            | ( k1_xboole_0 != X0
              & k1_xboole_0 = X1 ) ) ) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f20,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2)))
      & ( k1_xboole_0 = X0
        | k1_xboole_0 != X1 )
      & r1_tarski(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f21,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2)))
      & ( k1_xboole_0 = X0
        | k1_xboole_0 != X1 )
      & r1_tarski(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f25,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2)))
        & ( k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & r1_tarski(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1) )
   => ( ~ r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2)))
      & ( k1_xboole_0 = sK0
        | k1_xboole_0 != sK1 )
      & r1_tarski(sK2,sK0)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK3,sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ~ r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2)))
    & ( k1_xboole_0 = sK0
      | k1_xboole_0 != sK1 )
    & r1_tarski(sK2,sK0)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f21,f25])).

fof(f42,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( k1_xboole_0 = X1
         => ( ( v1_funct_2(X2,X0,X1)
            <=> k1_xboole_0 = X2 )
            | k1_xboole_0 = X0 ) )
        & ( ( k1_xboole_0 = X1
           => k1_xboole_0 = X0 )
         => ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f18])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( ( v1_funct_2(X2,X0,X1)
              | k1_xboole_0 != X2 )
            & ( k1_xboole_0 = X2
              | ~ v1_funct_2(X2,X0,X1) ) )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( ( v1_funct_2(X2,X0,X1)
              | k1_relset_1(X0,X1,X2) != X0 )
            & ( k1_relset_1(X0,X1,X2) = X0
              | ~ v1_funct_2(X2,X0,X1) ) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f43,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(X0,k1_relat_1(X1))
       => r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f13])).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f35,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f46,plain,(
    ~ r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f34,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f44,plain,(
    r1_tarski(sK2,sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f53,plain,(
    ! [X2,X1] :
      ( k1_xboole_0 = k1_relset_1(k1_xboole_0,X1,X2)
      | ~ v1_funct_2(X2,k1_xboole_0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f37])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(flattening,[],[f22])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f48,plain,(
    ! [X1] : k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(equality_resolution,[],[f28])).

fof(f45,plain,
    ( k1_xboole_0 = sK0
    | k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f26])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f51,plain,(
    ! [X2,X0] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,k1_xboole_0)
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) ) ),
    inference(equality_resolution,[],[f40])).

fof(f29,plain,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f47,plain,(
    ! [X0] : k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(equality_resolution,[],[f29])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_19,negated_conjecture,
    ( v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_203,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_18])).

cnf(c_204,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | k1_relset_1(X0,X1,sK3) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_203])).

cnf(c_377,plain,
    ( k1_relset_1(X0,X1,sK3) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != sK3
    | sK1 != X1
    | sK0 != X0
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_204])).

cnf(c_378,plain,
    ( k1_relset_1(sK0,sK1,sK3) = sK0
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_377])).

cnf(c_436,plain,
    ( k1_relset_1(sK0,sK1,sK3) = sK0
    | k1_xboole_0 = sK1 ),
    inference(equality_resolution_simp,[status(thm)],[c_378])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_257,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_18])).

cnf(c_258,plain,
    ( k1_relset_1(X0,X1,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_257])).

cnf(c_706,plain,
    ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_258])).

cnf(c_819,plain,
    ( k1_relat_1(sK3) = sK0
    | sK1 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_436,c_706])).

cnf(c_5,plain,
    ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
    | ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_599,plain,
    ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) = iProver_top
    | r1_tarski(X0,k1_relat_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_239,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_18])).

cnf(c_240,plain,
    ( k8_relset_1(X0,X1,sK3,X2) = k10_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_239])).

cnf(c_734,plain,
    ( k8_relset_1(sK0,sK1,sK3,X0) = k10_relat_1(sK3,X0) ),
    inference(equality_resolution,[status(thm)],[c_240])).

cnf(c_15,negated_conjecture,
    ( ~ r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_598,plain,
    ( r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_784,plain,
    ( r1_tarski(sK2,k10_relat_1(sK3,k7_relset_1(sK0,sK1,sK3,sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_734,c_598])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_248,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_18])).

cnf(c_249,plain,
    ( k7_relset_1(X0,X1,sK3,X2) = k9_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_248])).

cnf(c_738,plain,
    ( k7_relset_1(sK0,sK1,sK3,X0) = k9_relat_1(sK3,X0) ),
    inference(equality_resolution,[status(thm)],[c_249])).

cnf(c_1006,plain,
    ( r1_tarski(sK2,k10_relat_1(sK3,k9_relat_1(sK3,sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_784,c_738])).

cnf(c_1290,plain,
    ( r1_tarski(sK2,k1_relat_1(sK3)) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_599,c_1006])).

cnf(c_476,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_686,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) = k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_476])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_188,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_18])).

cnf(c_189,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_188])).

cnf(c_681,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(instantiation,[status(thm)],[c_189])).

cnf(c_749,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_681])).

cnf(c_750,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_749])).

cnf(c_4,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_813,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_814,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_813])).

cnf(c_1352,plain,
    ( r1_tarski(sK2,k1_relat_1(sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1290,c_686,c_750,c_814])).

cnf(c_1357,plain,
    ( sK1 = k1_xboole_0
    | r1_tarski(sK2,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_819,c_1352])).

cnf(c_17,negated_conjecture,
    ( r1_tarski(sK2,sK0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_22,plain,
    ( r1_tarski(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1360,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1357,c_22])).

cnf(c_13,plain,
    ( ~ v1_funct_2(X0,k1_xboole_0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_301,plain,
    ( ~ v1_funct_2(X0,k1_xboole_0,X1)
    | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_18])).

cnf(c_302,plain,
    ( ~ v1_funct_2(sK3,k1_xboole_0,X0)
    | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_301])).

cnf(c_402,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != sK3
    | sK1 != X0
    | sK0 != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_302])).

cnf(c_403,plain,
    ( k1_relset_1(k1_xboole_0,sK1,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK0 != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_402])).

cnf(c_1,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_643,plain,
    ( k1_relset_1(k1_xboole_0,sK1,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0)
    | sK0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_403,c_1])).

cnf(c_1364,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0)
    | sK0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1360,c_643])).

cnf(c_16,negated_conjecture,
    ( k1_xboole_0 != sK1
    | k1_xboole_0 = sK0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1377,plain,
    ( sK0 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1360,c_16])).

cnf(c_1378,plain,
    ( sK0 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_1377])).

cnf(c_1444,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1364,c_1378])).

cnf(c_1445,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(equality_resolution_simp,[status(thm)],[c_1444])).

cnf(c_888,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_1,c_258])).

cnf(c_1369,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1360,c_888])).

cnf(c_1414,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_1369,c_1378])).

cnf(c_1417,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k1_xboole_0) != k1_zfmisc_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1414,c_1])).

cnf(c_1418,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3) ),
    inference(equality_resolution_simp,[status(thm)],[c_1417])).

cnf(c_1446,plain,
    ( k1_relat_1(sK3) = k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1445,c_1418])).

cnf(c_1449,plain,
    ( k1_relat_1(sK3) = k1_xboole_0
    | k1_zfmisc_1(k1_xboole_0) != k1_zfmisc_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1446,c_1])).

cnf(c_1450,plain,
    ( k1_relat_1(sK3) = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_1449])).

cnf(c_1681,plain,
    ( r1_tarski(sK2,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1450,c_1352])).

cnf(c_10,plain,
    ( ~ v1_funct_2(X0,X1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_283,plain,
    ( ~ v1_funct_2(X0,X1,k1_xboole_0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_18])).

cnf(c_284,plain,
    ( ~ v1_funct_2(sK3,X0,k1_xboole_0)
    | k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_xboole_0 = X0
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_283])).

cnf(c_388,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != sK3
    | sK3 = k1_xboole_0
    | sK1 != k1_xboole_0
    | sK0 != X0
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_284])).

cnf(c_389,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 = k1_xboole_0
    | sK1 != k1_xboole_0
    | k1_xboole_0 = sK0 ),
    inference(unflattening,[status(thm)],[c_388])).

cnf(c_0,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_650,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0)
    | sK3 = k1_xboole_0
    | sK1 != k1_xboole_0
    | sK0 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_389,c_0])).

cnf(c_2,plain,
    ( k2_zfmisc_1(X0,X1) != k1_xboole_0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_58,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_59,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_477,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_701,plain,
    ( sK0 != X0
    | sK0 = k1_xboole_0
    | k1_xboole_0 != X0 ),
    inference(instantiation,[status(thm)],[c_477])).

cnf(c_740,plain,
    ( sK0 != sK0
    | sK0 = k1_xboole_0
    | k1_xboole_0 != sK0 ),
    inference(instantiation,[status(thm)],[c_701])).

cnf(c_741,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_476])).

cnf(c_799,plain,
    ( sK1 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_477])).

cnf(c_800,plain,
    ( sK1 != k1_xboole_0
    | k1_xboole_0 = sK1
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_799])).

cnf(c_1282,plain,
    ( sK1 != k1_xboole_0
    | sK0 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_650,c_16,c_58,c_59,c_740,c_741,c_800])).

cnf(c_795,plain,
    ( X0 != X1
    | X0 = sK0
    | sK0 != X1 ),
    inference(instantiation,[status(thm)],[c_477])).

cnf(c_796,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_795])).

cnf(c_722,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_476])).

cnf(c_483,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_712,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(sK2,sK0)
    | X1 != sK0
    | X0 != sK2 ),
    inference(instantiation,[status(thm)],[c_483])).

cnf(c_721,plain,
    ( r1_tarski(sK2,X0)
    | ~ r1_tarski(sK2,sK0)
    | X0 != sK0
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_712])).

cnf(c_723,plain,
    ( X0 != sK0
    | sK2 != sK2
    | r1_tarski(sK2,X0) = iProver_top
    | r1_tarski(sK2,sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_721])).

cnf(c_725,plain,
    ( sK2 != sK2
    | k1_xboole_0 != sK0
    | r1_tarski(sK2,sK0) != iProver_top
    | r1_tarski(sK2,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_723])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1681,c_1357,c_1282,c_796,c_722,c_725,c_59,c_58,c_22])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n019.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:33:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.99/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.99/1.01  
% 1.99/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.99/1.01  
% 1.99/1.01  ------  iProver source info
% 1.99/1.01  
% 1.99/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.99/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.99/1.01  git: non_committed_changes: false
% 1.99/1.01  git: last_make_outside_of_git: false
% 1.99/1.01  
% 1.99/1.01  ------ 
% 1.99/1.01  
% 1.99/1.01  ------ Input Options
% 1.99/1.01  
% 1.99/1.01  --out_options                           all
% 1.99/1.01  --tptp_safe_out                         true
% 1.99/1.01  --problem_path                          ""
% 1.99/1.01  --include_path                          ""
% 1.99/1.01  --clausifier                            res/vclausify_rel
% 1.99/1.01  --clausifier_options                    --mode clausify
% 1.99/1.01  --stdin                                 false
% 1.99/1.01  --stats_out                             all
% 1.99/1.01  
% 1.99/1.01  ------ General Options
% 1.99/1.01  
% 1.99/1.01  --fof                                   false
% 1.99/1.01  --time_out_real                         305.
% 1.99/1.01  --time_out_virtual                      -1.
% 1.99/1.01  --symbol_type_check                     false
% 1.99/1.01  --clausify_out                          false
% 1.99/1.01  --sig_cnt_out                           false
% 1.99/1.01  --trig_cnt_out                          false
% 1.99/1.01  --trig_cnt_out_tolerance                1.
% 1.99/1.01  --trig_cnt_out_sk_spl                   false
% 1.99/1.01  --abstr_cl_out                          false
% 1.99/1.01  
% 1.99/1.01  ------ Global Options
% 1.99/1.01  
% 1.99/1.01  --schedule                              default
% 1.99/1.01  --add_important_lit                     false
% 1.99/1.01  --prop_solver_per_cl                    1000
% 1.99/1.01  --min_unsat_core                        false
% 1.99/1.01  --soft_assumptions                      false
% 1.99/1.01  --soft_lemma_size                       3
% 1.99/1.01  --prop_impl_unit_size                   0
% 1.99/1.01  --prop_impl_unit                        []
% 1.99/1.01  --share_sel_clauses                     true
% 1.99/1.01  --reset_solvers                         false
% 1.99/1.01  --bc_imp_inh                            [conj_cone]
% 1.99/1.01  --conj_cone_tolerance                   3.
% 1.99/1.01  --extra_neg_conj                        none
% 1.99/1.01  --large_theory_mode                     true
% 1.99/1.01  --prolific_symb_bound                   200
% 1.99/1.01  --lt_threshold                          2000
% 1.99/1.01  --clause_weak_htbl                      true
% 1.99/1.01  --gc_record_bc_elim                     false
% 1.99/1.01  
% 1.99/1.01  ------ Preprocessing Options
% 1.99/1.01  
% 1.99/1.01  --preprocessing_flag                    true
% 1.99/1.01  --time_out_prep_mult                    0.1
% 1.99/1.01  --splitting_mode                        input
% 1.99/1.01  --splitting_grd                         true
% 1.99/1.01  --splitting_cvd                         false
% 1.99/1.01  --splitting_cvd_svl                     false
% 1.99/1.01  --splitting_nvd                         32
% 1.99/1.01  --sub_typing                            true
% 1.99/1.01  --prep_gs_sim                           true
% 1.99/1.01  --prep_unflatten                        true
% 1.99/1.01  --prep_res_sim                          true
% 1.99/1.01  --prep_upred                            true
% 1.99/1.01  --prep_sem_filter                       exhaustive
% 1.99/1.01  --prep_sem_filter_out                   false
% 1.99/1.01  --pred_elim                             true
% 1.99/1.01  --res_sim_input                         true
% 1.99/1.01  --eq_ax_congr_red                       true
% 1.99/1.01  --pure_diseq_elim                       true
% 1.99/1.01  --brand_transform                       false
% 1.99/1.01  --non_eq_to_eq                          false
% 1.99/1.01  --prep_def_merge                        true
% 1.99/1.01  --prep_def_merge_prop_impl              false
% 1.99/1.01  --prep_def_merge_mbd                    true
% 1.99/1.01  --prep_def_merge_tr_red                 false
% 1.99/1.01  --prep_def_merge_tr_cl                  false
% 1.99/1.01  --smt_preprocessing                     true
% 1.99/1.01  --smt_ac_axioms                         fast
% 1.99/1.01  --preprocessed_out                      false
% 1.99/1.01  --preprocessed_stats                    false
% 1.99/1.01  
% 1.99/1.01  ------ Abstraction refinement Options
% 1.99/1.01  
% 1.99/1.01  --abstr_ref                             []
% 1.99/1.01  --abstr_ref_prep                        false
% 1.99/1.01  --abstr_ref_until_sat                   false
% 1.99/1.01  --abstr_ref_sig_restrict                funpre
% 1.99/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.99/1.01  --abstr_ref_under                       []
% 1.99/1.01  
% 1.99/1.01  ------ SAT Options
% 1.99/1.01  
% 1.99/1.01  --sat_mode                              false
% 1.99/1.01  --sat_fm_restart_options                ""
% 1.99/1.01  --sat_gr_def                            false
% 1.99/1.01  --sat_epr_types                         true
% 1.99/1.01  --sat_non_cyclic_types                  false
% 1.99/1.01  --sat_finite_models                     false
% 1.99/1.01  --sat_fm_lemmas                         false
% 1.99/1.01  --sat_fm_prep                           false
% 1.99/1.01  --sat_fm_uc_incr                        true
% 1.99/1.01  --sat_out_model                         small
% 1.99/1.01  --sat_out_clauses                       false
% 1.99/1.01  
% 1.99/1.01  ------ QBF Options
% 1.99/1.01  
% 1.99/1.01  --qbf_mode                              false
% 1.99/1.01  --qbf_elim_univ                         false
% 1.99/1.01  --qbf_dom_inst                          none
% 1.99/1.01  --qbf_dom_pre_inst                      false
% 1.99/1.01  --qbf_sk_in                             false
% 1.99/1.01  --qbf_pred_elim                         true
% 1.99/1.01  --qbf_split                             512
% 1.99/1.01  
% 1.99/1.01  ------ BMC1 Options
% 1.99/1.01  
% 1.99/1.01  --bmc1_incremental                      false
% 1.99/1.01  --bmc1_axioms                           reachable_all
% 1.99/1.01  --bmc1_min_bound                        0
% 1.99/1.01  --bmc1_max_bound                        -1
% 1.99/1.01  --bmc1_max_bound_default                -1
% 1.99/1.01  --bmc1_symbol_reachability              true
% 1.99/1.01  --bmc1_property_lemmas                  false
% 1.99/1.01  --bmc1_k_induction                      false
% 1.99/1.01  --bmc1_non_equiv_states                 false
% 1.99/1.01  --bmc1_deadlock                         false
% 1.99/1.01  --bmc1_ucm                              false
% 1.99/1.01  --bmc1_add_unsat_core                   none
% 1.99/1.01  --bmc1_unsat_core_children              false
% 1.99/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.99/1.01  --bmc1_out_stat                         full
% 1.99/1.01  --bmc1_ground_init                      false
% 1.99/1.01  --bmc1_pre_inst_next_state              false
% 1.99/1.01  --bmc1_pre_inst_state                   false
% 1.99/1.01  --bmc1_pre_inst_reach_state             false
% 1.99/1.01  --bmc1_out_unsat_core                   false
% 1.99/1.01  --bmc1_aig_witness_out                  false
% 1.99/1.01  --bmc1_verbose                          false
% 1.99/1.01  --bmc1_dump_clauses_tptp                false
% 1.99/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.99/1.01  --bmc1_dump_file                        -
% 1.99/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.99/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.99/1.01  --bmc1_ucm_extend_mode                  1
% 1.99/1.01  --bmc1_ucm_init_mode                    2
% 1.99/1.01  --bmc1_ucm_cone_mode                    none
% 1.99/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.99/1.01  --bmc1_ucm_relax_model                  4
% 1.99/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.99/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.99/1.01  --bmc1_ucm_layered_model                none
% 1.99/1.01  --bmc1_ucm_max_lemma_size               10
% 1.99/1.01  
% 1.99/1.01  ------ AIG Options
% 1.99/1.01  
% 1.99/1.01  --aig_mode                              false
% 1.99/1.01  
% 1.99/1.01  ------ Instantiation Options
% 1.99/1.01  
% 1.99/1.01  --instantiation_flag                    true
% 1.99/1.01  --inst_sos_flag                         false
% 1.99/1.01  --inst_sos_phase                        true
% 1.99/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.99/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.99/1.01  --inst_lit_sel_side                     num_symb
% 1.99/1.01  --inst_solver_per_active                1400
% 1.99/1.01  --inst_solver_calls_frac                1.
% 1.99/1.01  --inst_passive_queue_type               priority_queues
% 1.99/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.99/1.01  --inst_passive_queues_freq              [25;2]
% 1.99/1.01  --inst_dismatching                      true
% 1.99/1.01  --inst_eager_unprocessed_to_passive     true
% 1.99/1.01  --inst_prop_sim_given                   true
% 1.99/1.01  --inst_prop_sim_new                     false
% 1.99/1.01  --inst_subs_new                         false
% 1.99/1.01  --inst_eq_res_simp                      false
% 1.99/1.01  --inst_subs_given                       false
% 1.99/1.01  --inst_orphan_elimination               true
% 1.99/1.01  --inst_learning_loop_flag               true
% 1.99/1.01  --inst_learning_start                   3000
% 1.99/1.01  --inst_learning_factor                  2
% 1.99/1.01  --inst_start_prop_sim_after_learn       3
% 1.99/1.01  --inst_sel_renew                        solver
% 1.99/1.01  --inst_lit_activity_flag                true
% 1.99/1.01  --inst_restr_to_given                   false
% 1.99/1.01  --inst_activity_threshold               500
% 1.99/1.01  --inst_out_proof                        true
% 1.99/1.01  
% 1.99/1.01  ------ Resolution Options
% 1.99/1.01  
% 1.99/1.01  --resolution_flag                       true
% 1.99/1.01  --res_lit_sel                           adaptive
% 1.99/1.01  --res_lit_sel_side                      none
% 1.99/1.01  --res_ordering                          kbo
% 1.99/1.01  --res_to_prop_solver                    active
% 1.99/1.01  --res_prop_simpl_new                    false
% 1.99/1.01  --res_prop_simpl_given                  true
% 1.99/1.01  --res_passive_queue_type                priority_queues
% 1.99/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.99/1.01  --res_passive_queues_freq               [15;5]
% 1.99/1.01  --res_forward_subs                      full
% 1.99/1.01  --res_backward_subs                     full
% 1.99/1.01  --res_forward_subs_resolution           true
% 1.99/1.01  --res_backward_subs_resolution          true
% 1.99/1.01  --res_orphan_elimination                true
% 1.99/1.01  --res_time_limit                        2.
% 1.99/1.01  --res_out_proof                         true
% 1.99/1.01  
% 1.99/1.01  ------ Superposition Options
% 1.99/1.01  
% 1.99/1.01  --superposition_flag                    true
% 1.99/1.01  --sup_passive_queue_type                priority_queues
% 1.99/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.99/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.99/1.01  --demod_completeness_check              fast
% 1.99/1.01  --demod_use_ground                      true
% 1.99/1.01  --sup_to_prop_solver                    passive
% 1.99/1.01  --sup_prop_simpl_new                    true
% 1.99/1.01  --sup_prop_simpl_given                  true
% 1.99/1.01  --sup_fun_splitting                     false
% 1.99/1.01  --sup_smt_interval                      50000
% 1.99/1.01  
% 1.99/1.01  ------ Superposition Simplification Setup
% 1.99/1.01  
% 1.99/1.01  --sup_indices_passive                   []
% 1.99/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.99/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.99/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.99/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.99/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.99/1.01  --sup_full_bw                           [BwDemod]
% 1.99/1.01  --sup_immed_triv                        [TrivRules]
% 1.99/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.99/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.99/1.01  --sup_immed_bw_main                     []
% 1.99/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.99/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.99/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.99/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.99/1.01  
% 1.99/1.01  ------ Combination Options
% 1.99/1.01  
% 1.99/1.01  --comb_res_mult                         3
% 1.99/1.01  --comb_sup_mult                         2
% 1.99/1.01  --comb_inst_mult                        10
% 1.99/1.01  
% 1.99/1.01  ------ Debug Options
% 1.99/1.01  
% 1.99/1.01  --dbg_backtrace                         false
% 1.99/1.01  --dbg_dump_prop_clauses                 false
% 1.99/1.01  --dbg_dump_prop_clauses_file            -
% 1.99/1.01  --dbg_out_stat                          false
% 1.99/1.01  ------ Parsing...
% 1.99/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.99/1.01  
% 1.99/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.99/1.01  
% 1.99/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.99/1.01  
% 1.99/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.99/1.01  ------ Proving...
% 1.99/1.01  ------ Problem Properties 
% 1.99/1.01  
% 1.99/1.01  
% 1.99/1.01  clauses                                 15
% 1.99/1.01  conjectures                             3
% 1.99/1.01  EPR                                     2
% 1.99/1.01  Horn                                    12
% 1.99/1.01  unary                                   5
% 1.99/1.01  binary                                  5
% 1.99/1.01  lits                                    31
% 1.99/1.01  lits eq                                 23
% 1.99/1.01  fd_pure                                 0
% 1.99/1.01  fd_pseudo                               0
% 1.99/1.01  fd_cond                                 1
% 1.99/1.01  fd_pseudo_cond                          0
% 1.99/1.01  AC symbols                              0
% 1.99/1.01  
% 1.99/1.01  ------ Schedule dynamic 5 is on 
% 1.99/1.01  
% 1.99/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.99/1.01  
% 1.99/1.01  
% 1.99/1.01  ------ 
% 1.99/1.01  Current options:
% 1.99/1.01  ------ 
% 1.99/1.01  
% 1.99/1.01  ------ Input Options
% 1.99/1.01  
% 1.99/1.01  --out_options                           all
% 1.99/1.01  --tptp_safe_out                         true
% 1.99/1.01  --problem_path                          ""
% 1.99/1.01  --include_path                          ""
% 1.99/1.01  --clausifier                            res/vclausify_rel
% 1.99/1.01  --clausifier_options                    --mode clausify
% 1.99/1.01  --stdin                                 false
% 1.99/1.01  --stats_out                             all
% 1.99/1.01  
% 1.99/1.01  ------ General Options
% 1.99/1.01  
% 1.99/1.01  --fof                                   false
% 1.99/1.01  --time_out_real                         305.
% 1.99/1.01  --time_out_virtual                      -1.
% 1.99/1.01  --symbol_type_check                     false
% 1.99/1.01  --clausify_out                          false
% 1.99/1.01  --sig_cnt_out                           false
% 1.99/1.01  --trig_cnt_out                          false
% 1.99/1.01  --trig_cnt_out_tolerance                1.
% 1.99/1.01  --trig_cnt_out_sk_spl                   false
% 1.99/1.01  --abstr_cl_out                          false
% 1.99/1.01  
% 1.99/1.01  ------ Global Options
% 1.99/1.01  
% 1.99/1.01  --schedule                              default
% 1.99/1.01  --add_important_lit                     false
% 1.99/1.01  --prop_solver_per_cl                    1000
% 1.99/1.01  --min_unsat_core                        false
% 1.99/1.01  --soft_assumptions                      false
% 1.99/1.01  --soft_lemma_size                       3
% 1.99/1.01  --prop_impl_unit_size                   0
% 1.99/1.01  --prop_impl_unit                        []
% 1.99/1.01  --share_sel_clauses                     true
% 1.99/1.01  --reset_solvers                         false
% 1.99/1.01  --bc_imp_inh                            [conj_cone]
% 1.99/1.01  --conj_cone_tolerance                   3.
% 1.99/1.01  --extra_neg_conj                        none
% 1.99/1.01  --large_theory_mode                     true
% 1.99/1.01  --prolific_symb_bound                   200
% 1.99/1.01  --lt_threshold                          2000
% 1.99/1.01  --clause_weak_htbl                      true
% 1.99/1.01  --gc_record_bc_elim                     false
% 1.99/1.01  
% 1.99/1.01  ------ Preprocessing Options
% 1.99/1.01  
% 1.99/1.01  --preprocessing_flag                    true
% 1.99/1.01  --time_out_prep_mult                    0.1
% 1.99/1.01  --splitting_mode                        input
% 1.99/1.01  --splitting_grd                         true
% 1.99/1.01  --splitting_cvd                         false
% 1.99/1.01  --splitting_cvd_svl                     false
% 1.99/1.01  --splitting_nvd                         32
% 1.99/1.01  --sub_typing                            true
% 1.99/1.01  --prep_gs_sim                           true
% 1.99/1.01  --prep_unflatten                        true
% 1.99/1.01  --prep_res_sim                          true
% 1.99/1.01  --prep_upred                            true
% 1.99/1.01  --prep_sem_filter                       exhaustive
% 1.99/1.01  --prep_sem_filter_out                   false
% 1.99/1.01  --pred_elim                             true
% 1.99/1.01  --res_sim_input                         true
% 1.99/1.01  --eq_ax_congr_red                       true
% 1.99/1.01  --pure_diseq_elim                       true
% 1.99/1.01  --brand_transform                       false
% 1.99/1.01  --non_eq_to_eq                          false
% 1.99/1.01  --prep_def_merge                        true
% 1.99/1.01  --prep_def_merge_prop_impl              false
% 1.99/1.01  --prep_def_merge_mbd                    true
% 1.99/1.01  --prep_def_merge_tr_red                 false
% 1.99/1.01  --prep_def_merge_tr_cl                  false
% 1.99/1.01  --smt_preprocessing                     true
% 1.99/1.01  --smt_ac_axioms                         fast
% 1.99/1.01  --preprocessed_out                      false
% 1.99/1.01  --preprocessed_stats                    false
% 1.99/1.01  
% 1.99/1.01  ------ Abstraction refinement Options
% 1.99/1.01  
% 1.99/1.01  --abstr_ref                             []
% 1.99/1.01  --abstr_ref_prep                        false
% 1.99/1.01  --abstr_ref_until_sat                   false
% 1.99/1.01  --abstr_ref_sig_restrict                funpre
% 1.99/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.99/1.01  --abstr_ref_under                       []
% 1.99/1.01  
% 1.99/1.01  ------ SAT Options
% 1.99/1.01  
% 1.99/1.01  --sat_mode                              false
% 1.99/1.01  --sat_fm_restart_options                ""
% 1.99/1.01  --sat_gr_def                            false
% 1.99/1.01  --sat_epr_types                         true
% 1.99/1.01  --sat_non_cyclic_types                  false
% 1.99/1.01  --sat_finite_models                     false
% 1.99/1.01  --sat_fm_lemmas                         false
% 1.99/1.01  --sat_fm_prep                           false
% 1.99/1.01  --sat_fm_uc_incr                        true
% 1.99/1.01  --sat_out_model                         small
% 1.99/1.01  --sat_out_clauses                       false
% 1.99/1.01  
% 1.99/1.01  ------ QBF Options
% 1.99/1.01  
% 1.99/1.01  --qbf_mode                              false
% 1.99/1.01  --qbf_elim_univ                         false
% 1.99/1.01  --qbf_dom_inst                          none
% 1.99/1.01  --qbf_dom_pre_inst                      false
% 1.99/1.01  --qbf_sk_in                             false
% 1.99/1.01  --qbf_pred_elim                         true
% 1.99/1.01  --qbf_split                             512
% 1.99/1.01  
% 1.99/1.01  ------ BMC1 Options
% 1.99/1.01  
% 1.99/1.01  --bmc1_incremental                      false
% 1.99/1.01  --bmc1_axioms                           reachable_all
% 1.99/1.01  --bmc1_min_bound                        0
% 1.99/1.01  --bmc1_max_bound                        -1
% 1.99/1.01  --bmc1_max_bound_default                -1
% 1.99/1.02  --bmc1_symbol_reachability              true
% 1.99/1.02  --bmc1_property_lemmas                  false
% 1.99/1.02  --bmc1_k_induction                      false
% 1.99/1.02  --bmc1_non_equiv_states                 false
% 1.99/1.02  --bmc1_deadlock                         false
% 1.99/1.02  --bmc1_ucm                              false
% 1.99/1.02  --bmc1_add_unsat_core                   none
% 1.99/1.02  --bmc1_unsat_core_children              false
% 1.99/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.99/1.02  --bmc1_out_stat                         full
% 1.99/1.02  --bmc1_ground_init                      false
% 1.99/1.02  --bmc1_pre_inst_next_state              false
% 1.99/1.02  --bmc1_pre_inst_state                   false
% 1.99/1.02  --bmc1_pre_inst_reach_state             false
% 1.99/1.02  --bmc1_out_unsat_core                   false
% 1.99/1.02  --bmc1_aig_witness_out                  false
% 1.99/1.02  --bmc1_verbose                          false
% 1.99/1.02  --bmc1_dump_clauses_tptp                false
% 1.99/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.99/1.02  --bmc1_dump_file                        -
% 1.99/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.99/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.99/1.02  --bmc1_ucm_extend_mode                  1
% 1.99/1.02  --bmc1_ucm_init_mode                    2
% 1.99/1.02  --bmc1_ucm_cone_mode                    none
% 1.99/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.99/1.02  --bmc1_ucm_relax_model                  4
% 1.99/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.99/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.99/1.02  --bmc1_ucm_layered_model                none
% 1.99/1.02  --bmc1_ucm_max_lemma_size               10
% 1.99/1.02  
% 1.99/1.02  ------ AIG Options
% 1.99/1.02  
% 1.99/1.02  --aig_mode                              false
% 1.99/1.02  
% 1.99/1.02  ------ Instantiation Options
% 1.99/1.02  
% 1.99/1.02  --instantiation_flag                    true
% 1.99/1.02  --inst_sos_flag                         false
% 1.99/1.02  --inst_sos_phase                        true
% 1.99/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.99/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.99/1.02  --inst_lit_sel_side                     none
% 1.99/1.02  --inst_solver_per_active                1400
% 1.99/1.02  --inst_solver_calls_frac                1.
% 1.99/1.02  --inst_passive_queue_type               priority_queues
% 1.99/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.99/1.02  --inst_passive_queues_freq              [25;2]
% 1.99/1.02  --inst_dismatching                      true
% 1.99/1.02  --inst_eager_unprocessed_to_passive     true
% 1.99/1.02  --inst_prop_sim_given                   true
% 1.99/1.02  --inst_prop_sim_new                     false
% 1.99/1.02  --inst_subs_new                         false
% 1.99/1.02  --inst_eq_res_simp                      false
% 1.99/1.02  --inst_subs_given                       false
% 1.99/1.02  --inst_orphan_elimination               true
% 1.99/1.02  --inst_learning_loop_flag               true
% 1.99/1.02  --inst_learning_start                   3000
% 1.99/1.02  --inst_learning_factor                  2
% 1.99/1.02  --inst_start_prop_sim_after_learn       3
% 1.99/1.02  --inst_sel_renew                        solver
% 1.99/1.02  --inst_lit_activity_flag                true
% 1.99/1.02  --inst_restr_to_given                   false
% 1.99/1.02  --inst_activity_threshold               500
% 1.99/1.02  --inst_out_proof                        true
% 1.99/1.02  
% 1.99/1.02  ------ Resolution Options
% 1.99/1.02  
% 1.99/1.02  --resolution_flag                       false
% 1.99/1.02  --res_lit_sel                           adaptive
% 1.99/1.02  --res_lit_sel_side                      none
% 1.99/1.02  --res_ordering                          kbo
% 1.99/1.02  --res_to_prop_solver                    active
% 1.99/1.02  --res_prop_simpl_new                    false
% 1.99/1.02  --res_prop_simpl_given                  true
% 1.99/1.02  --res_passive_queue_type                priority_queues
% 1.99/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.99/1.02  --res_passive_queues_freq               [15;5]
% 1.99/1.02  --res_forward_subs                      full
% 1.99/1.02  --res_backward_subs                     full
% 1.99/1.02  --res_forward_subs_resolution           true
% 1.99/1.02  --res_backward_subs_resolution          true
% 1.99/1.02  --res_orphan_elimination                true
% 1.99/1.02  --res_time_limit                        2.
% 1.99/1.02  --res_out_proof                         true
% 1.99/1.02  
% 1.99/1.02  ------ Superposition Options
% 1.99/1.02  
% 1.99/1.02  --superposition_flag                    true
% 1.99/1.02  --sup_passive_queue_type                priority_queues
% 1.99/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.99/1.02  --sup_passive_queues_freq               [8;1;4]
% 1.99/1.02  --demod_completeness_check              fast
% 1.99/1.02  --demod_use_ground                      true
% 1.99/1.02  --sup_to_prop_solver                    passive
% 1.99/1.02  --sup_prop_simpl_new                    true
% 1.99/1.02  --sup_prop_simpl_given                  true
% 1.99/1.02  --sup_fun_splitting                     false
% 1.99/1.02  --sup_smt_interval                      50000
% 1.99/1.02  
% 1.99/1.02  ------ Superposition Simplification Setup
% 1.99/1.02  
% 1.99/1.02  --sup_indices_passive                   []
% 1.99/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.99/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.99/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.99/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 1.99/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.99/1.02  --sup_full_bw                           [BwDemod]
% 1.99/1.02  --sup_immed_triv                        [TrivRules]
% 1.99/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.99/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.99/1.02  --sup_immed_bw_main                     []
% 1.99/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.99/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 1.99/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.99/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.99/1.02  
% 1.99/1.02  ------ Combination Options
% 1.99/1.02  
% 1.99/1.02  --comb_res_mult                         3
% 1.99/1.02  --comb_sup_mult                         2
% 1.99/1.02  --comb_inst_mult                        10
% 1.99/1.02  
% 1.99/1.02  ------ Debug Options
% 1.99/1.02  
% 1.99/1.02  --dbg_backtrace                         false
% 1.99/1.02  --dbg_dump_prop_clauses                 false
% 1.99/1.02  --dbg_dump_prop_clauses_file            -
% 1.99/1.02  --dbg_out_stat                          false
% 1.99/1.02  
% 1.99/1.02  
% 1.99/1.02  
% 1.99/1.02  
% 1.99/1.02  ------ Proving...
% 1.99/1.02  
% 1.99/1.02  
% 1.99/1.02  % SZS status Theorem for theBenchmark.p
% 1.99/1.02  
% 1.99/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 1.99/1.02  
% 1.99/1.02  fof(f9,conjecture,(
% 1.99/1.02    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_tarski(X2,X0) => (r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f10,negated_conjecture,(
% 1.99/1.02    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_tarski(X2,X0) => (r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))))),
% 1.99/1.02    inference(negated_conjecture,[],[f9])).
% 1.99/1.02  
% 1.99/1.02  fof(f11,plain,(
% 1.99/1.02    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1)) => (r1_tarski(X2,X0) => (r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))))),
% 1.99/1.02    inference(pure_predicate_removal,[],[f10])).
% 1.99/1.02  
% 1.99/1.02  fof(f20,plain,(
% 1.99/1.02    ? [X0,X1,X2,X3] : (((~r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2))) & (k1_xboole_0 = X0 | k1_xboole_0 != X1)) & r1_tarski(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1)))),
% 1.99/1.02    inference(ennf_transformation,[],[f11])).
% 1.99/1.02  
% 1.99/1.02  fof(f21,plain,(
% 1.99/1.02    ? [X0,X1,X2,X3] : (~r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2))) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_tarski(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1))),
% 1.99/1.02    inference(flattening,[],[f20])).
% 1.99/1.02  
% 1.99/1.02  fof(f25,plain,(
% 1.99/1.02    ? [X0,X1,X2,X3] : (~r1_tarski(X2,k8_relset_1(X0,X1,X3,k7_relset_1(X0,X1,X3,X2))) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_tarski(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1)) => (~r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_tarski(sK2,sK0) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1))),
% 1.99/1.02    introduced(choice_axiom,[])).
% 1.99/1.02  
% 1.99/1.02  fof(f26,plain,(
% 1.99/1.02    ~r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_tarski(sK2,sK0) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1)),
% 1.99/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f21,f25])).
% 1.99/1.02  
% 1.99/1.02  fof(f42,plain,(
% 1.99/1.02    v1_funct_2(sK3,sK0,sK1)),
% 1.99/1.02    inference(cnf_transformation,[],[f26])).
% 1.99/1.02  
% 1.99/1.02  fof(f8,axiom,(
% 1.99/1.02    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f18,plain,(
% 1.99/1.02    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.99/1.02    inference(ennf_transformation,[],[f8])).
% 1.99/1.02  
% 1.99/1.02  fof(f19,plain,(
% 1.99/1.02    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.99/1.02    inference(flattening,[],[f18])).
% 1.99/1.02  
% 1.99/1.02  fof(f24,plain,(
% 1.99/1.02    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.99/1.02    inference(nnf_transformation,[],[f19])).
% 1.99/1.02  
% 1.99/1.02  fof(f36,plain,(
% 1.99/1.02    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f24])).
% 1.99/1.02  
% 1.99/1.02  fof(f43,plain,(
% 1.99/1.02    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.99/1.02    inference(cnf_transformation,[],[f26])).
% 1.99/1.02  
% 1.99/1.02  fof(f5,axiom,(
% 1.99/1.02    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f15,plain,(
% 1.99/1.02    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.99/1.02    inference(ennf_transformation,[],[f5])).
% 1.99/1.02  
% 1.99/1.02  fof(f33,plain,(
% 1.99/1.02    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f15])).
% 1.99/1.02  
% 1.99/1.02  fof(f4,axiom,(
% 1.99/1.02    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(X0,k1_relat_1(X1)) => r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f13,plain,(
% 1.99/1.02    ! [X0,X1] : ((r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) | ~r1_tarski(X0,k1_relat_1(X1))) | ~v1_relat_1(X1))),
% 1.99/1.02    inference(ennf_transformation,[],[f4])).
% 1.99/1.02  
% 1.99/1.02  fof(f14,plain,(
% 1.99/1.02    ! [X0,X1] : (r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 1.99/1.02    inference(flattening,[],[f13])).
% 1.99/1.02  
% 1.99/1.02  fof(f32,plain,(
% 1.99/1.02    ( ! [X0,X1] : (r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 1.99/1.02    inference(cnf_transformation,[],[f14])).
% 1.99/1.02  
% 1.99/1.02  fof(f7,axiom,(
% 1.99/1.02    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f17,plain,(
% 1.99/1.02    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.99/1.02    inference(ennf_transformation,[],[f7])).
% 1.99/1.02  
% 1.99/1.02  fof(f35,plain,(
% 1.99/1.02    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f17])).
% 1.99/1.02  
% 1.99/1.02  fof(f46,plain,(
% 1.99/1.02    ~r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2)))),
% 1.99/1.02    inference(cnf_transformation,[],[f26])).
% 1.99/1.02  
% 1.99/1.02  fof(f6,axiom,(
% 1.99/1.02    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f16,plain,(
% 1.99/1.02    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.99/1.02    inference(ennf_transformation,[],[f6])).
% 1.99/1.02  
% 1.99/1.02  fof(f34,plain,(
% 1.99/1.02    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f16])).
% 1.99/1.02  
% 1.99/1.02  fof(f2,axiom,(
% 1.99/1.02    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f12,plain,(
% 1.99/1.02    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.99/1.02    inference(ennf_transformation,[],[f2])).
% 1.99/1.02  
% 1.99/1.02  fof(f30,plain,(
% 1.99/1.02    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.99/1.02    inference(cnf_transformation,[],[f12])).
% 1.99/1.02  
% 1.99/1.02  fof(f3,axiom,(
% 1.99/1.02    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f31,plain,(
% 1.99/1.02    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f3])).
% 1.99/1.02  
% 1.99/1.02  fof(f44,plain,(
% 1.99/1.02    r1_tarski(sK2,sK0)),
% 1.99/1.02    inference(cnf_transformation,[],[f26])).
% 1.99/1.02  
% 1.99/1.02  fof(f37,plain,(
% 1.99/1.02    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f24])).
% 1.99/1.02  
% 1.99/1.02  fof(f53,plain,(
% 1.99/1.02    ( ! [X2,X1] : (k1_xboole_0 = k1_relset_1(k1_xboole_0,X1,X2) | ~v1_funct_2(X2,k1_xboole_0,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 1.99/1.02    inference(equality_resolution,[],[f37])).
% 1.99/1.02  
% 1.99/1.02  fof(f1,axiom,(
% 1.99/1.02    ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.99/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.99/1.02  
% 1.99/1.02  fof(f22,plain,(
% 1.99/1.02    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 1.99/1.02    inference(nnf_transformation,[],[f1])).
% 1.99/1.02  
% 1.99/1.02  fof(f23,plain,(
% 1.99/1.02    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 1.99/1.02    inference(flattening,[],[f22])).
% 1.99/1.02  
% 1.99/1.02  fof(f28,plain,(
% 1.99/1.02    ( ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 | k1_xboole_0 != X0) )),
% 1.99/1.02    inference(cnf_transformation,[],[f23])).
% 1.99/1.02  
% 1.99/1.02  fof(f48,plain,(
% 1.99/1.02    ( ! [X1] : (k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0) )),
% 1.99/1.02    inference(equality_resolution,[],[f28])).
% 1.99/1.02  
% 1.99/1.02  fof(f45,plain,(
% 1.99/1.02    k1_xboole_0 = sK0 | k1_xboole_0 != sK1),
% 1.99/1.02    inference(cnf_transformation,[],[f26])).
% 1.99/1.02  
% 1.99/1.02  fof(f40,plain,(
% 1.99/1.02    ( ! [X2,X0,X1] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.99/1.02    inference(cnf_transformation,[],[f24])).
% 1.99/1.02  
% 1.99/1.02  fof(f51,plain,(
% 1.99/1.02    ( ! [X2,X0] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 1.99/1.02    inference(equality_resolution,[],[f40])).
% 1.99/1.02  
% 1.99/1.02  fof(f29,plain,(
% 1.99/1.02    ( ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 | k1_xboole_0 != X1) )),
% 1.99/1.02    inference(cnf_transformation,[],[f23])).
% 1.99/1.02  
% 1.99/1.02  fof(f47,plain,(
% 1.99/1.02    ( ! [X0] : (k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0) )),
% 1.99/1.02    inference(equality_resolution,[],[f29])).
% 1.99/1.02  
% 1.99/1.02  fof(f27,plain,(
% 1.99/1.02    ( ! [X0,X1] : (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0) )),
% 1.99/1.02    inference(cnf_transformation,[],[f23])).
% 1.99/1.02  
% 1.99/1.02  cnf(c_19,negated_conjecture,
% 1.99/1.02      ( v1_funct_2(sK3,sK0,sK1) ),
% 1.99/1.02      inference(cnf_transformation,[],[f42]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_14,plain,
% 1.99/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 1.99/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.99/1.02      | k1_relset_1(X1,X2,X0) = X1
% 1.99/1.02      | k1_xboole_0 = X2 ),
% 1.99/1.02      inference(cnf_transformation,[],[f36]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_18,negated_conjecture,
% 1.99/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 1.99/1.02      inference(cnf_transformation,[],[f43]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_203,plain,
% 1.99/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 1.99/1.02      | k1_relset_1(X1,X2,X0) = X1
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != X0
% 1.99/1.02      | k1_xboole_0 = X2 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_14,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_204,plain,
% 1.99/1.02      ( ~ v1_funct_2(sK3,X0,X1)
% 1.99/1.02      | k1_relset_1(X0,X1,sK3) = X0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | k1_xboole_0 = X1 ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_203]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_377,plain,
% 1.99/1.02      ( k1_relset_1(X0,X1,sK3) = X0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != sK3
% 1.99/1.02      | sK1 != X1
% 1.99/1.02      | sK0 != X0
% 1.99/1.02      | k1_xboole_0 = X1 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_19,c_204]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_378,plain,
% 1.99/1.02      ( k1_relset_1(sK0,sK1,sK3) = sK0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | k1_xboole_0 = sK1 ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_377]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_436,plain,
% 1.99/1.02      ( k1_relset_1(sK0,sK1,sK3) = sK0 | k1_xboole_0 = sK1 ),
% 1.99/1.02      inference(equality_resolution_simp,[status(thm)],[c_378]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_6,plain,
% 1.99/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.99/1.02      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.99/1.02      inference(cnf_transformation,[],[f33]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_257,plain,
% 1.99/1.02      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != X2 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_6,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_258,plain,
% 1.99/1.02      ( k1_relset_1(X0,X1,sK3) = k1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_257]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_706,plain,
% 1.99/1.02      ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
% 1.99/1.02      inference(equality_resolution,[status(thm)],[c_258]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_819,plain,
% 1.99/1.02      ( k1_relat_1(sK3) = sK0 | sK1 = k1_xboole_0 ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_436,c_706]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_5,plain,
% 1.99/1.02      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
% 1.99/1.02      | ~ r1_tarski(X0,k1_relat_1(X1))
% 1.99/1.02      | ~ v1_relat_1(X1) ),
% 1.99/1.02      inference(cnf_transformation,[],[f32]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_599,plain,
% 1.99/1.02      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) = iProver_top
% 1.99/1.02      | r1_tarski(X0,k1_relat_1(X1)) != iProver_top
% 1.99/1.02      | v1_relat_1(X1) != iProver_top ),
% 1.99/1.02      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_8,plain,
% 1.99/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.99/1.02      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 1.99/1.02      inference(cnf_transformation,[],[f35]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_239,plain,
% 1.99/1.02      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != X2 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_8,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_240,plain,
% 1.99/1.02      ( k8_relset_1(X0,X1,sK3,X2) = k10_relat_1(sK3,X2)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_239]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_734,plain,
% 1.99/1.02      ( k8_relset_1(sK0,sK1,sK3,X0) = k10_relat_1(sK3,X0) ),
% 1.99/1.02      inference(equality_resolution,[status(thm)],[c_240]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_15,negated_conjecture,
% 1.99/1.02      ( ~ r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) ),
% 1.99/1.02      inference(cnf_transformation,[],[f46]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_598,plain,
% 1.99/1.02      ( r1_tarski(sK2,k8_relset_1(sK0,sK1,sK3,k7_relset_1(sK0,sK1,sK3,sK2))) != iProver_top ),
% 1.99/1.02      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_784,plain,
% 1.99/1.02      ( r1_tarski(sK2,k10_relat_1(sK3,k7_relset_1(sK0,sK1,sK3,sK2))) != iProver_top ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_734,c_598]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_7,plain,
% 1.99/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.99/1.02      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 1.99/1.02      inference(cnf_transformation,[],[f34]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_248,plain,
% 1.99/1.02      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != X2 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_7,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_249,plain,
% 1.99/1.02      ( k7_relset_1(X0,X1,sK3,X2) = k9_relat_1(sK3,X2)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_248]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_738,plain,
% 1.99/1.02      ( k7_relset_1(sK0,sK1,sK3,X0) = k9_relat_1(sK3,X0) ),
% 1.99/1.02      inference(equality_resolution,[status(thm)],[c_249]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1006,plain,
% 1.99/1.02      ( r1_tarski(sK2,k10_relat_1(sK3,k9_relat_1(sK3,sK2))) != iProver_top ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_784,c_738]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1290,plain,
% 1.99/1.02      ( r1_tarski(sK2,k1_relat_1(sK3)) != iProver_top
% 1.99/1.02      | v1_relat_1(sK3) != iProver_top ),
% 1.99/1.02      inference(superposition,[status(thm)],[c_599,c_1006]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_476,plain,( X0 = X0 ),theory(equality) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_686,plain,
% 1.99/1.02      ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) = k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_476]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_3,plain,
% 1.99/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.99/1.02      | ~ v1_relat_1(X1)
% 1.99/1.02      | v1_relat_1(X0) ),
% 1.99/1.02      inference(cnf_transformation,[],[f30]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_188,plain,
% 1.99/1.02      ( ~ v1_relat_1(X0)
% 1.99/1.02      | v1_relat_1(X1)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0)
% 1.99/1.02      | sK3 != X1 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_3,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_189,plain,
% 1.99/1.02      ( ~ v1_relat_1(X0)
% 1.99/1.02      | v1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0) ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_188]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_681,plain,
% 1.99/1.02      ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
% 1.99/1.02      | v1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_189]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_749,plain,
% 1.99/1.02      ( ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | v1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_681]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_750,plain,
% 1.99/1.02      ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 1.99/1.02      | v1_relat_1(sK3) = iProver_top ),
% 1.99/1.02      inference(predicate_to_equality,[status(thm)],[c_749]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_4,plain,
% 1.99/1.02      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.99/1.02      inference(cnf_transformation,[],[f31]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_813,plain,
% 1.99/1.02      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_4]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_814,plain,
% 1.99/1.02      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 1.99/1.02      inference(predicate_to_equality,[status(thm)],[c_813]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1352,plain,
% 1.99/1.02      ( r1_tarski(sK2,k1_relat_1(sK3)) != iProver_top ),
% 1.99/1.02      inference(global_propositional_subsumption,
% 1.99/1.02                [status(thm)],
% 1.99/1.02                [c_1290,c_686,c_750,c_814]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1357,plain,
% 1.99/1.02      ( sK1 = k1_xboole_0 | r1_tarski(sK2,sK0) != iProver_top ),
% 1.99/1.02      inference(superposition,[status(thm)],[c_819,c_1352]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_17,negated_conjecture,
% 1.99/1.02      ( r1_tarski(sK2,sK0) ),
% 1.99/1.02      inference(cnf_transformation,[],[f44]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_22,plain,
% 1.99/1.02      ( r1_tarski(sK2,sK0) = iProver_top ),
% 1.99/1.02      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1360,plain,
% 1.99/1.02      ( sK1 = k1_xboole_0 ),
% 1.99/1.02      inference(global_propositional_subsumption,
% 1.99/1.02                [status(thm)],
% 1.99/1.02                [c_1357,c_22]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_13,plain,
% 1.99/1.02      ( ~ v1_funct_2(X0,k1_xboole_0,X1)
% 1.99/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.99/1.02      | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0 ),
% 1.99/1.02      inference(cnf_transformation,[],[f53]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_301,plain,
% 1.99/1.02      ( ~ v1_funct_2(X0,k1_xboole_0,X1)
% 1.99/1.02      | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != X0 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_13,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_302,plain,
% 1.99/1.02      ( ~ v1_funct_2(sK3,k1_xboole_0,X0)
% 1.99/1.02      | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_301]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_402,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != sK3
% 1.99/1.02      | sK1 != X0
% 1.99/1.02      | sK0 != k1_xboole_0 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_19,c_302]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_403,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,sK1,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK0 != k1_xboole_0 ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_402]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1,plain,
% 1.99/1.02      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 1.99/1.02      inference(cnf_transformation,[],[f48]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_643,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,sK1,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0)
% 1.99/1.02      | sK0 != k1_xboole_0 ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_403,c_1]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1364,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0)
% 1.99/1.02      | sK0 != k1_xboole_0 ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1360,c_643]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_16,negated_conjecture,
% 1.99/1.02      ( k1_xboole_0 != sK1 | k1_xboole_0 = sK0 ),
% 1.99/1.02      inference(cnf_transformation,[],[f45]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1377,plain,
% 1.99/1.02      ( sK0 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1360,c_16]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1378,plain,
% 1.99/1.02      ( sK0 = k1_xboole_0 ),
% 1.99/1.02      inference(equality_resolution_simp,[status(thm)],[c_1377]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1444,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0)
% 1.99/1.02      | k1_xboole_0 != k1_xboole_0 ),
% 1.99/1.02      inference(light_normalisation,[status(thm)],[c_1364,c_1378]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1445,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(equality_resolution_simp,[status(thm)],[c_1444]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_888,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(superposition,[status(thm)],[c_1,c_258]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1369,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1360,c_888]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1414,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(light_normalisation,[status(thm)],[c_1369,c_1378]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1417,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3)
% 1.99/1.02      | k1_zfmisc_1(k1_xboole_0) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1414,c_1]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1418,plain,
% 1.99/1.02      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_relat_1(sK3) ),
% 1.99/1.02      inference(equality_resolution_simp,[status(thm)],[c_1417]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1446,plain,
% 1.99/1.02      ( k1_relat_1(sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1445,c_1418]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1449,plain,
% 1.99/1.02      ( k1_relat_1(sK3) = k1_xboole_0
% 1.99/1.02      | k1_zfmisc_1(k1_xboole_0) != k1_zfmisc_1(k1_xboole_0) ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1446,c_1]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1450,plain,
% 1.99/1.02      ( k1_relat_1(sK3) = k1_xboole_0 ),
% 1.99/1.02      inference(equality_resolution_simp,[status(thm)],[c_1449]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1681,plain,
% 1.99/1.02      ( r1_tarski(sK2,k1_xboole_0) != iProver_top ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_1450,c_1352]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_10,plain,
% 1.99/1.02      ( ~ v1_funct_2(X0,X1,k1_xboole_0)
% 1.99/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
% 1.99/1.02      | k1_xboole_0 = X1
% 1.99/1.02      | k1_xboole_0 = X0 ),
% 1.99/1.02      inference(cnf_transformation,[],[f51]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_283,plain,
% 1.99/1.02      ( ~ v1_funct_2(X0,X1,k1_xboole_0)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != X0
% 1.99/1.02      | k1_xboole_0 = X1
% 1.99/1.02      | k1_xboole_0 = X0 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_10,c_18]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_284,plain,
% 1.99/1.02      ( ~ v1_funct_2(sK3,X0,k1_xboole_0)
% 1.99/1.02      | k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | k1_xboole_0 = X0
% 1.99/1.02      | k1_xboole_0 = sK3 ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_283]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_388,plain,
% 1.99/1.02      ( k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 != sK3
% 1.99/1.02      | sK3 = k1_xboole_0
% 1.99/1.02      | sK1 != k1_xboole_0
% 1.99/1.02      | sK0 != X0
% 1.99/1.02      | k1_xboole_0 = X0 ),
% 1.99/1.02      inference(resolution_lifted,[status(thm)],[c_19,c_284]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_389,plain,
% 1.99/1.02      ( k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.99/1.02      | sK3 = k1_xboole_0
% 1.99/1.02      | sK1 != k1_xboole_0
% 1.99/1.02      | k1_xboole_0 = sK0 ),
% 1.99/1.02      inference(unflattening,[status(thm)],[c_388]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_0,plain,
% 1.99/1.02      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 1.99/1.02      inference(cnf_transformation,[],[f47]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_650,plain,
% 1.99/1.02      ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0)
% 1.99/1.02      | sK3 = k1_xboole_0
% 1.99/1.02      | sK1 != k1_xboole_0
% 1.99/1.02      | sK0 = k1_xboole_0 ),
% 1.99/1.02      inference(demodulation,[status(thm)],[c_389,c_0]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_2,plain,
% 1.99/1.02      ( k2_zfmisc_1(X0,X1) != k1_xboole_0
% 1.99/1.02      | k1_xboole_0 = X1
% 1.99/1.02      | k1_xboole_0 = X0 ),
% 1.99/1.02      inference(cnf_transformation,[],[f27]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_58,plain,
% 1.99/1.02      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 1.99/1.02      | k1_xboole_0 = k1_xboole_0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_2]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_59,plain,
% 1.99/1.02      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_1]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_477,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_701,plain,
% 1.99/1.02      ( sK0 != X0 | sK0 = k1_xboole_0 | k1_xboole_0 != X0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_477]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_740,plain,
% 1.99/1.02      ( sK0 != sK0 | sK0 = k1_xboole_0 | k1_xboole_0 != sK0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_701]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_741,plain,
% 1.99/1.02      ( sK0 = sK0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_476]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_799,plain,
% 1.99/1.02      ( sK1 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK1 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_477]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_800,plain,
% 1.99/1.02      ( sK1 != k1_xboole_0
% 1.99/1.02      | k1_xboole_0 = sK1
% 1.99/1.02      | k1_xboole_0 != k1_xboole_0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_799]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_1282,plain,
% 1.99/1.02      ( sK1 != k1_xboole_0 | sK0 = k1_xboole_0 ),
% 1.99/1.02      inference(global_propositional_subsumption,
% 1.99/1.02                [status(thm)],
% 1.99/1.02                [c_650,c_16,c_58,c_59,c_740,c_741,c_800]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_795,plain,
% 1.99/1.02      ( X0 != X1 | X0 = sK0 | sK0 != X1 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_477]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_796,plain,
% 1.99/1.02      ( sK0 != k1_xboole_0
% 1.99/1.02      | k1_xboole_0 = sK0
% 1.99/1.02      | k1_xboole_0 != k1_xboole_0 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_795]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_722,plain,
% 1.99/1.02      ( sK2 = sK2 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_476]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_483,plain,
% 1.99/1.02      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 1.99/1.02      theory(equality) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_712,plain,
% 1.99/1.02      ( r1_tarski(X0,X1) | ~ r1_tarski(sK2,sK0) | X1 != sK0 | X0 != sK2 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_483]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_721,plain,
% 1.99/1.02      ( r1_tarski(sK2,X0)
% 1.99/1.02      | ~ r1_tarski(sK2,sK0)
% 1.99/1.02      | X0 != sK0
% 1.99/1.02      | sK2 != sK2 ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_712]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_723,plain,
% 1.99/1.02      ( X0 != sK0
% 1.99/1.02      | sK2 != sK2
% 1.99/1.02      | r1_tarski(sK2,X0) = iProver_top
% 1.99/1.02      | r1_tarski(sK2,sK0) != iProver_top ),
% 1.99/1.02      inference(predicate_to_equality,[status(thm)],[c_721]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(c_725,plain,
% 1.99/1.02      ( sK2 != sK2
% 1.99/1.02      | k1_xboole_0 != sK0
% 1.99/1.02      | r1_tarski(sK2,sK0) != iProver_top
% 1.99/1.02      | r1_tarski(sK2,k1_xboole_0) = iProver_top ),
% 1.99/1.02      inference(instantiation,[status(thm)],[c_723]) ).
% 1.99/1.02  
% 1.99/1.02  cnf(contradiction,plain,
% 1.99/1.02      ( $false ),
% 1.99/1.02      inference(minisat,
% 1.99/1.02                [status(thm)],
% 1.99/1.02                [c_1681,c_1357,c_1282,c_796,c_722,c_725,c_59,c_58,c_22]) ).
% 1.99/1.02  
% 1.99/1.02  
% 1.99/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 1.99/1.02  
% 1.99/1.02  ------                               Statistics
% 1.99/1.02  
% 1.99/1.02  ------ General
% 1.99/1.02  
% 1.99/1.02  abstr_ref_over_cycles:                  0
% 1.99/1.02  abstr_ref_under_cycles:                 0
% 1.99/1.02  gc_basic_clause_elim:                   0
% 1.99/1.02  forced_gc_time:                         0
% 1.99/1.02  parsing_time:                           0.011
% 1.99/1.02  unif_index_cands_time:                  0.
% 1.99/1.02  unif_index_add_time:                    0.
% 1.99/1.02  orderings_time:                         0.
% 1.99/1.02  out_proof_time:                         0.009
% 1.99/1.02  total_time:                             0.094
% 1.99/1.02  num_of_symbols:                         48
% 1.99/1.02  num_of_terms:                           1329
% 1.99/1.02  
% 1.99/1.02  ------ Preprocessing
% 1.99/1.02  
% 1.99/1.02  num_of_splits:                          0
% 1.99/1.02  num_of_split_atoms:                     0
% 1.99/1.02  num_of_reused_defs:                     0
% 1.99/1.02  num_eq_ax_congr_red:                    8
% 1.99/1.02  num_of_sem_filtered_clauses:            1
% 1.99/1.02  num_of_subtypes:                        0
% 1.99/1.02  monotx_restored_types:                  0
% 1.99/1.02  sat_num_of_epr_types:                   0
% 1.99/1.02  sat_num_of_non_cyclic_types:            0
% 1.99/1.02  sat_guarded_non_collapsed_types:        0
% 1.99/1.02  num_pure_diseq_elim:                    0
% 1.99/1.02  simp_replaced_by:                       0
% 1.99/1.02  res_preprocessed:                       90
% 1.99/1.02  prep_upred:                             0
% 1.99/1.02  prep_unflattend:                        26
% 1.99/1.02  smt_new_axioms:                         0
% 1.99/1.02  pred_elim_cands:                        2
% 1.99/1.02  pred_elim:                              2
% 1.99/1.02  pred_elim_cl:                           5
% 1.99/1.02  pred_elim_cycles:                       4
% 1.99/1.02  merged_defs:                            0
% 1.99/1.02  merged_defs_ncl:                        0
% 1.99/1.02  bin_hyper_res:                          0
% 1.99/1.02  prep_cycles:                            4
% 1.99/1.02  pred_elim_time:                         0.006
% 1.99/1.02  splitting_time:                         0.
% 1.99/1.02  sem_filter_time:                        0.
% 1.99/1.02  monotx_time:                            0.001
% 1.99/1.02  subtype_inf_time:                       0.
% 1.99/1.02  
% 1.99/1.02  ------ Problem properties
% 1.99/1.02  
% 1.99/1.02  clauses:                                15
% 1.99/1.02  conjectures:                            3
% 1.99/1.02  epr:                                    2
% 1.99/1.02  horn:                                   12
% 1.99/1.02  ground:                                 6
% 1.99/1.02  unary:                                  5
% 1.99/1.02  binary:                                 5
% 1.99/1.02  lits:                                   31
% 1.99/1.02  lits_eq:                                23
% 1.99/1.02  fd_pure:                                0
% 1.99/1.02  fd_pseudo:                              0
% 1.99/1.02  fd_cond:                                1
% 1.99/1.02  fd_pseudo_cond:                         0
% 1.99/1.02  ac_symbols:                             0
% 1.99/1.02  
% 1.99/1.02  ------ Propositional Solver
% 1.99/1.02  
% 1.99/1.02  prop_solver_calls:                      28
% 1.99/1.02  prop_fast_solver_calls:                 536
% 1.99/1.02  smt_solver_calls:                       0
% 1.99/1.02  smt_fast_solver_calls:                  0
% 1.99/1.02  prop_num_of_clauses:                    520
% 1.99/1.02  prop_preprocess_simplified:             2422
% 1.99/1.02  prop_fo_subsumed:                       6
% 1.99/1.02  prop_solver_time:                       0.
% 1.99/1.02  smt_solver_time:                        0.
% 1.99/1.02  smt_fast_solver_time:                   0.
% 1.99/1.02  prop_fast_solver_time:                  0.
% 1.99/1.02  prop_unsat_core_time:                   0.
% 1.99/1.02  
% 1.99/1.02  ------ QBF
% 1.99/1.02  
% 1.99/1.02  qbf_q_res:                              0
% 1.99/1.02  qbf_num_tautologies:                    0
% 1.99/1.02  qbf_prep_cycles:                        0
% 1.99/1.02  
% 1.99/1.02  ------ BMC1
% 1.99/1.02  
% 1.99/1.02  bmc1_current_bound:                     -1
% 1.99/1.02  bmc1_last_solved_bound:                 -1
% 1.99/1.02  bmc1_unsat_core_size:                   -1
% 1.99/1.02  bmc1_unsat_core_parents_size:           -1
% 1.99/1.02  bmc1_merge_next_fun:                    0
% 1.99/1.02  bmc1_unsat_core_clauses_time:           0.
% 1.99/1.02  
% 1.99/1.02  ------ Instantiation
% 1.99/1.02  
% 1.99/1.02  inst_num_of_clauses:                    240
% 1.99/1.02  inst_num_in_passive:                    103
% 1.99/1.02  inst_num_in_active:                     134
% 1.99/1.02  inst_num_in_unprocessed:                3
% 1.99/1.02  inst_num_of_loops:                      180
% 1.99/1.02  inst_num_of_learning_restarts:          0
% 1.99/1.02  inst_num_moves_active_passive:          43
% 1.99/1.02  inst_lit_activity:                      0
% 1.99/1.02  inst_lit_activity_moves:                0
% 1.99/1.02  inst_num_tautologies:                   0
% 1.99/1.02  inst_num_prop_implied:                  0
% 1.99/1.02  inst_num_existing_simplified:           0
% 1.99/1.02  inst_num_eq_res_simplified:             0
% 1.99/1.02  inst_num_child_elim:                    0
% 1.99/1.02  inst_num_of_dismatching_blockings:      43
% 1.99/1.02  inst_num_of_non_proper_insts:           200
% 1.99/1.02  inst_num_of_duplicates:                 0
% 1.99/1.02  inst_inst_num_from_inst_to_res:         0
% 1.99/1.02  inst_dismatching_checking_time:         0.
% 1.99/1.02  
% 1.99/1.02  ------ Resolution
% 1.99/1.02  
% 1.99/1.02  res_num_of_clauses:                     0
% 1.99/1.02  res_num_in_passive:                     0
% 1.99/1.02  res_num_in_active:                      0
% 1.99/1.02  res_num_of_loops:                       94
% 1.99/1.02  res_forward_subset_subsumed:            30
% 1.99/1.02  res_backward_subset_subsumed:           2
% 1.99/1.02  res_forward_subsumed:                   0
% 1.99/1.02  res_backward_subsumed:                  0
% 1.99/1.02  res_forward_subsumption_resolution:     0
% 1.99/1.02  res_backward_subsumption_resolution:    0
% 1.99/1.02  res_clause_to_clause_subsumption:       76
% 1.99/1.02  res_orphan_elimination:                 0
% 1.99/1.02  res_tautology_del:                      29
% 1.99/1.02  res_num_eq_res_simplified:              1
% 1.99/1.02  res_num_sel_changes:                    0
% 1.99/1.02  res_moves_from_active_to_pass:          0
% 1.99/1.02  
% 1.99/1.02  ------ Superposition
% 1.99/1.02  
% 1.99/1.02  sup_time_total:                         0.
% 1.99/1.02  sup_time_generating:                    0.
% 1.99/1.02  sup_time_sim_full:                      0.
% 1.99/1.02  sup_time_sim_immed:                     0.
% 1.99/1.02  
% 1.99/1.02  sup_num_of_clauses:                     23
% 1.99/1.02  sup_num_in_active:                      15
% 1.99/1.02  sup_num_in_passive:                     8
% 1.99/1.02  sup_num_of_loops:                       34
% 1.99/1.02  sup_fw_superposition:                   9
% 1.99/1.02  sup_bw_superposition:                   7
% 1.99/1.02  sup_immediate_simplified:               30
% 1.99/1.02  sup_given_eliminated:                   0
% 1.99/1.02  comparisons_done:                       0
% 1.99/1.02  comparisons_avoided:                    3
% 1.99/1.02  
% 1.99/1.02  ------ Simplifications
% 1.99/1.02  
% 1.99/1.02  
% 1.99/1.02  sim_fw_subset_subsumed:                 2
% 1.99/1.02  sim_bw_subset_subsumed:                 0
% 1.99/1.02  sim_fw_subsumed:                        0
% 1.99/1.02  sim_bw_subsumed:                        3
% 1.99/1.02  sim_fw_subsumption_res:                 0
% 1.99/1.02  sim_bw_subsumption_res:                 0
% 1.99/1.02  sim_tautology_del:                      0
% 1.99/1.02  sim_eq_tautology_del:                   1
% 1.99/1.02  sim_eq_res_simp:                        10
% 1.99/1.02  sim_fw_demodulated:                     15
% 1.99/1.02  sim_bw_demodulated:                     22
% 1.99/1.02  sim_light_normalised:                   13
% 1.99/1.02  sim_joinable_taut:                      0
% 1.99/1.02  sim_joinable_simp:                      0
% 1.99/1.02  sim_ac_normalised:                      0
% 1.99/1.02  sim_smt_subsumption:                    0
% 1.99/1.02  
%------------------------------------------------------------------------------
