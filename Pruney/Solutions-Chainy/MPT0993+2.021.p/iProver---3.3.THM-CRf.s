%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:04:06 EST 2020

% Result     : Theorem 1.52s
% Output     : CNFRefutation 1.52s
% Verified   : 
% Statistics : Number of formulae       :  108 ( 309 expanded)
%              Number of clauses        :   59 ( 105 expanded)
%              Number of leaves         :   12 (  56 expanded)
%              Depth                    :   20
%              Number of atoms          :  317 (1142 expanded)
%              Number of equality atoms :  164 ( 259 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r1_tarski(X0,X2)
       => r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ( r1_tarski(X0,X2)
         => r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f26,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3)
      & r1_tarski(X0,X2)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3)
      & r1_tarski(X0,X2)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f26])).

fof(f32,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3)
        & r1_tarski(X0,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ~ r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3)
      & r1_tarski(sK0,sK2)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK3,sK0,sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ~ r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3)
    & r1_tarski(sK0,sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f27,f32])).

fof(f52,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f33])).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
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

fof(f23,plain,(
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
    inference(flattening,[],[f22])).

fof(f31,plain,(
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
    inference(nnf_transformation,[],[f23])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f53,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f33])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f15])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f54,plain,(
    r1_tarski(sK0,sK2) ),
    inference(cnf_transformation,[],[f33])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f50,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f51,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f20])).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f43,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f58,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f43])).

fof(f55,plain,(
    ~ r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(flattening,[],[f28])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f56,plain,(
    ! [X0] : k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(equality_resolution,[],[f36])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f5])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f13])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f14])).

cnf(c_20,negated_conjecture,
    ( v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_315,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_19])).

cnf(c_316,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | k1_relset_1(X0,X1,sK3) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_315])).

cnf(c_518,plain,
    ( k1_relset_1(X0,X1,sK3) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != sK3
    | sK1 != X1
    | sK0 != X0
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_316])).

cnf(c_519,plain,
    ( k1_relset_1(sK0,sK1,sK3) = sK0
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_518])).

cnf(c_572,plain,
    ( k1_relset_1(sK0,sK1,sK3) = sK0
    | k1_xboole_0 = sK1 ),
    inference(equality_resolution_simp,[status(thm)],[c_519])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_351,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_19])).

cnf(c_352,plain,
    ( k1_relset_1(X0,X1,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_351])).

cnf(c_689,plain,
    ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_352])).

cnf(c_775,plain,
    ( k1_relat_1(sK3) = sK0
    | sK1 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_572,c_689])).

cnf(c_4,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_18,negated_conjecture,
    ( r1_tarski(sK0,sK2) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_220,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0
    | k1_relat_1(X0) != sK0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_18])).

cnf(c_221,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,sK2) = X0
    | k1_relat_1(X0) != sK0 ),
    inference(unflattening,[status(thm)],[c_220])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_360,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_19])).

cnf(c_361,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_360])).

cnf(c_495,plain,
    ( k7_relat_1(X0,sK2) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_relat_1(X0) != sK0
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_221,c_361])).

cnf(c_496,plain,
    ( k7_relat_1(sK3,sK2) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | k1_relat_1(sK3) != sK0 ),
    inference(unflattening,[status(thm)],[c_495])).

cnf(c_585,plain,
    ( sP0_iProver_split
    | k7_relat_1(sK3,sK2) = sK3
    | k1_relat_1(sK3) != sK0 ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_496])).

cnf(c_622,plain,
    ( k7_relat_1(sK3,sK2) = sK3
    | k1_relat_1(sK3) != sK0
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_585])).

cnf(c_601,plain,
    ( k7_relat_1(sK3,sK2) = sK3
    | k1_relat_1(sK3) != sK0
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_585])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_21,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_239,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_21])).

cnf(c_240,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2) ),
    inference(unflattening,[status(thm)],[c_239])).

cnf(c_437,plain,
    ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != sK3 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_240])).

cnf(c_574,plain,
    ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(equality_resolution_simp,[status(thm)],[c_437])).

cnf(c_736,plain,
    ( k2_partfun1(sK0,sK1,sK3,X0) = k7_relat_1(sK3,X0) ),
    inference(equality_resolution,[status(thm)],[c_574])).

cnf(c_8,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_17,negated_conjecture,
    ( ~ r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_293,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_partfun1(sK0,sK1,sK3,sK2) != X0
    | sK3 != X0
    | sK1 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_17])).

cnf(c_294,plain,
    ( ~ m1_subset_1(k2_partfun1(sK0,sK1,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | sK3 != k2_partfun1(sK0,sK1,sK3,sK2) ),
    inference(unflattening,[status(thm)],[c_293])).

cnf(c_448,plain,
    ( k2_partfun1(sK0,sK1,sK3,sK2) != sK3
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(resolution_lifted,[status(thm)],[c_19,c_294])).

cnf(c_573,plain,
    ( k2_partfun1(sK0,sK1,sK3,sK2) != sK3 ),
    inference(equality_resolution_simp,[status(thm)],[c_448])).

cnf(c_947,plain,
    ( k7_relat_1(sK3,sK2) != sK3 ),
    inference(demodulation,[status(thm)],[c_736,c_573])).

cnf(c_584,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_496])).

cnf(c_623,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_584])).

cnf(c_1004,plain,
    ( sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_623])).

cnf(c_1123,plain,
    ( k1_relat_1(sK3) != sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_622,c_601,c_947,c_1004])).

cnf(c_1126,plain,
    ( sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_775,c_1123])).

cnf(c_0,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_3,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_254,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(resolution,[status(thm)],[c_6,c_3])).

cnf(c_258,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relat_1(X0,X1) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_254,c_6,c_5,c_3])).

cnf(c_306,plain,
    ( k7_relat_1(X0,X1) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_258,c_19])).

cnf(c_307,plain,
    ( k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_306])).

cnf(c_818,plain,
    ( k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_0,c_307])).

cnf(c_1163,plain,
    ( k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1126,c_818])).

cnf(c_1195,plain,
    ( k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k1_xboole_0) != k1_zfmisc_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1163,c_0])).

cnf(c_1196,plain,
    ( k7_relat_1(sK3,X0) = sK3 ),
    inference(equality_resolution_simp,[status(thm)],[c_1195])).

cnf(c_1275,plain,
    ( sK3 != sK3 ),
    inference(demodulation,[status(thm)],[c_1196,c_947])).

cnf(c_586,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_754,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_586])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1275,c_754])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:00:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.52/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.52/0.99  
% 1.52/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.52/0.99  
% 1.52/0.99  ------  iProver source info
% 1.52/0.99  
% 1.52/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.52/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.52/0.99  git: non_committed_changes: false
% 1.52/0.99  git: last_make_outside_of_git: false
% 1.52/0.99  
% 1.52/0.99  ------ 
% 1.52/0.99  
% 1.52/0.99  ------ Input Options
% 1.52/0.99  
% 1.52/0.99  --out_options                           all
% 1.52/0.99  --tptp_safe_out                         true
% 1.52/0.99  --problem_path                          ""
% 1.52/0.99  --include_path                          ""
% 1.52/0.99  --clausifier                            res/vclausify_rel
% 1.52/0.99  --clausifier_options                    --mode clausify
% 1.52/0.99  --stdin                                 false
% 1.52/0.99  --stats_out                             all
% 1.52/0.99  
% 1.52/0.99  ------ General Options
% 1.52/0.99  
% 1.52/0.99  --fof                                   false
% 1.52/0.99  --time_out_real                         305.
% 1.52/0.99  --time_out_virtual                      -1.
% 1.52/0.99  --symbol_type_check                     false
% 1.52/0.99  --clausify_out                          false
% 1.52/0.99  --sig_cnt_out                           false
% 1.52/0.99  --trig_cnt_out                          false
% 1.52/0.99  --trig_cnt_out_tolerance                1.
% 1.52/0.99  --trig_cnt_out_sk_spl                   false
% 1.52/0.99  --abstr_cl_out                          false
% 1.52/0.99  
% 1.52/0.99  ------ Global Options
% 1.52/0.99  
% 1.52/0.99  --schedule                              default
% 1.52/0.99  --add_important_lit                     false
% 1.52/0.99  --prop_solver_per_cl                    1000
% 1.52/0.99  --min_unsat_core                        false
% 1.52/0.99  --soft_assumptions                      false
% 1.52/0.99  --soft_lemma_size                       3
% 1.52/0.99  --prop_impl_unit_size                   0
% 1.52/0.99  --prop_impl_unit                        []
% 1.52/0.99  --share_sel_clauses                     true
% 1.52/0.99  --reset_solvers                         false
% 1.52/0.99  --bc_imp_inh                            [conj_cone]
% 1.52/0.99  --conj_cone_tolerance                   3.
% 1.52/0.99  --extra_neg_conj                        none
% 1.52/0.99  --large_theory_mode                     true
% 1.52/0.99  --prolific_symb_bound                   200
% 1.52/0.99  --lt_threshold                          2000
% 1.52/0.99  --clause_weak_htbl                      true
% 1.52/0.99  --gc_record_bc_elim                     false
% 1.52/0.99  
% 1.52/0.99  ------ Preprocessing Options
% 1.52/0.99  
% 1.52/0.99  --preprocessing_flag                    true
% 1.52/0.99  --time_out_prep_mult                    0.1
% 1.52/0.99  --splitting_mode                        input
% 1.52/0.99  --splitting_grd                         true
% 1.52/0.99  --splitting_cvd                         false
% 1.52/0.99  --splitting_cvd_svl                     false
% 1.52/0.99  --splitting_nvd                         32
% 1.52/0.99  --sub_typing                            true
% 1.52/0.99  --prep_gs_sim                           true
% 1.52/0.99  --prep_unflatten                        true
% 1.52/0.99  --prep_res_sim                          true
% 1.52/0.99  --prep_upred                            true
% 1.52/0.99  --prep_sem_filter                       exhaustive
% 1.52/0.99  --prep_sem_filter_out                   false
% 1.52/0.99  --pred_elim                             true
% 1.52/0.99  --res_sim_input                         true
% 1.52/0.99  --eq_ax_congr_red                       true
% 1.52/0.99  --pure_diseq_elim                       true
% 1.52/0.99  --brand_transform                       false
% 1.52/0.99  --non_eq_to_eq                          false
% 1.52/0.99  --prep_def_merge                        true
% 1.52/0.99  --prep_def_merge_prop_impl              false
% 1.52/0.99  --prep_def_merge_mbd                    true
% 1.52/0.99  --prep_def_merge_tr_red                 false
% 1.52/0.99  --prep_def_merge_tr_cl                  false
% 1.52/0.99  --smt_preprocessing                     true
% 1.52/0.99  --smt_ac_axioms                         fast
% 1.52/0.99  --preprocessed_out                      false
% 1.52/0.99  --preprocessed_stats                    false
% 1.52/0.99  
% 1.52/0.99  ------ Abstraction refinement Options
% 1.52/0.99  
% 1.52/0.99  --abstr_ref                             []
% 1.52/0.99  --abstr_ref_prep                        false
% 1.52/0.99  --abstr_ref_until_sat                   false
% 1.52/0.99  --abstr_ref_sig_restrict                funpre
% 1.52/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.52/0.99  --abstr_ref_under                       []
% 1.52/0.99  
% 1.52/0.99  ------ SAT Options
% 1.52/0.99  
% 1.52/0.99  --sat_mode                              false
% 1.52/0.99  --sat_fm_restart_options                ""
% 1.52/0.99  --sat_gr_def                            false
% 1.52/0.99  --sat_epr_types                         true
% 1.52/0.99  --sat_non_cyclic_types                  false
% 1.52/0.99  --sat_finite_models                     false
% 1.52/0.99  --sat_fm_lemmas                         false
% 1.52/0.99  --sat_fm_prep                           false
% 1.52/0.99  --sat_fm_uc_incr                        true
% 1.52/0.99  --sat_out_model                         small
% 1.52/0.99  --sat_out_clauses                       false
% 1.52/0.99  
% 1.52/0.99  ------ QBF Options
% 1.52/0.99  
% 1.52/0.99  --qbf_mode                              false
% 1.52/0.99  --qbf_elim_univ                         false
% 1.52/0.99  --qbf_dom_inst                          none
% 1.52/0.99  --qbf_dom_pre_inst                      false
% 1.52/0.99  --qbf_sk_in                             false
% 1.52/0.99  --qbf_pred_elim                         true
% 1.52/0.99  --qbf_split                             512
% 1.52/0.99  
% 1.52/0.99  ------ BMC1 Options
% 1.52/0.99  
% 1.52/0.99  --bmc1_incremental                      false
% 1.52/0.99  --bmc1_axioms                           reachable_all
% 1.52/0.99  --bmc1_min_bound                        0
% 1.52/0.99  --bmc1_max_bound                        -1
% 1.52/0.99  --bmc1_max_bound_default                -1
% 1.52/0.99  --bmc1_symbol_reachability              true
% 1.52/0.99  --bmc1_property_lemmas                  false
% 1.52/0.99  --bmc1_k_induction                      false
% 1.52/0.99  --bmc1_non_equiv_states                 false
% 1.52/0.99  --bmc1_deadlock                         false
% 1.52/0.99  --bmc1_ucm                              false
% 1.52/0.99  --bmc1_add_unsat_core                   none
% 1.52/0.99  --bmc1_unsat_core_children              false
% 1.52/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.52/0.99  --bmc1_out_stat                         full
% 1.52/0.99  --bmc1_ground_init                      false
% 1.52/0.99  --bmc1_pre_inst_next_state              false
% 1.52/0.99  --bmc1_pre_inst_state                   false
% 1.52/0.99  --bmc1_pre_inst_reach_state             false
% 1.52/0.99  --bmc1_out_unsat_core                   false
% 1.52/0.99  --bmc1_aig_witness_out                  false
% 1.52/0.99  --bmc1_verbose                          false
% 1.52/0.99  --bmc1_dump_clauses_tptp                false
% 1.52/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.52/0.99  --bmc1_dump_file                        -
% 1.52/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.52/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.52/0.99  --bmc1_ucm_extend_mode                  1
% 1.52/0.99  --bmc1_ucm_init_mode                    2
% 1.52/0.99  --bmc1_ucm_cone_mode                    none
% 1.52/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.52/0.99  --bmc1_ucm_relax_model                  4
% 1.52/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.52/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.52/0.99  --bmc1_ucm_layered_model                none
% 1.52/0.99  --bmc1_ucm_max_lemma_size               10
% 1.52/0.99  
% 1.52/0.99  ------ AIG Options
% 1.52/0.99  
% 1.52/0.99  --aig_mode                              false
% 1.52/0.99  
% 1.52/0.99  ------ Instantiation Options
% 1.52/0.99  
% 1.52/0.99  --instantiation_flag                    true
% 1.52/0.99  --inst_sos_flag                         false
% 1.52/0.99  --inst_sos_phase                        true
% 1.52/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.52/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.52/0.99  --inst_lit_sel_side                     num_symb
% 1.52/0.99  --inst_solver_per_active                1400
% 1.52/0.99  --inst_solver_calls_frac                1.
% 1.52/0.99  --inst_passive_queue_type               priority_queues
% 1.52/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.52/0.99  --inst_passive_queues_freq              [25;2]
% 1.52/0.99  --inst_dismatching                      true
% 1.52/0.99  --inst_eager_unprocessed_to_passive     true
% 1.52/0.99  --inst_prop_sim_given                   true
% 1.52/0.99  --inst_prop_sim_new                     false
% 1.52/0.99  --inst_subs_new                         false
% 1.52/0.99  --inst_eq_res_simp                      false
% 1.52/0.99  --inst_subs_given                       false
% 1.52/0.99  --inst_orphan_elimination               true
% 1.52/0.99  --inst_learning_loop_flag               true
% 1.52/0.99  --inst_learning_start                   3000
% 1.52/0.99  --inst_learning_factor                  2
% 1.52/0.99  --inst_start_prop_sim_after_learn       3
% 1.52/0.99  --inst_sel_renew                        solver
% 1.52/0.99  --inst_lit_activity_flag                true
% 1.52/0.99  --inst_restr_to_given                   false
% 1.52/0.99  --inst_activity_threshold               500
% 1.52/0.99  --inst_out_proof                        true
% 1.52/0.99  
% 1.52/0.99  ------ Resolution Options
% 1.52/0.99  
% 1.52/0.99  --resolution_flag                       true
% 1.52/0.99  --res_lit_sel                           adaptive
% 1.52/0.99  --res_lit_sel_side                      none
% 1.52/0.99  --res_ordering                          kbo
% 1.52/0.99  --res_to_prop_solver                    active
% 1.52/0.99  --res_prop_simpl_new                    false
% 1.52/0.99  --res_prop_simpl_given                  true
% 1.52/0.99  --res_passive_queue_type                priority_queues
% 1.52/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.52/0.99  --res_passive_queues_freq               [15;5]
% 1.52/0.99  --res_forward_subs                      full
% 1.52/0.99  --res_backward_subs                     full
% 1.52/0.99  --res_forward_subs_resolution           true
% 1.52/0.99  --res_backward_subs_resolution          true
% 1.52/0.99  --res_orphan_elimination                true
% 1.52/0.99  --res_time_limit                        2.
% 1.52/0.99  --res_out_proof                         true
% 1.52/0.99  
% 1.52/0.99  ------ Superposition Options
% 1.52/0.99  
% 1.52/0.99  --superposition_flag                    true
% 1.52/0.99  --sup_passive_queue_type                priority_queues
% 1.52/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.52/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.52/0.99  --demod_completeness_check              fast
% 1.52/0.99  --demod_use_ground                      true
% 1.52/0.99  --sup_to_prop_solver                    passive
% 1.52/0.99  --sup_prop_simpl_new                    true
% 1.52/0.99  --sup_prop_simpl_given                  true
% 1.52/0.99  --sup_fun_splitting                     false
% 1.52/0.99  --sup_smt_interval                      50000
% 1.52/0.99  
% 1.52/0.99  ------ Superposition Simplification Setup
% 1.52/0.99  
% 1.52/0.99  --sup_indices_passive                   []
% 1.52/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.52/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.52/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.52/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.52/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.52/0.99  --sup_full_bw                           [BwDemod]
% 1.52/0.99  --sup_immed_triv                        [TrivRules]
% 1.52/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.52/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.52/0.99  --sup_immed_bw_main                     []
% 1.52/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.52/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.52/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.52/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.52/0.99  
% 1.52/0.99  ------ Combination Options
% 1.52/0.99  
% 1.52/0.99  --comb_res_mult                         3
% 1.52/0.99  --comb_sup_mult                         2
% 1.52/0.99  --comb_inst_mult                        10
% 1.52/0.99  
% 1.52/0.99  ------ Debug Options
% 1.52/0.99  
% 1.52/0.99  --dbg_backtrace                         false
% 1.52/0.99  --dbg_dump_prop_clauses                 false
% 1.52/0.99  --dbg_dump_prop_clauses_file            -
% 1.52/0.99  --dbg_out_stat                          false
% 1.52/0.99  ------ Parsing...
% 1.52/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.52/0.99  
% 1.52/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 1.52/0.99  
% 1.52/0.99  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.52/0.99  
% 1.52/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 1.52/0.99  ------ Proving...
% 1.52/0.99  ------ Problem Properties 
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  clauses                                 12
% 1.52/0.99  conjectures                             0
% 1.52/0.99  EPR                                     0
% 1.52/0.99  Horn                                    8
% 1.52/0.99  unary                                   3
% 1.52/0.99  binary                                  5
% 1.52/0.99  lits                                    26
% 1.52/0.99  lits eq                                 24
% 1.52/0.99  fd_pure                                 0
% 1.52/0.99  fd_pseudo                               0
% 1.52/0.99  fd_cond                                 1
% 1.52/0.99  fd_pseudo_cond                          0
% 1.52/0.99  AC symbols                              0
% 1.52/0.99  
% 1.52/0.99  ------ Schedule dynamic 5 is on 
% 1.52/0.99  
% 1.52/0.99  ------ no conjectures: strip conj schedule 
% 1.52/0.99  
% 1.52/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  ------ 
% 1.52/0.99  Current options:
% 1.52/0.99  ------ 
% 1.52/0.99  
% 1.52/0.99  ------ Input Options
% 1.52/0.99  
% 1.52/0.99  --out_options                           all
% 1.52/0.99  --tptp_safe_out                         true
% 1.52/0.99  --problem_path                          ""
% 1.52/0.99  --include_path                          ""
% 1.52/0.99  --clausifier                            res/vclausify_rel
% 1.52/0.99  --clausifier_options                    --mode clausify
% 1.52/0.99  --stdin                                 false
% 1.52/0.99  --stats_out                             all
% 1.52/0.99  
% 1.52/0.99  ------ General Options
% 1.52/0.99  
% 1.52/0.99  --fof                                   false
% 1.52/0.99  --time_out_real                         305.
% 1.52/0.99  --time_out_virtual                      -1.
% 1.52/0.99  --symbol_type_check                     false
% 1.52/0.99  --clausify_out                          false
% 1.52/0.99  --sig_cnt_out                           false
% 1.52/0.99  --trig_cnt_out                          false
% 1.52/0.99  --trig_cnt_out_tolerance                1.
% 1.52/0.99  --trig_cnt_out_sk_spl                   false
% 1.52/0.99  --abstr_cl_out                          false
% 1.52/0.99  
% 1.52/0.99  ------ Global Options
% 1.52/0.99  
% 1.52/0.99  --schedule                              default
% 1.52/0.99  --add_important_lit                     false
% 1.52/0.99  --prop_solver_per_cl                    1000
% 1.52/0.99  --min_unsat_core                        false
% 1.52/0.99  --soft_assumptions                      false
% 1.52/0.99  --soft_lemma_size                       3
% 1.52/0.99  --prop_impl_unit_size                   0
% 1.52/0.99  --prop_impl_unit                        []
% 1.52/0.99  --share_sel_clauses                     true
% 1.52/0.99  --reset_solvers                         false
% 1.52/0.99  --bc_imp_inh                            [conj_cone]
% 1.52/0.99  --conj_cone_tolerance                   3.
% 1.52/0.99  --extra_neg_conj                        none
% 1.52/0.99  --large_theory_mode                     true
% 1.52/0.99  --prolific_symb_bound                   200
% 1.52/0.99  --lt_threshold                          2000
% 1.52/0.99  --clause_weak_htbl                      true
% 1.52/0.99  --gc_record_bc_elim                     false
% 1.52/0.99  
% 1.52/0.99  ------ Preprocessing Options
% 1.52/0.99  
% 1.52/0.99  --preprocessing_flag                    true
% 1.52/0.99  --time_out_prep_mult                    0.1
% 1.52/0.99  --splitting_mode                        input
% 1.52/0.99  --splitting_grd                         true
% 1.52/0.99  --splitting_cvd                         false
% 1.52/0.99  --splitting_cvd_svl                     false
% 1.52/0.99  --splitting_nvd                         32
% 1.52/0.99  --sub_typing                            true
% 1.52/0.99  --prep_gs_sim                           true
% 1.52/0.99  --prep_unflatten                        true
% 1.52/0.99  --prep_res_sim                          true
% 1.52/0.99  --prep_upred                            true
% 1.52/0.99  --prep_sem_filter                       exhaustive
% 1.52/0.99  --prep_sem_filter_out                   false
% 1.52/0.99  --pred_elim                             true
% 1.52/0.99  --res_sim_input                         true
% 1.52/0.99  --eq_ax_congr_red                       true
% 1.52/0.99  --pure_diseq_elim                       true
% 1.52/0.99  --brand_transform                       false
% 1.52/0.99  --non_eq_to_eq                          false
% 1.52/0.99  --prep_def_merge                        true
% 1.52/0.99  --prep_def_merge_prop_impl              false
% 1.52/0.99  --prep_def_merge_mbd                    true
% 1.52/0.99  --prep_def_merge_tr_red                 false
% 1.52/0.99  --prep_def_merge_tr_cl                  false
% 1.52/0.99  --smt_preprocessing                     true
% 1.52/0.99  --smt_ac_axioms                         fast
% 1.52/0.99  --preprocessed_out                      false
% 1.52/0.99  --preprocessed_stats                    false
% 1.52/0.99  
% 1.52/0.99  ------ Abstraction refinement Options
% 1.52/0.99  
% 1.52/0.99  --abstr_ref                             []
% 1.52/0.99  --abstr_ref_prep                        false
% 1.52/0.99  --abstr_ref_until_sat                   false
% 1.52/0.99  --abstr_ref_sig_restrict                funpre
% 1.52/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.52/0.99  --abstr_ref_under                       []
% 1.52/0.99  
% 1.52/0.99  ------ SAT Options
% 1.52/0.99  
% 1.52/0.99  --sat_mode                              false
% 1.52/0.99  --sat_fm_restart_options                ""
% 1.52/0.99  --sat_gr_def                            false
% 1.52/0.99  --sat_epr_types                         true
% 1.52/0.99  --sat_non_cyclic_types                  false
% 1.52/0.99  --sat_finite_models                     false
% 1.52/0.99  --sat_fm_lemmas                         false
% 1.52/0.99  --sat_fm_prep                           false
% 1.52/0.99  --sat_fm_uc_incr                        true
% 1.52/0.99  --sat_out_model                         small
% 1.52/0.99  --sat_out_clauses                       false
% 1.52/0.99  
% 1.52/0.99  ------ QBF Options
% 1.52/0.99  
% 1.52/0.99  --qbf_mode                              false
% 1.52/0.99  --qbf_elim_univ                         false
% 1.52/0.99  --qbf_dom_inst                          none
% 1.52/0.99  --qbf_dom_pre_inst                      false
% 1.52/0.99  --qbf_sk_in                             false
% 1.52/0.99  --qbf_pred_elim                         true
% 1.52/0.99  --qbf_split                             512
% 1.52/0.99  
% 1.52/0.99  ------ BMC1 Options
% 1.52/0.99  
% 1.52/0.99  --bmc1_incremental                      false
% 1.52/0.99  --bmc1_axioms                           reachable_all
% 1.52/0.99  --bmc1_min_bound                        0
% 1.52/0.99  --bmc1_max_bound                        -1
% 1.52/0.99  --bmc1_max_bound_default                -1
% 1.52/0.99  --bmc1_symbol_reachability              true
% 1.52/0.99  --bmc1_property_lemmas                  false
% 1.52/0.99  --bmc1_k_induction                      false
% 1.52/0.99  --bmc1_non_equiv_states                 false
% 1.52/0.99  --bmc1_deadlock                         false
% 1.52/0.99  --bmc1_ucm                              false
% 1.52/0.99  --bmc1_add_unsat_core                   none
% 1.52/0.99  --bmc1_unsat_core_children              false
% 1.52/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.52/0.99  --bmc1_out_stat                         full
% 1.52/0.99  --bmc1_ground_init                      false
% 1.52/0.99  --bmc1_pre_inst_next_state              false
% 1.52/0.99  --bmc1_pre_inst_state                   false
% 1.52/0.99  --bmc1_pre_inst_reach_state             false
% 1.52/0.99  --bmc1_out_unsat_core                   false
% 1.52/0.99  --bmc1_aig_witness_out                  false
% 1.52/0.99  --bmc1_verbose                          false
% 1.52/0.99  --bmc1_dump_clauses_tptp                false
% 1.52/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.52/0.99  --bmc1_dump_file                        -
% 1.52/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.52/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.52/0.99  --bmc1_ucm_extend_mode                  1
% 1.52/0.99  --bmc1_ucm_init_mode                    2
% 1.52/0.99  --bmc1_ucm_cone_mode                    none
% 1.52/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.52/0.99  --bmc1_ucm_relax_model                  4
% 1.52/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.52/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.52/0.99  --bmc1_ucm_layered_model                none
% 1.52/0.99  --bmc1_ucm_max_lemma_size               10
% 1.52/0.99  
% 1.52/0.99  ------ AIG Options
% 1.52/0.99  
% 1.52/0.99  --aig_mode                              false
% 1.52/0.99  
% 1.52/0.99  ------ Instantiation Options
% 1.52/0.99  
% 1.52/0.99  --instantiation_flag                    true
% 1.52/0.99  --inst_sos_flag                         false
% 1.52/0.99  --inst_sos_phase                        true
% 1.52/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.52/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.52/0.99  --inst_lit_sel_side                     none
% 1.52/0.99  --inst_solver_per_active                1400
% 1.52/0.99  --inst_solver_calls_frac                1.
% 1.52/0.99  --inst_passive_queue_type               priority_queues
% 1.52/0.99  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 1.52/0.99  --inst_passive_queues_freq              [25;2]
% 1.52/0.99  --inst_dismatching                      true
% 1.52/0.99  --inst_eager_unprocessed_to_passive     true
% 1.52/0.99  --inst_prop_sim_given                   true
% 1.52/0.99  --inst_prop_sim_new                     false
% 1.52/0.99  --inst_subs_new                         false
% 1.52/0.99  --inst_eq_res_simp                      false
% 1.52/0.99  --inst_subs_given                       false
% 1.52/0.99  --inst_orphan_elimination               true
% 1.52/0.99  --inst_learning_loop_flag               true
% 1.52/0.99  --inst_learning_start                   3000
% 1.52/0.99  --inst_learning_factor                  2
% 1.52/0.99  --inst_start_prop_sim_after_learn       3
% 1.52/0.99  --inst_sel_renew                        solver
% 1.52/0.99  --inst_lit_activity_flag                true
% 1.52/0.99  --inst_restr_to_given                   false
% 1.52/0.99  --inst_activity_threshold               500
% 1.52/0.99  --inst_out_proof                        true
% 1.52/0.99  
% 1.52/0.99  ------ Resolution Options
% 1.52/0.99  
% 1.52/0.99  --resolution_flag                       false
% 1.52/0.99  --res_lit_sel                           adaptive
% 1.52/0.99  --res_lit_sel_side                      none
% 1.52/0.99  --res_ordering                          kbo
% 1.52/0.99  --res_to_prop_solver                    active
% 1.52/0.99  --res_prop_simpl_new                    false
% 1.52/0.99  --res_prop_simpl_given                  true
% 1.52/0.99  --res_passive_queue_type                priority_queues
% 1.52/0.99  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 1.52/0.99  --res_passive_queues_freq               [15;5]
% 1.52/0.99  --res_forward_subs                      full
% 1.52/0.99  --res_backward_subs                     full
% 1.52/0.99  --res_forward_subs_resolution           true
% 1.52/0.99  --res_backward_subs_resolution          true
% 1.52/0.99  --res_orphan_elimination                true
% 1.52/0.99  --res_time_limit                        2.
% 1.52/0.99  --res_out_proof                         true
% 1.52/0.99  
% 1.52/0.99  ------ Superposition Options
% 1.52/0.99  
% 1.52/0.99  --superposition_flag                    true
% 1.52/0.99  --sup_passive_queue_type                priority_queues
% 1.52/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.52/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.52/0.99  --demod_completeness_check              fast
% 1.52/0.99  --demod_use_ground                      true
% 1.52/0.99  --sup_to_prop_solver                    passive
% 1.52/0.99  --sup_prop_simpl_new                    true
% 1.52/0.99  --sup_prop_simpl_given                  true
% 1.52/0.99  --sup_fun_splitting                     false
% 1.52/0.99  --sup_smt_interval                      50000
% 1.52/0.99  
% 1.52/0.99  ------ Superposition Simplification Setup
% 1.52/0.99  
% 1.52/0.99  --sup_indices_passive                   []
% 1.52/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.52/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.52/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.52/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.52/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.52/0.99  --sup_full_bw                           [BwDemod]
% 1.52/0.99  --sup_immed_triv                        [TrivRules]
% 1.52/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.52/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.52/0.99  --sup_immed_bw_main                     []
% 1.52/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.52/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.52/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.52/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.52/0.99  
% 1.52/0.99  ------ Combination Options
% 1.52/0.99  
% 1.52/0.99  --comb_res_mult                         3
% 1.52/0.99  --comb_sup_mult                         2
% 1.52/0.99  --comb_inst_mult                        10
% 1.52/0.99  
% 1.52/0.99  ------ Debug Options
% 1.52/0.99  
% 1.52/0.99  --dbg_backtrace                         false
% 1.52/0.99  --dbg_dump_prop_clauses                 false
% 1.52/0.99  --dbg_dump_prop_clauses_file            -
% 1.52/0.99  --dbg_out_stat                          false
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  ------ Proving...
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  % SZS status Theorem for theBenchmark.p
% 1.52/0.99  
% 1.52/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.52/0.99  
% 1.52/0.99  fof(f10,conjecture,(
% 1.52/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_tarski(X0,X2) => r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3)))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f11,negated_conjecture,(
% 1.52/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_tarski(X0,X2) => r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3)))),
% 1.52/0.99    inference(negated_conjecture,[],[f10])).
% 1.52/0.99  
% 1.52/0.99  fof(f26,plain,(
% 1.52/0.99    ? [X0,X1,X2,X3] : ((~r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3) & r1_tarski(X0,X2)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 1.52/0.99    inference(ennf_transformation,[],[f11])).
% 1.52/0.99  
% 1.52/0.99  fof(f27,plain,(
% 1.52/0.99    ? [X0,X1,X2,X3] : (~r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3) & r1_tarski(X0,X2) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 1.52/0.99    inference(flattening,[],[f26])).
% 1.52/0.99  
% 1.52/0.99  fof(f32,plain,(
% 1.52/0.99    ? [X0,X1,X2,X3] : (~r2_relset_1(X0,X1,k2_partfun1(X0,X1,X3,X2),X3) & r1_tarski(X0,X2) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (~r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3) & r1_tarski(sK0,sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 1.52/0.99    introduced(choice_axiom,[])).
% 1.52/0.99  
% 1.52/0.99  fof(f33,plain,(
% 1.52/0.99    ~r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3) & r1_tarski(sK0,sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)),
% 1.52/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f27,f32])).
% 1.52/0.99  
% 1.52/0.99  fof(f52,plain,(
% 1.52/0.99    v1_funct_2(sK3,sK0,sK1)),
% 1.52/0.99    inference(cnf_transformation,[],[f33])).
% 1.52/0.99  
% 1.52/0.99  fof(f8,axiom,(
% 1.52/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f22,plain,(
% 1.52/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(ennf_transformation,[],[f8])).
% 1.52/0.99  
% 1.52/0.99  fof(f23,plain,(
% 1.52/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(flattening,[],[f22])).
% 1.52/0.99  
% 1.52/0.99  fof(f31,plain,(
% 1.52/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(nnf_transformation,[],[f23])).
% 1.52/0.99  
% 1.52/0.99  fof(f44,plain,(
% 1.52/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.52/0.99    inference(cnf_transformation,[],[f31])).
% 1.52/0.99  
% 1.52/0.99  fof(f53,plain,(
% 1.52/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.52/0.99    inference(cnf_transformation,[],[f33])).
% 1.52/0.99  
% 1.52/0.99  fof(f6,axiom,(
% 1.52/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f19,plain,(
% 1.52/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(ennf_transformation,[],[f6])).
% 1.52/0.99  
% 1.52/0.99  fof(f41,plain,(
% 1.52/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.52/0.99    inference(cnf_transformation,[],[f19])).
% 1.52/0.99  
% 1.52/0.99  fof(f3,axiom,(
% 1.52/0.99    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f15,plain,(
% 1.52/0.99    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.52/0.99    inference(ennf_transformation,[],[f3])).
% 1.52/0.99  
% 1.52/0.99  fof(f16,plain,(
% 1.52/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 1.52/0.99    inference(flattening,[],[f15])).
% 1.52/0.99  
% 1.52/0.99  fof(f38,plain,(
% 1.52/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 1.52/0.99    inference(cnf_transformation,[],[f16])).
% 1.52/0.99  
% 1.52/0.99  fof(f54,plain,(
% 1.52/0.99    r1_tarski(sK0,sK2)),
% 1.52/0.99    inference(cnf_transformation,[],[f33])).
% 1.52/0.99  
% 1.52/0.99  fof(f4,axiom,(
% 1.52/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f17,plain,(
% 1.52/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(ennf_transformation,[],[f4])).
% 1.52/0.99  
% 1.52/0.99  fof(f39,plain,(
% 1.52/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.52/0.99    inference(cnf_transformation,[],[f17])).
% 1.52/0.99  
% 1.52/0.99  fof(f9,axiom,(
% 1.52/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f24,plain,(
% 1.52/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 1.52/0.99    inference(ennf_transformation,[],[f9])).
% 1.52/0.99  
% 1.52/0.99  fof(f25,plain,(
% 1.52/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 1.52/0.99    inference(flattening,[],[f24])).
% 1.52/0.99  
% 1.52/0.99  fof(f50,plain,(
% 1.52/0.99    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 1.52/0.99    inference(cnf_transformation,[],[f25])).
% 1.52/0.99  
% 1.52/0.99  fof(f51,plain,(
% 1.52/0.99    v1_funct_1(sK3)),
% 1.52/0.99    inference(cnf_transformation,[],[f33])).
% 1.52/0.99  
% 1.52/0.99  fof(f7,axiom,(
% 1.52/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f20,plain,(
% 1.52/0.99    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 1.52/0.99    inference(ennf_transformation,[],[f7])).
% 1.52/0.99  
% 1.52/0.99  fof(f21,plain,(
% 1.52/0.99    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(flattening,[],[f20])).
% 1.52/0.99  
% 1.52/0.99  fof(f30,plain,(
% 1.52/0.99    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(nnf_transformation,[],[f21])).
% 1.52/0.99  
% 1.52/0.99  fof(f43,plain,(
% 1.52/0.99    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.52/0.99    inference(cnf_transformation,[],[f30])).
% 1.52/0.99  
% 1.52/0.99  fof(f58,plain,(
% 1.52/0.99    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.52/0.99    inference(equality_resolution,[],[f43])).
% 1.52/0.99  
% 1.52/0.99  fof(f55,plain,(
% 1.52/0.99    ~r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3)),
% 1.52/0.99    inference(cnf_transformation,[],[f33])).
% 1.52/0.99  
% 1.52/0.99  fof(f1,axiom,(
% 1.52/0.99    ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f28,plain,(
% 1.52/0.99    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 1.52/0.99    inference(nnf_transformation,[],[f1])).
% 1.52/0.99  
% 1.52/0.99  fof(f29,plain,(
% 1.52/0.99    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 1.52/0.99    inference(flattening,[],[f28])).
% 1.52/0.99  
% 1.52/0.99  fof(f36,plain,(
% 1.52/0.99    ( ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 | k1_xboole_0 != X1) )),
% 1.52/0.99    inference(cnf_transformation,[],[f29])).
% 1.52/0.99  
% 1.52/0.99  fof(f56,plain,(
% 1.52/0.99    ( ! [X0] : (k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0) )),
% 1.52/0.99    inference(equality_resolution,[],[f36])).
% 1.52/0.99  
% 1.52/0.99  fof(f5,axiom,(
% 1.52/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f12,plain,(
% 1.52/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.52/0.99    inference(pure_predicate_removal,[],[f5])).
% 1.52/0.99  
% 1.52/0.99  fof(f18,plain,(
% 1.52/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.52/0.99    inference(ennf_transformation,[],[f12])).
% 1.52/0.99  
% 1.52/0.99  fof(f40,plain,(
% 1.52/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.52/0.99    inference(cnf_transformation,[],[f18])).
% 1.52/0.99  
% 1.52/0.99  fof(f2,axiom,(
% 1.52/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 1.52/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.52/0.99  
% 1.52/0.99  fof(f13,plain,(
% 1.52/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.52/0.99    inference(ennf_transformation,[],[f2])).
% 1.52/0.99  
% 1.52/0.99  fof(f14,plain,(
% 1.52/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.52/0.99    inference(flattening,[],[f13])).
% 1.52/0.99  
% 1.52/0.99  fof(f37,plain,(
% 1.52/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.52/0.99    inference(cnf_transformation,[],[f14])).
% 1.52/0.99  
% 1.52/0.99  cnf(c_20,negated_conjecture,
% 1.52/0.99      ( v1_funct_2(sK3,sK0,sK1) ),
% 1.52/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_15,plain,
% 1.52/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.52/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.52/0.99      | k1_xboole_0 = X2 ),
% 1.52/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_19,negated_conjecture,
% 1.52/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 1.52/0.99      inference(cnf_transformation,[],[f53]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_315,plain,
% 1.52/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.52/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sK3 != X0
% 1.52/0.99      | k1_xboole_0 = X2 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_19]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_316,plain,
% 1.52/0.99      ( ~ v1_funct_2(sK3,X0,X1)
% 1.52/0.99      | k1_relset_1(X0,X1,sK3) = X0
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | k1_xboole_0 = X1 ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_315]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_518,plain,
% 1.52/0.99      ( k1_relset_1(X0,X1,sK3) = X0
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sK3 != sK3
% 1.52/0.99      | sK1 != X1
% 1.52/0.99      | sK0 != X0
% 1.52/0.99      | k1_xboole_0 = X1 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_20,c_316]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_519,plain,
% 1.52/0.99      ( k1_relset_1(sK0,sK1,sK3) = sK0
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | k1_xboole_0 = sK1 ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_518]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_572,plain,
% 1.52/0.99      ( k1_relset_1(sK0,sK1,sK3) = sK0 | k1_xboole_0 = sK1 ),
% 1.52/0.99      inference(equality_resolution_simp,[status(thm)],[c_519]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_7,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.52/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_351,plain,
% 1.52/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sK3 != X2 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_19]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_352,plain,
% 1.52/0.99      ( k1_relset_1(X0,X1,sK3) = k1_relat_1(sK3)
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_351]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_689,plain,
% 1.52/0.99      ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
% 1.52/0.99      inference(equality_resolution,[status(thm)],[c_352]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_775,plain,
% 1.52/0.99      ( k1_relat_1(sK3) = sK0 | sK1 = k1_xboole_0 ),
% 1.52/0.99      inference(demodulation,[status(thm)],[c_572,c_689]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_4,plain,
% 1.52/0.99      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 1.52/0.99      | ~ v1_relat_1(X0)
% 1.52/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.52/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_18,negated_conjecture,
% 1.52/0.99      ( r1_tarski(sK0,sK2) ),
% 1.52/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_220,plain,
% 1.52/0.99      ( ~ v1_relat_1(X0)
% 1.52/0.99      | k7_relat_1(X0,X1) = X0
% 1.52/0.99      | k1_relat_1(X0) != sK0
% 1.52/0.99      | sK2 != X1 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_18]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_221,plain,
% 1.52/0.99      ( ~ v1_relat_1(X0)
% 1.52/0.99      | k7_relat_1(X0,sK2) = X0
% 1.52/0.99      | k1_relat_1(X0) != sK0 ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_220]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_5,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | v1_relat_1(X0) ),
% 1.52/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_360,plain,
% 1.52/0.99      ( v1_relat_1(X0)
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sK3 != X0 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_19]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_361,plain,
% 1.52/0.99      ( v1_relat_1(sK3)
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_360]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_495,plain,
% 1.52/0.99      ( k7_relat_1(X0,sK2) = X0
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | k1_relat_1(X0) != sK0
% 1.52/0.99      | sK3 != X0 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_221,c_361]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_496,plain,
% 1.52/0.99      ( k7_relat_1(sK3,sK2) = sK3
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | k1_relat_1(sK3) != sK0 ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_495]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_585,plain,
% 1.52/0.99      ( sP0_iProver_split
% 1.52/0.99      | k7_relat_1(sK3,sK2) = sK3
% 1.52/0.99      | k1_relat_1(sK3) != sK0 ),
% 1.52/0.99      inference(splitting,
% 1.52/0.99                [splitting(split),new_symbols(definition,[])],
% 1.52/0.99                [c_496]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_622,plain,
% 1.52/0.99      ( k7_relat_1(sK3,sK2) = sK3
% 1.52/0.99      | k1_relat_1(sK3) != sK0
% 1.52/0.99      | sP0_iProver_split = iProver_top ),
% 1.52/0.99      inference(predicate_to_equality,[status(thm)],[c_585]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_601,plain,
% 1.52/0.99      ( k7_relat_1(sK3,sK2) = sK3
% 1.52/0.99      | k1_relat_1(sK3) != sK0
% 1.52/0.99      | sP0_iProver_split = iProver_top ),
% 1.52/0.99      inference(predicate_to_equality,[status(thm)],[c_585]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_16,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | ~ v1_funct_1(X0)
% 1.52/0.99      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 1.52/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_21,negated_conjecture,
% 1.52/0.99      ( v1_funct_1(sK3) ),
% 1.52/0.99      inference(cnf_transformation,[],[f51]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_239,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3)
% 1.52/0.99      | sK3 != X0 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_21]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_240,plain,
% 1.52/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.52/0.99      | k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2) ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_239]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_437,plain,
% 1.52/0.99      ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sK3 != sK3 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_240]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_574,plain,
% 1.52/0.99      ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.52/0.99      inference(equality_resolution_simp,[status(thm)],[c_437]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_736,plain,
% 1.52/0.99      ( k2_partfun1(sK0,sK1,sK3,X0) = k7_relat_1(sK3,X0) ),
% 1.52/0.99      inference(equality_resolution,[status(thm)],[c_574]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_8,plain,
% 1.52/0.99      ( r2_relset_1(X0,X1,X2,X2)
% 1.52/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 1.52/0.99      inference(cnf_transformation,[],[f58]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_17,negated_conjecture,
% 1.52/0.99      ( ~ r2_relset_1(sK0,sK1,k2_partfun1(sK0,sK1,sK3,sK2),sK3) ),
% 1.52/0.99      inference(cnf_transformation,[],[f55]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_293,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | k2_partfun1(sK0,sK1,sK3,sK2) != X0
% 1.52/0.99      | sK3 != X0
% 1.52/0.99      | sK1 != X2
% 1.52/0.99      | sK0 != X1 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_17]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_294,plain,
% 1.52/0.99      ( ~ m1_subset_1(k2_partfun1(sK0,sK1,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 1.52/0.99      | sK3 != k2_partfun1(sK0,sK1,sK3,sK2) ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_293]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_448,plain,
% 1.52/0.99      ( k2_partfun1(sK0,sK1,sK3,sK2) != sK3
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_294]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_573,plain,
% 1.52/0.99      ( k2_partfun1(sK0,sK1,sK3,sK2) != sK3 ),
% 1.52/0.99      inference(equality_resolution_simp,[status(thm)],[c_448]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_947,plain,
% 1.52/0.99      ( k7_relat_1(sK3,sK2) != sK3 ),
% 1.52/0.99      inference(demodulation,[status(thm)],[c_736,c_573]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_584,plain,
% 1.52/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | ~ sP0_iProver_split ),
% 1.52/0.99      inference(splitting,
% 1.52/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.52/0.99                [c_496]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_623,plain,
% 1.52/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sP0_iProver_split != iProver_top ),
% 1.52/0.99      inference(predicate_to_equality,[status(thm)],[c_584]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1004,plain,
% 1.52/0.99      ( sP0_iProver_split != iProver_top ),
% 1.52/0.99      inference(equality_resolution,[status(thm)],[c_623]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1123,plain,
% 1.52/0.99      ( k1_relat_1(sK3) != sK0 ),
% 1.52/0.99      inference(global_propositional_subsumption,
% 1.52/0.99                [status(thm)],
% 1.52/0.99                [c_622,c_601,c_947,c_1004]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1126,plain,
% 1.52/0.99      ( sK1 = k1_xboole_0 ),
% 1.52/0.99      inference(superposition,[status(thm)],[c_775,c_1123]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_0,plain,
% 1.52/0.99      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 1.52/0.99      inference(cnf_transformation,[],[f56]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_6,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | v4_relat_1(X0,X1) ),
% 1.52/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_3,plain,
% 1.52/0.99      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 1.52/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_254,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | ~ v1_relat_1(X0)
% 1.52/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.52/0.99      inference(resolution,[status(thm)],[c_6,c_3]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_258,plain,
% 1.52/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.52/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.52/0.99      inference(global_propositional_subsumption,
% 1.52/0.99                [status(thm)],
% 1.52/0.99                [c_254,c_6,c_5,c_3]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_306,plain,
% 1.52/0.99      ( k7_relat_1(X0,X1) = X0
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 1.52/0.99      | sK3 != X0 ),
% 1.52/0.99      inference(resolution_lifted,[status(thm)],[c_258,c_19]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_307,plain,
% 1.52/0.99      ( k7_relat_1(sK3,X0) = sK3
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 1.52/0.99      inference(unflattening,[status(thm)],[c_306]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_818,plain,
% 1.52/0.99      ( k7_relat_1(sK3,X0) = sK3
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.52/0.99      inference(superposition,[status(thm)],[c_0,c_307]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1163,plain,
% 1.52/0.99      ( k7_relat_1(sK3,X0) = sK3
% 1.52/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)) != k1_zfmisc_1(k1_xboole_0) ),
% 1.52/0.99      inference(demodulation,[status(thm)],[c_1126,c_818]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1195,plain,
% 1.52/0.99      ( k7_relat_1(sK3,X0) = sK3
% 1.52/0.99      | k1_zfmisc_1(k1_xboole_0) != k1_zfmisc_1(k1_xboole_0) ),
% 1.52/0.99      inference(demodulation,[status(thm)],[c_1163,c_0]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1196,plain,
% 1.52/0.99      ( k7_relat_1(sK3,X0) = sK3 ),
% 1.52/0.99      inference(equality_resolution_simp,[status(thm)],[c_1195]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_1275,plain,
% 1.52/0.99      ( sK3 != sK3 ),
% 1.52/0.99      inference(demodulation,[status(thm)],[c_1196,c_947]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_586,plain,( X0 = X0 ),theory(equality) ).
% 1.52/0.99  
% 1.52/0.99  cnf(c_754,plain,
% 1.52/0.99      ( sK3 = sK3 ),
% 1.52/0.99      inference(instantiation,[status(thm)],[c_586]) ).
% 1.52/0.99  
% 1.52/0.99  cnf(contradiction,plain,
% 1.52/0.99      ( $false ),
% 1.52/0.99      inference(minisat,[status(thm)],[c_1275,c_754]) ).
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.52/0.99  
% 1.52/0.99  ------                               Statistics
% 1.52/0.99  
% 1.52/0.99  ------ General
% 1.52/0.99  
% 1.52/0.99  abstr_ref_over_cycles:                  0
% 1.52/0.99  abstr_ref_under_cycles:                 0
% 1.52/0.99  gc_basic_clause_elim:                   0
% 1.52/0.99  forced_gc_time:                         0
% 1.52/0.99  parsing_time:                           0.01
% 1.52/0.99  unif_index_cands_time:                  0.
% 1.52/0.99  unif_index_add_time:                    0.
% 1.52/0.99  orderings_time:                         0.
% 1.52/0.99  out_proof_time:                         0.008
% 1.52/0.99  total_time:                             0.075
% 1.52/0.99  num_of_symbols:                         50
% 1.52/0.99  num_of_terms:                           1036
% 1.52/0.99  
% 1.52/0.99  ------ Preprocessing
% 1.52/0.99  
% 1.52/0.99  num_of_splits:                          1
% 1.52/0.99  num_of_split_atoms:                     1
% 1.52/0.99  num_of_reused_defs:                     0
% 1.52/0.99  num_eq_ax_congr_red:                    8
% 1.52/0.99  num_of_sem_filtered_clauses:            0
% 1.52/0.99  num_of_subtypes:                        0
% 1.52/0.99  monotx_restored_types:                  0
% 1.52/0.99  sat_num_of_epr_types:                   0
% 1.52/0.99  sat_num_of_non_cyclic_types:            0
% 1.52/0.99  sat_guarded_non_collapsed_types:        0
% 1.52/0.99  num_pure_diseq_elim:                    0
% 1.52/0.99  simp_replaced_by:                       0
% 1.52/0.99  res_preprocessed:                       53
% 1.52/0.99  prep_upred:                             0
% 1.52/0.99  prep_unflattend:                        35
% 1.52/0.99  smt_new_axioms:                         0
% 1.52/0.99  pred_elim_cands:                        0
% 1.52/0.99  pred_elim:                              7
% 1.52/0.99  pred_elim_cl:                           11
% 1.52/0.99  pred_elim_cycles:                       9
% 1.52/0.99  merged_defs:                            0
% 1.52/0.99  merged_defs_ncl:                        0
% 1.52/0.99  bin_hyper_res:                          0
% 1.52/0.99  prep_cycles:                            3
% 1.52/0.99  pred_elim_time:                         0.007
% 1.52/0.99  splitting_time:                         0.
% 1.52/0.99  sem_filter_time:                        0.
% 1.52/0.99  monotx_time:                            0.
% 1.52/0.99  subtype_inf_time:                       0.
% 1.52/0.99  
% 1.52/0.99  ------ Problem properties
% 1.52/0.99  
% 1.52/0.99  clauses:                                12
% 1.52/0.99  conjectures:                            0
% 1.52/0.99  epr:                                    0
% 1.52/0.99  horn:                                   8
% 1.52/0.99  ground:                                 5
% 1.52/0.99  unary:                                  3
% 1.52/0.99  binary:                                 5
% 1.52/0.99  lits:                                   26
% 1.52/0.99  lits_eq:                                24
% 1.52/0.99  fd_pure:                                0
% 1.52/0.99  fd_pseudo:                              0
% 1.52/0.99  fd_cond:                                1
% 1.52/0.99  fd_pseudo_cond:                         0
% 1.52/0.99  ac_symbols:                             0
% 1.52/0.99  
% 1.52/0.99  ------ Propositional Solver
% 1.52/0.99  
% 1.52/0.99  prop_solver_calls:                      24
% 1.52/0.99  prop_fast_solver_calls:                 360
% 1.52/0.99  smt_solver_calls:                       0
% 1.52/0.99  smt_fast_solver_calls:                  0
% 1.52/0.99  prop_num_of_clauses:                    367
% 1.52/0.99  prop_preprocess_simplified:             1481
% 1.52/0.99  prop_fo_subsumed:                       3
% 1.52/0.99  prop_solver_time:                       0.
% 1.52/0.99  smt_solver_time:                        0.
% 1.52/0.99  smt_fast_solver_time:                   0.
% 1.52/0.99  prop_fast_solver_time:                  0.
% 1.52/0.99  prop_unsat_core_time:                   0.
% 1.52/0.99  
% 1.52/0.99  ------ QBF
% 1.52/0.99  
% 1.52/0.99  qbf_q_res:                              0
% 1.52/0.99  qbf_num_tautologies:                    0
% 1.52/0.99  qbf_prep_cycles:                        0
% 1.52/0.99  
% 1.52/0.99  ------ BMC1
% 1.52/0.99  
% 1.52/0.99  bmc1_current_bound:                     -1
% 1.52/0.99  bmc1_last_solved_bound:                 -1
% 1.52/0.99  bmc1_unsat_core_size:                   -1
% 1.52/0.99  bmc1_unsat_core_parents_size:           -1
% 1.52/0.99  bmc1_merge_next_fun:                    0
% 1.52/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.52/0.99  
% 1.52/0.99  ------ Instantiation
% 1.52/0.99  
% 1.52/0.99  inst_num_of_clauses:                    155
% 1.52/0.99  inst_num_in_passive:                    40
% 1.52/0.99  inst_num_in_active:                     106
% 1.52/0.99  inst_num_in_unprocessed:                9
% 1.52/0.99  inst_num_of_loops:                      120
% 1.52/0.99  inst_num_of_learning_restarts:          0
% 1.52/0.99  inst_num_moves_active_passive:          10
% 1.52/0.99  inst_lit_activity:                      0
% 1.52/0.99  inst_lit_activity_moves:                0
% 1.52/0.99  inst_num_tautologies:                   0
% 1.52/0.99  inst_num_prop_implied:                  0
% 1.52/0.99  inst_num_existing_simplified:           0
% 1.52/0.99  inst_num_eq_res_simplified:             0
% 1.52/0.99  inst_num_child_elim:                    0
% 1.52/0.99  inst_num_of_dismatching_blockings:      16
% 1.52/0.99  inst_num_of_non_proper_insts:           134
% 1.52/0.99  inst_num_of_duplicates:                 0
% 1.52/0.99  inst_inst_num_from_inst_to_res:         0
% 1.52/0.99  inst_dismatching_checking_time:         0.
% 1.52/0.99  
% 1.52/0.99  ------ Resolution
% 1.52/0.99  
% 1.52/0.99  res_num_of_clauses:                     0
% 1.52/0.99  res_num_in_passive:                     0
% 1.52/0.99  res_num_in_active:                      0
% 1.52/0.99  res_num_of_loops:                       56
% 1.52/0.99  res_forward_subset_subsumed:            23
% 1.52/0.99  res_backward_subset_subsumed:           2
% 1.52/0.99  res_forward_subsumed:                   0
% 1.52/0.99  res_backward_subsumed:                  0
% 1.52/0.99  res_forward_subsumption_resolution:     0
% 1.52/0.99  res_backward_subsumption_resolution:    0
% 1.52/0.99  res_clause_to_clause_subsumption:       60
% 1.52/0.99  res_orphan_elimination:                 0
% 1.52/0.99  res_tautology_del:                      33
% 1.52/0.99  res_num_eq_res_simplified:              3
% 1.52/0.99  res_num_sel_changes:                    0
% 1.52/0.99  res_moves_from_active_to_pass:          0
% 1.52/0.99  
% 1.52/0.99  ------ Superposition
% 1.52/0.99  
% 1.52/0.99  sup_time_total:                         0.
% 1.52/0.99  sup_time_generating:                    0.
% 1.52/0.99  sup_time_sim_full:                      0.
% 1.52/0.99  sup_time_sim_immed:                     0.
% 1.52/0.99  
% 1.52/0.99  sup_num_of_clauses:                     20
% 1.52/0.99  sup_num_in_active:                      8
% 1.52/0.99  sup_num_in_passive:                     12
% 1.52/0.99  sup_num_of_loops:                       23
% 1.52/0.99  sup_fw_superposition:                   7
% 1.52/0.99  sup_bw_superposition:                   6
% 1.52/0.99  sup_immediate_simplified:               19
% 1.52/0.99  sup_given_eliminated:                   1
% 1.52/0.99  comparisons_done:                       0
% 1.52/0.99  comparisons_avoided:                    3
% 1.52/0.99  
% 1.52/0.99  ------ Simplifications
% 1.52/0.99  
% 1.52/0.99  
% 1.52/0.99  sim_fw_subset_subsumed:                 1
% 1.52/0.99  sim_bw_subset_subsumed:                 1
% 1.52/0.99  sim_fw_subsumed:                        1
% 1.52/0.99  sim_bw_subsumed:                        3
% 1.52/0.99  sim_fw_subsumption_res:                 0
% 1.52/0.99  sim_bw_subsumption_res:                 0
% 1.52/0.99  sim_tautology_del:                      0
% 1.52/0.99  sim_eq_tautology_del:                   1
% 1.52/0.99  sim_eq_res_simp:                        8
% 1.52/0.99  sim_fw_demodulated:                     15
% 1.52/0.99  sim_bw_demodulated:                     16
% 1.52/0.99  sim_light_normalised:                   1
% 1.52/0.99  sim_joinable_taut:                      0
% 1.52/0.99  sim_joinable_simp:                      0
% 1.52/0.99  sim_ac_normalised:                      0
% 1.52/0.99  sim_smt_subsumption:                    0
% 1.52/0.99  
%------------------------------------------------------------------------------
