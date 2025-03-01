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
% DateTime   : Thu Dec  3 12:08:30 EST 2020

% Result     : Theorem 0.98s
% Output     : CNFRefutation 0.98s
% Verified   : 
% Statistics : Number of formulae       :   95 ( 249 expanded)
%              Number of clauses        :   57 (  77 expanded)
%              Number of leaves         :   11 (  62 expanded)
%              Depth                    :   15
%              Number of atoms          :  352 (1798 expanded)
%              Number of equality atoms :  102 ( 407 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
         => ( r1_partfun1(X2,X3)
           => ( r2_relset_1(X0,X1,X2,X3)
              | ( k1_xboole_0 != X0
                & k1_xboole_0 = X1 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              & v1_funct_2(X3,X0,X1)
              & v1_funct_1(X3) )
           => ( r1_partfun1(X2,X3)
             => ( r2_relset_1(X0,X1,X2,X3)
                | ( k1_xboole_0 != X0
                  & k1_xboole_0 = X1 ) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f18,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f18])).

fof(f22,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
     => ( ~ r2_relset_1(X0,X1,X2,sK3)
        & ( k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & r1_partfun1(X2,sK3)
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(sK3,X0,X1)
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ~ r2_relset_1(X0,X1,X2,X3)
            & ( k1_xboole_0 = X0
              | k1_xboole_0 != X1 )
            & r1_partfun1(X2,X3)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ? [X3] :
          ( ~ r2_relset_1(sK0,sK1,sK2,X3)
          & ( k1_xboole_0 = sK0
            | k1_xboole_0 != sK1 )
          & r1_partfun1(sK2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
          & v1_funct_2(X3,sK0,sK1)
          & v1_funct_1(X3) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK2,sK0,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ~ r2_relset_1(sK0,sK1,sK2,sK3)
    & ( k1_xboole_0 = sK0
      | k1_xboole_0 != sK1 )
    & r1_partfun1(sK2,sK3)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f22,f21])).

fof(f37,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f23])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f26,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f12])).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f28,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f41,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f28])).

fof(f40,plain,(
    ~ r2_relset_1(sK0,sK1,sK2,sK3) ),
    inference(cnf_transformation,[],[f23])).

fof(f1,axiom,(
    ! [X0,X1] :
      ~ ( v1_xboole_0(X1)
        & X0 != X1
        & v1_xboole_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f34,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_1(X3) )
         => ( ( r1_partfun1(X2,X3)
              & v1_partfun1(X3,X0)
              & v1_partfun1(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f16])).

fof(f31,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r1_partfun1(X2,X3)
      | ~ v1_partfun1(X3,X0)
      | ~ v1_partfun1(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f38,plain,(
    r1_partfun1(sK2,sK3) ),
    inference(cnf_transformation,[],[f23])).

fof(f32,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f23])).

fof(f35,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f23])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
     => v1_xboole_0(k2_zfmisc_1(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k2_zfmisc_1(X0,X1))
      | ~ v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f25,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k2_zfmisc_1(X0,X1))
      | ~ v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f14])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f33,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f23])).

fof(f36,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_315,plain,
    ( X0_42 != X1_42
    | X2_42 != X1_42
    | X2_42 = X0_42 ),
    theory(equality)).

cnf(c_571,plain,
    ( sK3 != X0_42
    | sK2 != X0_42
    | sK2 = sK3 ),
    inference(instantiation,[status(thm)],[c_315])).

cnf(c_915,plain,
    ( sK3 != sK2
    | sK2 = sK3
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_571])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_307,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_491,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_307])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_309,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
    | ~ v1_xboole_0(X1_42)
    | v1_xboole_0(X0_42) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_490,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42)) != iProver_top
    | v1_xboole_0(X1_42) != iProver_top
    | v1_xboole_0(X0_42) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_309])).

cnf(c_894,plain,
    ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_491,c_490])).

cnf(c_3,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_8,negated_conjecture,
    ( ~ r2_relset_1(sK0,sK1,sK2,sK3) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_167,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | sK3 != X0
    | sK2 != X0
    | sK1 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_8])).

cnf(c_168,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | sK2 != sK3 ),
    inference(unflattening,[status(thm)],[c_167])).

cnf(c_170,plain,
    ( sK2 != sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_168,c_11])).

cnf(c_305,plain,
    ( sK2 != sK3 ),
    inference(subtyping,[status(esa)],[c_170])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f24])).

cnf(c_311,plain,
    ( ~ v1_xboole_0(X0_42)
    | ~ v1_xboole_0(X1_42)
    | X1_42 = X0_42 ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_565,plain,
    ( ~ v1_xboole_0(sK3)
    | ~ v1_xboole_0(sK2)
    | sK2 = sK3 ),
    inference(instantiation,[status(thm)],[c_311])).

cnf(c_566,plain,
    ( sK2 = sK3
    | v1_xboole_0(sK3) != iProver_top
    | v1_xboole_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_565])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_306,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_492,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_306])).

cnf(c_895,plain,
    ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_492,c_490])).

cnf(c_907,plain,
    ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_894,c_305,c_566,c_895])).

cnf(c_7,plain,
    ( ~ r1_partfun1(X0,X1)
    | ~ v1_partfun1(X1,X2)
    | ~ v1_partfun1(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_10,negated_conjecture,
    ( r1_partfun1(sK2,sK3) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_176,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v1_partfun1(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X0)
    | X0 = X2
    | sK3 != X0
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_10])).

cnf(c_177,plain,
    ( ~ v1_partfun1(sK3,X0)
    | ~ v1_partfun1(sK2,X0)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2)
    | sK3 = sK2 ),
    inference(unflattening,[status(thm)],[c_176])).

cnf(c_16,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_13,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_181,plain,
    ( ~ v1_partfun1(sK3,X0)
    | ~ v1_partfun1(sK2,X0)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | sK3 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_177,c_16,c_13])).

cnf(c_304,plain,
    ( ~ v1_partfun1(sK3,X0_42)
    | ~ v1_partfun1(sK2,X0_42)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42)))
    | sK3 = sK2 ),
    inference(subtyping,[status(esa)],[c_181])).

cnf(c_493,plain,
    ( sK3 = sK2
    | v1_partfun1(sK3,X0_42) != iProver_top
    | v1_partfun1(sK2,X0_42) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_304])).

cnf(c_682,plain,
    ( sK3 = sK2
    | v1_partfun1(sK3,sK0) != iProver_top
    | v1_partfun1(sK2,sK0) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_491,c_493])).

cnf(c_19,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_685,plain,
    ( v1_partfun1(sK2,sK0) != iProver_top
    | v1_partfun1(sK3,sK0) != iProver_top
    | sK3 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_682,c_19])).

cnf(c_686,plain,
    ( sK3 = sK2
    | v1_partfun1(sK3,sK0) != iProver_top
    | v1_partfun1(sK2,sK0) != iProver_top ),
    inference(renaming,[status(thm)],[c_685])).

cnf(c_313,plain,
    ( X0_42 = X0_42 ),
    theory(equality)).

cnf(c_647,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_313])).

cnf(c_1,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_zfmisc_1(X1,X0)) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_310,plain,
    ( ~ v1_xboole_0(X0_42)
    | v1_xboole_0(k2_zfmisc_1(X1_42,X0_42)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_605,plain,
    ( v1_xboole_0(k2_zfmisc_1(X0_42,sK1))
    | ~ v1_xboole_0(sK1) ),
    inference(instantiation,[status(thm)],[c_310])).

cnf(c_606,plain,
    ( v1_xboole_0(k2_zfmisc_1(X0_42,sK1)) = iProver_top
    | v1_xboole_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_605])).

cnf(c_608,plain,
    ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) = iProver_top
    | v1_xboole_0(sK1) != iProver_top ),
    inference(instantiation,[status(thm)],[c_606])).

cnf(c_5,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_15,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_223,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | sK2 != X0
    | sK1 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_15])).

cnf(c_224,plain,
    ( v1_partfun1(sK2,sK0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK2)
    | v1_xboole_0(sK1) ),
    inference(unflattening,[status(thm)],[c_223])).

cnf(c_226,plain,
    ( v1_partfun1(sK2,sK0)
    | v1_xboole_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_224,c_16,c_14])).

cnf(c_228,plain,
    ( v1_partfun1(sK2,sK0) = iProver_top
    | v1_xboole_0(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_226])).

cnf(c_12,negated_conjecture,
    ( v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_209,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | sK3 != X0
    | sK1 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_12])).

cnf(c_210,plain,
    ( v1_partfun1(sK3,sK0)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | v1_xboole_0(sK1) ),
    inference(unflattening,[status(thm)],[c_209])).

cnf(c_212,plain,
    ( v1_partfun1(sK3,sK0)
    | v1_xboole_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_210,c_13,c_11])).

cnf(c_214,plain,
    ( v1_partfun1(sK3,sK0) = iProver_top
    | v1_xboole_0(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_212])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_915,c_907,c_686,c_647,c_608,c_305,c_228,c_214])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.31  % Computer   : n020.cluster.edu
% 0.11/0.31  % Model      : x86_64 x86_64
% 0.11/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.31  % Memory     : 8042.1875MB
% 0.11/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.31  % CPULimit   : 60
% 0.11/0.31  % WCLimit    : 600
% 0.11/0.31  % DateTime   : Tue Dec  1 20:47:07 EST 2020
% 0.11/0.31  % CPUTime    : 
% 0.11/0.31  % Running in FOF mode
% 0.98/0.95  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.98/0.95  
% 0.98/0.95  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.98/0.95  
% 0.98/0.95  ------  iProver source info
% 0.98/0.95  
% 0.98/0.95  git: date: 2020-06-30 10:37:57 +0100
% 0.98/0.95  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.98/0.95  git: non_committed_changes: false
% 0.98/0.95  git: last_make_outside_of_git: false
% 0.98/0.95  
% 0.98/0.95  ------ 
% 0.98/0.95  
% 0.98/0.95  ------ Input Options
% 0.98/0.95  
% 0.98/0.95  --out_options                           all
% 0.98/0.95  --tptp_safe_out                         true
% 0.98/0.95  --problem_path                          ""
% 0.98/0.95  --include_path                          ""
% 0.98/0.95  --clausifier                            res/vclausify_rel
% 0.98/0.95  --clausifier_options                    --mode clausify
% 0.98/0.95  --stdin                                 false
% 0.98/0.95  --stats_out                             all
% 0.98/0.95  
% 0.98/0.95  ------ General Options
% 0.98/0.95  
% 0.98/0.95  --fof                                   false
% 0.98/0.95  --time_out_real                         305.
% 0.98/0.95  --time_out_virtual                      -1.
% 0.98/0.95  --symbol_type_check                     false
% 0.98/0.95  --clausify_out                          false
% 0.98/0.95  --sig_cnt_out                           false
% 0.98/0.95  --trig_cnt_out                          false
% 0.98/0.95  --trig_cnt_out_tolerance                1.
% 0.98/0.95  --trig_cnt_out_sk_spl                   false
% 0.98/0.95  --abstr_cl_out                          false
% 0.98/0.95  
% 0.98/0.95  ------ Global Options
% 0.98/0.95  
% 0.98/0.95  --schedule                              default
% 0.98/0.95  --add_important_lit                     false
% 0.98/0.95  --prop_solver_per_cl                    1000
% 0.98/0.95  --min_unsat_core                        false
% 0.98/0.95  --soft_assumptions                      false
% 0.98/0.95  --soft_lemma_size                       3
% 0.98/0.95  --prop_impl_unit_size                   0
% 0.98/0.95  --prop_impl_unit                        []
% 0.98/0.95  --share_sel_clauses                     true
% 0.98/0.95  --reset_solvers                         false
% 0.98/0.95  --bc_imp_inh                            [conj_cone]
% 0.98/0.95  --conj_cone_tolerance                   3.
% 0.98/0.95  --extra_neg_conj                        none
% 0.98/0.95  --large_theory_mode                     true
% 0.98/0.95  --prolific_symb_bound                   200
% 0.98/0.95  --lt_threshold                          2000
% 0.98/0.95  --clause_weak_htbl                      true
% 0.98/0.95  --gc_record_bc_elim                     false
% 0.98/0.95  
% 0.98/0.95  ------ Preprocessing Options
% 0.98/0.95  
% 0.98/0.95  --preprocessing_flag                    true
% 0.98/0.95  --time_out_prep_mult                    0.1
% 0.98/0.95  --splitting_mode                        input
% 0.98/0.95  --splitting_grd                         true
% 0.98/0.95  --splitting_cvd                         false
% 0.98/0.95  --splitting_cvd_svl                     false
% 0.98/0.95  --splitting_nvd                         32
% 0.98/0.95  --sub_typing                            true
% 0.98/0.95  --prep_gs_sim                           true
% 0.98/0.95  --prep_unflatten                        true
% 0.98/0.95  --prep_res_sim                          true
% 0.98/0.95  --prep_upred                            true
% 0.98/0.95  --prep_sem_filter                       exhaustive
% 0.98/0.95  --prep_sem_filter_out                   false
% 0.98/0.95  --pred_elim                             true
% 0.98/0.95  --res_sim_input                         true
% 0.98/0.95  --eq_ax_congr_red                       true
% 0.98/0.95  --pure_diseq_elim                       true
% 0.98/0.95  --brand_transform                       false
% 0.98/0.95  --non_eq_to_eq                          false
% 0.98/0.95  --prep_def_merge                        true
% 0.98/0.95  --prep_def_merge_prop_impl              false
% 0.98/0.95  --prep_def_merge_mbd                    true
% 0.98/0.95  --prep_def_merge_tr_red                 false
% 0.98/0.95  --prep_def_merge_tr_cl                  false
% 0.98/0.95  --smt_preprocessing                     true
% 0.98/0.95  --smt_ac_axioms                         fast
% 0.98/0.95  --preprocessed_out                      false
% 0.98/0.95  --preprocessed_stats                    false
% 0.98/0.95  
% 0.98/0.95  ------ Abstraction refinement Options
% 0.98/0.95  
% 0.98/0.95  --abstr_ref                             []
% 0.98/0.95  --abstr_ref_prep                        false
% 0.98/0.95  --abstr_ref_until_sat                   false
% 0.98/0.95  --abstr_ref_sig_restrict                funpre
% 0.98/0.95  --abstr_ref_af_restrict_to_split_sk     false
% 0.98/0.95  --abstr_ref_under                       []
% 0.98/0.95  
% 0.98/0.95  ------ SAT Options
% 0.98/0.95  
% 0.98/0.95  --sat_mode                              false
% 0.98/0.95  --sat_fm_restart_options                ""
% 0.98/0.95  --sat_gr_def                            false
% 0.98/0.95  --sat_epr_types                         true
% 0.98/0.95  --sat_non_cyclic_types                  false
% 0.98/0.95  --sat_finite_models                     false
% 0.98/0.95  --sat_fm_lemmas                         false
% 0.98/0.95  --sat_fm_prep                           false
% 0.98/0.95  --sat_fm_uc_incr                        true
% 0.98/0.95  --sat_out_model                         small
% 0.98/0.95  --sat_out_clauses                       false
% 0.98/0.95  
% 0.98/0.95  ------ QBF Options
% 0.98/0.95  
% 0.98/0.95  --qbf_mode                              false
% 0.98/0.95  --qbf_elim_univ                         false
% 0.98/0.95  --qbf_dom_inst                          none
% 0.98/0.95  --qbf_dom_pre_inst                      false
% 0.98/0.95  --qbf_sk_in                             false
% 0.98/0.95  --qbf_pred_elim                         true
% 0.98/0.95  --qbf_split                             512
% 0.98/0.95  
% 0.98/0.95  ------ BMC1 Options
% 0.98/0.95  
% 0.98/0.95  --bmc1_incremental                      false
% 0.98/0.95  --bmc1_axioms                           reachable_all
% 0.98/0.95  --bmc1_min_bound                        0
% 0.98/0.95  --bmc1_max_bound                        -1
% 0.98/0.95  --bmc1_max_bound_default                -1
% 0.98/0.95  --bmc1_symbol_reachability              true
% 0.98/0.95  --bmc1_property_lemmas                  false
% 0.98/0.95  --bmc1_k_induction                      false
% 0.98/0.95  --bmc1_non_equiv_states                 false
% 0.98/0.95  --bmc1_deadlock                         false
% 0.98/0.95  --bmc1_ucm                              false
% 0.98/0.95  --bmc1_add_unsat_core                   none
% 0.98/0.95  --bmc1_unsat_core_children              false
% 0.98/0.95  --bmc1_unsat_core_extrapolate_axioms    false
% 0.98/0.95  --bmc1_out_stat                         full
% 0.98/0.95  --bmc1_ground_init                      false
% 0.98/0.95  --bmc1_pre_inst_next_state              false
% 0.98/0.95  --bmc1_pre_inst_state                   false
% 0.98/0.95  --bmc1_pre_inst_reach_state             false
% 0.98/0.95  --bmc1_out_unsat_core                   false
% 0.98/0.95  --bmc1_aig_witness_out                  false
% 0.98/0.95  --bmc1_verbose                          false
% 0.98/0.95  --bmc1_dump_clauses_tptp                false
% 0.98/0.95  --bmc1_dump_unsat_core_tptp             false
% 0.98/0.95  --bmc1_dump_file                        -
% 0.98/0.95  --bmc1_ucm_expand_uc_limit              128
% 0.98/0.95  --bmc1_ucm_n_expand_iterations          6
% 0.98/0.95  --bmc1_ucm_extend_mode                  1
% 0.98/0.95  --bmc1_ucm_init_mode                    2
% 0.98/0.95  --bmc1_ucm_cone_mode                    none
% 0.98/0.95  --bmc1_ucm_reduced_relation_type        0
% 0.98/0.95  --bmc1_ucm_relax_model                  4
% 0.98/0.95  --bmc1_ucm_full_tr_after_sat            true
% 0.98/0.95  --bmc1_ucm_expand_neg_assumptions       false
% 0.98/0.95  --bmc1_ucm_layered_model                none
% 0.98/0.95  --bmc1_ucm_max_lemma_size               10
% 0.98/0.95  
% 0.98/0.95  ------ AIG Options
% 0.98/0.95  
% 0.98/0.95  --aig_mode                              false
% 0.98/0.95  
% 0.98/0.95  ------ Instantiation Options
% 0.98/0.95  
% 0.98/0.95  --instantiation_flag                    true
% 0.98/0.95  --inst_sos_flag                         false
% 0.98/0.95  --inst_sos_phase                        true
% 0.98/0.95  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.98/0.95  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.98/0.95  --inst_lit_sel_side                     num_symb
% 0.98/0.95  --inst_solver_per_active                1400
% 0.98/0.95  --inst_solver_calls_frac                1.
% 0.98/0.95  --inst_passive_queue_type               priority_queues
% 0.98/0.95  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.98/0.95  --inst_passive_queues_freq              [25;2]
% 0.98/0.95  --inst_dismatching                      true
% 0.98/0.95  --inst_eager_unprocessed_to_passive     true
% 0.98/0.95  --inst_prop_sim_given                   true
% 0.98/0.95  --inst_prop_sim_new                     false
% 0.98/0.95  --inst_subs_new                         false
% 0.98/0.95  --inst_eq_res_simp                      false
% 0.98/0.95  --inst_subs_given                       false
% 0.98/0.95  --inst_orphan_elimination               true
% 0.98/0.95  --inst_learning_loop_flag               true
% 0.98/0.95  --inst_learning_start                   3000
% 0.98/0.95  --inst_learning_factor                  2
% 0.98/0.95  --inst_start_prop_sim_after_learn       3
% 0.98/0.95  --inst_sel_renew                        solver
% 0.98/0.95  --inst_lit_activity_flag                true
% 0.98/0.95  --inst_restr_to_given                   false
% 0.98/0.95  --inst_activity_threshold               500
% 0.98/0.95  --inst_out_proof                        true
% 0.98/0.95  
% 0.98/0.95  ------ Resolution Options
% 0.98/0.95  
% 0.98/0.95  --resolution_flag                       true
% 0.98/0.95  --res_lit_sel                           adaptive
% 0.98/0.95  --res_lit_sel_side                      none
% 0.98/0.95  --res_ordering                          kbo
% 0.98/0.95  --res_to_prop_solver                    active
% 0.98/0.95  --res_prop_simpl_new                    false
% 0.98/0.95  --res_prop_simpl_given                  true
% 0.98/0.95  --res_passive_queue_type                priority_queues
% 0.98/0.95  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.98/0.95  --res_passive_queues_freq               [15;5]
% 0.98/0.95  --res_forward_subs                      full
% 0.98/0.95  --res_backward_subs                     full
% 0.98/0.95  --res_forward_subs_resolution           true
% 0.98/0.95  --res_backward_subs_resolution          true
% 0.98/0.95  --res_orphan_elimination                true
% 0.98/0.95  --res_time_limit                        2.
% 0.98/0.95  --res_out_proof                         true
% 0.98/0.95  
% 0.98/0.95  ------ Superposition Options
% 0.98/0.95  
% 0.98/0.95  --superposition_flag                    true
% 0.98/0.95  --sup_passive_queue_type                priority_queues
% 0.98/0.95  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.98/0.95  --sup_passive_queues_freq               [8;1;4]
% 0.98/0.95  --demod_completeness_check              fast
% 0.98/0.95  --demod_use_ground                      true
% 0.98/0.95  --sup_to_prop_solver                    passive
% 0.98/0.95  --sup_prop_simpl_new                    true
% 0.98/0.95  --sup_prop_simpl_given                  true
% 0.98/0.95  --sup_fun_splitting                     false
% 0.98/0.95  --sup_smt_interval                      50000
% 0.98/0.95  
% 0.98/0.95  ------ Superposition Simplification Setup
% 0.98/0.95  
% 0.98/0.95  --sup_indices_passive                   []
% 0.98/0.95  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.98/0.95  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.98/0.95  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.98/0.95  --sup_full_triv                         [TrivRules;PropSubs]
% 0.98/0.95  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.98/0.95  --sup_full_bw                           [BwDemod]
% 0.98/0.95  --sup_immed_triv                        [TrivRules]
% 0.98/0.95  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/0.95  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.98/0.95  --sup_immed_bw_main                     []
% 0.98/0.95  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.98/0.95  --sup_input_triv                        [Unflattening;TrivRules]
% 0.98/0.95  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.98/0.95  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.98/0.95  
% 0.98/0.95  ------ Combination Options
% 0.98/0.95  
% 0.98/0.95  --comb_res_mult                         3
% 0.98/0.95  --comb_sup_mult                         2
% 0.98/0.95  --comb_inst_mult                        10
% 0.98/0.95  
% 0.98/0.95  ------ Debug Options
% 0.98/0.95  
% 0.98/0.95  --dbg_backtrace                         false
% 0.98/0.95  --dbg_dump_prop_clauses                 false
% 0.98/0.95  --dbg_dump_prop_clauses_file            -
% 0.98/0.95  --dbg_out_stat                          false
% 0.98/0.95  ------ Parsing...
% 0.98/0.95  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.98/0.95  
% 0.98/0.95  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 0.98/0.95  
% 0.98/0.95  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.98/0.95  
% 0.98/0.95  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.98/0.95  ------ Proving...
% 0.98/0.95  ------ Problem Properties 
% 0.98/0.95  
% 0.98/0.95  
% 0.98/0.95  clauses                                 10
% 0.98/0.95  conjectures                             3
% 0.98/0.95  EPR                                     5
% 0.98/0.95  Horn                                    8
% 0.98/0.95  unary                                   3
% 0.98/0.95  binary                                  4
% 0.98/0.95  lits                                    22
% 0.98/0.95  lits eq                                 5
% 0.98/0.95  fd_pure                                 0
% 0.98/0.95  fd_pseudo                               0
% 0.98/0.95  fd_cond                                 0
% 0.98/0.95  fd_pseudo_cond                          1
% 0.98/0.95  AC symbols                              0
% 0.98/0.95  
% 0.98/0.95  ------ Schedule dynamic 5 is on 
% 0.98/0.95  
% 0.98/0.95  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.98/0.95  
% 0.98/0.95  
% 0.98/0.95  ------ 
% 0.98/0.95  Current options:
% 0.98/0.95  ------ 
% 0.98/0.95  
% 0.98/0.95  ------ Input Options
% 0.98/0.95  
% 0.98/0.95  --out_options                           all
% 0.98/0.95  --tptp_safe_out                         true
% 0.98/0.95  --problem_path                          ""
% 0.98/0.95  --include_path                          ""
% 0.98/0.95  --clausifier                            res/vclausify_rel
% 0.98/0.95  --clausifier_options                    --mode clausify
% 0.98/0.95  --stdin                                 false
% 0.98/0.95  --stats_out                             all
% 0.98/0.95  
% 0.98/0.95  ------ General Options
% 0.98/0.95  
% 0.98/0.95  --fof                                   false
% 0.98/0.95  --time_out_real                         305.
% 0.98/0.95  --time_out_virtual                      -1.
% 0.98/0.95  --symbol_type_check                     false
% 0.98/0.95  --clausify_out                          false
% 0.98/0.95  --sig_cnt_out                           false
% 0.98/0.95  --trig_cnt_out                          false
% 0.98/0.95  --trig_cnt_out_tolerance                1.
% 0.98/0.95  --trig_cnt_out_sk_spl                   false
% 0.98/0.95  --abstr_cl_out                          false
% 0.98/0.95  
% 0.98/0.95  ------ Global Options
% 0.98/0.95  
% 0.98/0.95  --schedule                              default
% 0.98/0.95  --add_important_lit                     false
% 0.98/0.95  --prop_solver_per_cl                    1000
% 0.98/0.95  --min_unsat_core                        false
% 0.98/0.95  --soft_assumptions                      false
% 0.98/0.95  --soft_lemma_size                       3
% 0.98/0.95  --prop_impl_unit_size                   0
% 0.98/0.95  --prop_impl_unit                        []
% 0.98/0.95  --share_sel_clauses                     true
% 0.98/0.95  --reset_solvers                         false
% 0.98/0.95  --bc_imp_inh                            [conj_cone]
% 0.98/0.95  --conj_cone_tolerance                   3.
% 0.98/0.95  --extra_neg_conj                        none
% 0.98/0.95  --large_theory_mode                     true
% 0.98/0.95  --prolific_symb_bound                   200
% 0.98/0.95  --lt_threshold                          2000
% 0.98/0.95  --clause_weak_htbl                      true
% 0.98/0.95  --gc_record_bc_elim                     false
% 0.98/0.95  
% 0.98/0.95  ------ Preprocessing Options
% 0.98/0.95  
% 0.98/0.95  --preprocessing_flag                    true
% 0.98/0.95  --time_out_prep_mult                    0.1
% 0.98/0.95  --splitting_mode                        input
% 0.98/0.95  --splitting_grd                         true
% 0.98/0.95  --splitting_cvd                         false
% 0.98/0.95  --splitting_cvd_svl                     false
% 0.98/0.95  --splitting_nvd                         32
% 0.98/0.95  --sub_typing                            true
% 0.98/0.95  --prep_gs_sim                           true
% 0.98/0.95  --prep_unflatten                        true
% 0.98/0.95  --prep_res_sim                          true
% 0.98/0.95  --prep_upred                            true
% 0.98/0.95  --prep_sem_filter                       exhaustive
% 0.98/0.95  --prep_sem_filter_out                   false
% 0.98/0.95  --pred_elim                             true
% 0.98/0.95  --res_sim_input                         true
% 0.98/0.95  --eq_ax_congr_red                       true
% 0.98/0.95  --pure_diseq_elim                       true
% 0.98/0.95  --brand_transform                       false
% 0.98/0.95  --non_eq_to_eq                          false
% 0.98/0.95  --prep_def_merge                        true
% 0.98/0.95  --prep_def_merge_prop_impl              false
% 0.98/0.95  --prep_def_merge_mbd                    true
% 0.98/0.95  --prep_def_merge_tr_red                 false
% 0.98/0.95  --prep_def_merge_tr_cl                  false
% 0.98/0.95  --smt_preprocessing                     true
% 0.98/0.95  --smt_ac_axioms                         fast
% 0.98/0.95  --preprocessed_out                      false
% 0.98/0.95  --preprocessed_stats                    false
% 0.98/0.95  
% 0.98/0.95  ------ Abstraction refinement Options
% 0.98/0.95  
% 0.98/0.95  --abstr_ref                             []
% 0.98/0.95  --abstr_ref_prep                        false
% 0.98/0.95  --abstr_ref_until_sat                   false
% 0.98/0.95  --abstr_ref_sig_restrict                funpre
% 0.98/0.95  --abstr_ref_af_restrict_to_split_sk     false
% 0.98/0.95  --abstr_ref_under                       []
% 0.98/0.95  
% 0.98/0.95  ------ SAT Options
% 0.98/0.95  
% 0.98/0.95  --sat_mode                              false
% 0.98/0.95  --sat_fm_restart_options                ""
% 0.98/0.95  --sat_gr_def                            false
% 0.98/0.95  --sat_epr_types                         true
% 0.98/0.95  --sat_non_cyclic_types                  false
% 0.98/0.95  --sat_finite_models                     false
% 0.98/0.95  --sat_fm_lemmas                         false
% 0.98/0.95  --sat_fm_prep                           false
% 0.98/0.95  --sat_fm_uc_incr                        true
% 0.98/0.95  --sat_out_model                         small
% 0.98/0.95  --sat_out_clauses                       false
% 0.98/0.95  
% 0.98/0.95  ------ QBF Options
% 0.98/0.95  
% 0.98/0.95  --qbf_mode                              false
% 0.98/0.95  --qbf_elim_univ                         false
% 0.98/0.95  --qbf_dom_inst                          none
% 0.98/0.95  --qbf_dom_pre_inst                      false
% 0.98/0.95  --qbf_sk_in                             false
% 0.98/0.95  --qbf_pred_elim                         true
% 0.98/0.95  --qbf_split                             512
% 0.98/0.95  
% 0.98/0.95  ------ BMC1 Options
% 0.98/0.95  
% 0.98/0.95  --bmc1_incremental                      false
% 0.98/0.95  --bmc1_axioms                           reachable_all
% 0.98/0.95  --bmc1_min_bound                        0
% 0.98/0.95  --bmc1_max_bound                        -1
% 0.98/0.95  --bmc1_max_bound_default                -1
% 0.98/0.95  --bmc1_symbol_reachability              true
% 0.98/0.95  --bmc1_property_lemmas                  false
% 0.98/0.95  --bmc1_k_induction                      false
% 0.98/0.95  --bmc1_non_equiv_states                 false
% 0.98/0.95  --bmc1_deadlock                         false
% 0.98/0.95  --bmc1_ucm                              false
% 0.98/0.95  --bmc1_add_unsat_core                   none
% 0.98/0.95  --bmc1_unsat_core_children              false
% 0.98/0.95  --bmc1_unsat_core_extrapolate_axioms    false
% 0.98/0.95  --bmc1_out_stat                         full
% 0.98/0.95  --bmc1_ground_init                      false
% 0.98/0.95  --bmc1_pre_inst_next_state              false
% 0.98/0.95  --bmc1_pre_inst_state                   false
% 0.98/0.95  --bmc1_pre_inst_reach_state             false
% 0.98/0.95  --bmc1_out_unsat_core                   false
% 0.98/0.95  --bmc1_aig_witness_out                  false
% 0.98/0.95  --bmc1_verbose                          false
% 0.98/0.95  --bmc1_dump_clauses_tptp                false
% 0.98/0.95  --bmc1_dump_unsat_core_tptp             false
% 0.98/0.95  --bmc1_dump_file                        -
% 0.98/0.95  --bmc1_ucm_expand_uc_limit              128
% 0.98/0.95  --bmc1_ucm_n_expand_iterations          6
% 0.98/0.95  --bmc1_ucm_extend_mode                  1
% 0.98/0.95  --bmc1_ucm_init_mode                    2
% 0.98/0.95  --bmc1_ucm_cone_mode                    none
% 0.98/0.95  --bmc1_ucm_reduced_relation_type        0
% 0.98/0.95  --bmc1_ucm_relax_model                  4
% 0.98/0.95  --bmc1_ucm_full_tr_after_sat            true
% 0.98/0.95  --bmc1_ucm_expand_neg_assumptions       false
% 0.98/0.95  --bmc1_ucm_layered_model                none
% 0.98/0.95  --bmc1_ucm_max_lemma_size               10
% 0.98/0.95  
% 0.98/0.95  ------ AIG Options
% 0.98/0.95  
% 0.98/0.95  --aig_mode                              false
% 0.98/0.95  
% 0.98/0.95  ------ Instantiation Options
% 0.98/0.95  
% 0.98/0.95  --instantiation_flag                    true
% 0.98/0.95  --inst_sos_flag                         false
% 0.98/0.95  --inst_sos_phase                        true
% 0.98/0.95  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.98/0.95  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.98/0.95  --inst_lit_sel_side                     none
% 0.98/0.95  --inst_solver_per_active                1400
% 0.98/0.95  --inst_solver_calls_frac                1.
% 0.98/0.95  --inst_passive_queue_type               priority_queues
% 0.98/0.95  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.98/0.95  --inst_passive_queues_freq              [25;2]
% 0.98/0.95  --inst_dismatching                      true
% 0.98/0.95  --inst_eager_unprocessed_to_passive     true
% 0.98/0.95  --inst_prop_sim_given                   true
% 0.98/0.95  --inst_prop_sim_new                     false
% 0.98/0.95  --inst_subs_new                         false
% 0.98/0.95  --inst_eq_res_simp                      false
% 0.98/0.95  --inst_subs_given                       false
% 0.98/0.95  --inst_orphan_elimination               true
% 0.98/0.95  --inst_learning_loop_flag               true
% 0.98/0.95  --inst_learning_start                   3000
% 0.98/0.95  --inst_learning_factor                  2
% 0.98/0.95  --inst_start_prop_sim_after_learn       3
% 0.98/0.95  --inst_sel_renew                        solver
% 0.98/0.95  --inst_lit_activity_flag                true
% 0.98/0.95  --inst_restr_to_given                   false
% 0.98/0.95  --inst_activity_threshold               500
% 0.98/0.95  --inst_out_proof                        true
% 0.98/0.95  
% 0.98/0.95  ------ Resolution Options
% 0.98/0.95  
% 0.98/0.95  --resolution_flag                       false
% 0.98/0.95  --res_lit_sel                           adaptive
% 0.98/0.95  --res_lit_sel_side                      none
% 0.98/0.95  --res_ordering                          kbo
% 0.98/0.95  --res_to_prop_solver                    active
% 0.98/0.95  --res_prop_simpl_new                    false
% 0.98/0.95  --res_prop_simpl_given                  true
% 0.98/0.95  --res_passive_queue_type                priority_queues
% 0.98/0.95  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.98/0.95  --res_passive_queues_freq               [15;5]
% 0.98/0.95  --res_forward_subs                      full
% 0.98/0.95  --res_backward_subs                     full
% 0.98/0.95  --res_forward_subs_resolution           true
% 0.98/0.95  --res_backward_subs_resolution          true
% 0.98/0.95  --res_orphan_elimination                true
% 0.98/0.95  --res_time_limit                        2.
% 0.98/0.95  --res_out_proof                         true
% 0.98/0.95  
% 0.98/0.95  ------ Superposition Options
% 0.98/0.95  
% 0.98/0.95  --superposition_flag                    true
% 0.98/0.95  --sup_passive_queue_type                priority_queues
% 0.98/0.95  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.98/0.95  --sup_passive_queues_freq               [8;1;4]
% 0.98/0.95  --demod_completeness_check              fast
% 0.98/0.95  --demod_use_ground                      true
% 0.98/0.95  --sup_to_prop_solver                    passive
% 0.98/0.95  --sup_prop_simpl_new                    true
% 0.98/0.95  --sup_prop_simpl_given                  true
% 0.98/0.95  --sup_fun_splitting                     false
% 0.98/0.95  --sup_smt_interval                      50000
% 0.98/0.95  
% 0.98/0.95  ------ Superposition Simplification Setup
% 0.98/0.95  
% 0.98/0.95  --sup_indices_passive                   []
% 0.98/0.95  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.98/0.95  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.98/0.95  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.98/0.95  --sup_full_triv                         [TrivRules;PropSubs]
% 0.98/0.95  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.98/0.95  --sup_full_bw                           [BwDemod]
% 0.98/0.95  --sup_immed_triv                        [TrivRules]
% 0.98/0.95  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/0.95  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.98/0.95  --sup_immed_bw_main                     []
% 0.98/0.95  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.98/0.95  --sup_input_triv                        [Unflattening;TrivRules]
% 0.98/0.95  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.98/0.95  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.98/0.95  
% 0.98/0.95  ------ Combination Options
% 0.98/0.95  
% 0.98/0.95  --comb_res_mult                         3
% 0.98/0.95  --comb_sup_mult                         2
% 0.98/0.95  --comb_inst_mult                        10
% 0.98/0.95  
% 0.98/0.95  ------ Debug Options
% 0.98/0.95  
% 0.98/0.95  --dbg_backtrace                         false
% 0.98/0.95  --dbg_dump_prop_clauses                 false
% 0.98/0.95  --dbg_dump_prop_clauses_file            -
% 0.98/0.95  --dbg_out_stat                          false
% 0.98/0.95  
% 0.98/0.95  
% 0.98/0.95  
% 0.98/0.95  
% 0.98/0.95  ------ Proving...
% 0.98/0.95  
% 0.98/0.95  
% 0.98/0.95  % SZS status Theorem for theBenchmark.p
% 0.98/0.95  
% 0.98/0.95  % SZS output start CNFRefutation for theBenchmark.p
% 0.98/0.95  
% 0.98/0.95  fof(f7,conjecture,(
% 0.98/0.95    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f8,negated_conjecture,(
% 0.98/0.95    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 0.98/0.95    inference(negated_conjecture,[],[f7])).
% 0.98/0.95  
% 0.98/0.95  fof(f18,plain,(
% 0.98/0.95    ? [X0,X1,X2] : (? [X3] : (((~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1)) & r1_partfun1(X2,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 0.98/0.95    inference(ennf_transformation,[],[f8])).
% 0.98/0.95  
% 0.98/0.95  fof(f19,plain,(
% 0.98/0.95    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 0.98/0.95    inference(flattening,[],[f18])).
% 0.98/0.95  
% 0.98/0.95  fof(f22,plain,(
% 0.98/0.95    ( ! [X2,X0,X1] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (~r2_relset_1(X0,X1,X2,sK3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(sK3,X0,X1) & v1_funct_1(sK3))) )),
% 0.98/0.95    introduced(choice_axiom,[])).
% 0.98/0.95  
% 0.98/0.95  fof(f21,plain,(
% 0.98/0.95    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (~r2_relset_1(sK0,sK1,sK2,X3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(X3,sK0,sK1) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 0.98/0.95    introduced(choice_axiom,[])).
% 0.98/0.95  
% 0.98/0.95  fof(f23,plain,(
% 0.98/0.95    (~r2_relset_1(sK0,sK1,sK2,sK3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 0.98/0.95    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f22,f21])).
% 0.98/0.95  
% 0.98/0.95  fof(f37,plain,(
% 0.98/0.95    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f3,axiom,(
% 0.98/0.95    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_xboole_0(X1)))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f11,plain,(
% 0.98/0.95    ! [X0] : (! [X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 0.98/0.95    inference(ennf_transformation,[],[f3])).
% 0.98/0.95  
% 0.98/0.95  fof(f26,plain,(
% 0.98/0.95    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 0.98/0.95    inference(cnf_transformation,[],[f11])).
% 0.98/0.95  
% 0.98/0.95  fof(f4,axiom,(
% 0.98/0.95    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f12,plain,(
% 0.98/0.95    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 0.98/0.95    inference(ennf_transformation,[],[f4])).
% 0.98/0.95  
% 0.98/0.95  fof(f13,plain,(
% 0.98/0.95    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.98/0.95    inference(flattening,[],[f12])).
% 0.98/0.95  
% 0.98/0.95  fof(f20,plain,(
% 0.98/0.95    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.98/0.95    inference(nnf_transformation,[],[f13])).
% 0.98/0.95  
% 0.98/0.95  fof(f28,plain,(
% 0.98/0.95    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.98/0.95    inference(cnf_transformation,[],[f20])).
% 0.98/0.95  
% 0.98/0.95  fof(f41,plain,(
% 0.98/0.95    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.98/0.95    inference(equality_resolution,[],[f28])).
% 0.98/0.95  
% 0.98/0.95  fof(f40,plain,(
% 0.98/0.95    ~r2_relset_1(sK0,sK1,sK2,sK3)),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f1,axiom,(
% 0.98/0.95    ! [X0,X1] : ~(v1_xboole_0(X1) & X0 != X1 & v1_xboole_0(X0))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f9,plain,(
% 0.98/0.95    ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0))),
% 0.98/0.95    inference(ennf_transformation,[],[f1])).
% 0.98/0.95  
% 0.98/0.95  fof(f24,plain,(
% 0.98/0.95    ( ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0)) )),
% 0.98/0.95    inference(cnf_transformation,[],[f9])).
% 0.98/0.95  
% 0.98/0.95  fof(f34,plain,(
% 0.98/0.95    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f6,axiom,(
% 0.98/0.95    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ((r1_partfun1(X2,X3) & v1_partfun1(X3,X0) & v1_partfun1(X2,X0)) => X2 = X3)))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f16,plain,(
% 0.98/0.95    ! [X0,X1,X2] : (! [X3] : ((X2 = X3 | (~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 0.98/0.95    inference(ennf_transformation,[],[f6])).
% 0.98/0.95  
% 0.98/0.95  fof(f17,plain,(
% 0.98/0.95    ! [X0,X1,X2] : (! [X3] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 0.98/0.95    inference(flattening,[],[f16])).
% 0.98/0.95  
% 0.98/0.95  fof(f31,plain,(
% 0.98/0.95    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 0.98/0.95    inference(cnf_transformation,[],[f17])).
% 0.98/0.95  
% 0.98/0.95  fof(f38,plain,(
% 0.98/0.95    r1_partfun1(sK2,sK3)),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f32,plain,(
% 0.98/0.95    v1_funct_1(sK2)),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f35,plain,(
% 0.98/0.95    v1_funct_1(sK3)),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f2,axiom,(
% 0.98/0.95    ! [X0,X1] : (v1_xboole_0(X1) => v1_xboole_0(k2_zfmisc_1(X0,X1)))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f10,plain,(
% 0.98/0.95    ! [X0,X1] : (v1_xboole_0(k2_zfmisc_1(X0,X1)) | ~v1_xboole_0(X1))),
% 0.98/0.95    inference(ennf_transformation,[],[f2])).
% 0.98/0.95  
% 0.98/0.95  fof(f25,plain,(
% 0.98/0.95    ( ! [X0,X1] : (v1_xboole_0(k2_zfmisc_1(X0,X1)) | ~v1_xboole_0(X1)) )),
% 0.98/0.95    inference(cnf_transformation,[],[f10])).
% 0.98/0.95  
% 0.98/0.95  fof(f5,axiom,(
% 0.98/0.95    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 0.98/0.95    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/0.95  
% 0.98/0.95  fof(f14,plain,(
% 0.98/0.95    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 0.98/0.95    inference(ennf_transformation,[],[f5])).
% 0.98/0.95  
% 0.98/0.95  fof(f15,plain,(
% 0.98/0.95    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 0.98/0.95    inference(flattening,[],[f14])).
% 0.98/0.95  
% 0.98/0.95  fof(f30,plain,(
% 0.98/0.95    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 0.98/0.95    inference(cnf_transformation,[],[f15])).
% 0.98/0.95  
% 0.98/0.95  fof(f33,plain,(
% 0.98/0.95    v1_funct_2(sK2,sK0,sK1)),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  fof(f36,plain,(
% 0.98/0.95    v1_funct_2(sK3,sK0,sK1)),
% 0.98/0.95    inference(cnf_transformation,[],[f23])).
% 0.98/0.95  
% 0.98/0.95  cnf(c_315,plain,
% 0.98/0.95      ( X0_42 != X1_42 | X2_42 != X1_42 | X2_42 = X0_42 ),
% 0.98/0.95      theory(equality) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_571,plain,
% 0.98/0.95      ( sK3 != X0_42 | sK2 != X0_42 | sK2 = sK3 ),
% 0.98/0.95      inference(instantiation,[status(thm)],[c_315]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_915,plain,
% 0.98/0.95      ( sK3 != sK2 | sK2 = sK3 | sK2 != sK2 ),
% 0.98/0.95      inference(instantiation,[status(thm)],[c_571]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_11,negated_conjecture,
% 0.98/0.95      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 0.98/0.95      inference(cnf_transformation,[],[f37]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_307,negated_conjecture,
% 0.98/0.95      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 0.98/0.95      inference(subtyping,[status(esa)],[c_11]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_491,plain,
% 0.98/0.95      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 0.98/0.95      inference(predicate_to_equality,[status(thm)],[c_307]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_2,plain,
% 0.98/0.95      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.98/0.95      | ~ v1_xboole_0(X1)
% 0.98/0.95      | v1_xboole_0(X0) ),
% 0.98/0.95      inference(cnf_transformation,[],[f26]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_309,plain,
% 0.98/0.95      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
% 0.98/0.95      | ~ v1_xboole_0(X1_42)
% 0.98/0.95      | v1_xboole_0(X0_42) ),
% 0.98/0.95      inference(subtyping,[status(esa)],[c_2]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_490,plain,
% 0.98/0.95      ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42)) != iProver_top
% 0.98/0.95      | v1_xboole_0(X1_42) != iProver_top
% 0.98/0.95      | v1_xboole_0(X0_42) = iProver_top ),
% 0.98/0.95      inference(predicate_to_equality,[status(thm)],[c_309]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_894,plain,
% 0.98/0.95      ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 0.98/0.95      | v1_xboole_0(sK3) = iProver_top ),
% 0.98/0.95      inference(superposition,[status(thm)],[c_491,c_490]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_3,plain,
% 0.98/0.95      ( r2_relset_1(X0,X1,X2,X2)
% 0.98/0.95      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 0.98/0.95      inference(cnf_transformation,[],[f41]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_8,negated_conjecture,
% 0.98/0.95      ( ~ r2_relset_1(sK0,sK1,sK2,sK3) ),
% 0.98/0.95      inference(cnf_transformation,[],[f40]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_167,plain,
% 0.98/0.95      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.98/0.95      | sK3 != X0
% 0.98/0.95      | sK2 != X0
% 0.98/0.95      | sK1 != X2
% 0.98/0.95      | sK0 != X1 ),
% 0.98/0.95      inference(resolution_lifted,[status(thm)],[c_3,c_8]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_168,plain,
% 0.98/0.95      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 0.98/0.95      | sK2 != sK3 ),
% 0.98/0.95      inference(unflattening,[status(thm)],[c_167]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_170,plain,
% 0.98/0.95      ( sK2 != sK3 ),
% 0.98/0.95      inference(global_propositional_subsumption,
% 0.98/0.95                [status(thm)],
% 0.98/0.95                [c_168,c_11]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_305,plain,
% 0.98/0.95      ( sK2 != sK3 ),
% 0.98/0.95      inference(subtyping,[status(esa)],[c_170]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_0,plain,
% 0.98/0.95      ( ~ v1_xboole_0(X0) | ~ v1_xboole_0(X1) | X1 = X0 ),
% 0.98/0.95      inference(cnf_transformation,[],[f24]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_311,plain,
% 0.98/0.95      ( ~ v1_xboole_0(X0_42) | ~ v1_xboole_0(X1_42) | X1_42 = X0_42 ),
% 0.98/0.95      inference(subtyping,[status(esa)],[c_0]) ).
% 0.98/0.95  
% 0.98/0.95  cnf(c_565,plain,
% 0.98/0.95      ( ~ v1_xboole_0(sK3) | ~ v1_xboole_0(sK2) | sK2 = sK3 ),
% 0.98/0.96      inference(instantiation,[status(thm)],[c_311]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_566,plain,
% 0.98/0.96      ( sK2 = sK3
% 0.98/0.96      | v1_xboole_0(sK3) != iProver_top
% 0.98/0.96      | v1_xboole_0(sK2) != iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_565]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_14,negated_conjecture,
% 0.98/0.96      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 0.98/0.96      inference(cnf_transformation,[],[f34]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_306,negated_conjecture,
% 0.98/0.96      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 0.98/0.96      inference(subtyping,[status(esa)],[c_14]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_492,plain,
% 0.98/0.96      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_306]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_895,plain,
% 0.98/0.96      ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 0.98/0.96      | v1_xboole_0(sK2) = iProver_top ),
% 0.98/0.96      inference(superposition,[status(thm)],[c_492,c_490]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_907,plain,
% 0.98/0.96      ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top ),
% 0.98/0.96      inference(global_propositional_subsumption,
% 0.98/0.96                [status(thm)],
% 0.98/0.96                [c_894,c_305,c_566,c_895]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_7,plain,
% 0.98/0.96      ( ~ r1_partfun1(X0,X1)
% 0.98/0.96      | ~ v1_partfun1(X1,X2)
% 0.98/0.96      | ~ v1_partfun1(X0,X2)
% 0.98/0.96      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 0.98/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 0.98/0.96      | ~ v1_funct_1(X0)
% 0.98/0.96      | ~ v1_funct_1(X1)
% 0.98/0.96      | X0 = X1 ),
% 0.98/0.96      inference(cnf_transformation,[],[f31]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_10,negated_conjecture,
% 0.98/0.96      ( r1_partfun1(sK2,sK3) ),
% 0.98/0.96      inference(cnf_transformation,[],[f38]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_176,plain,
% 0.98/0.96      ( ~ v1_partfun1(X0,X1)
% 0.98/0.96      | ~ v1_partfun1(X2,X1)
% 0.98/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 0.98/0.96      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 0.98/0.96      | ~ v1_funct_1(X2)
% 0.98/0.96      | ~ v1_funct_1(X0)
% 0.98/0.96      | X0 = X2
% 0.98/0.96      | sK3 != X0
% 0.98/0.96      | sK2 != X2 ),
% 0.98/0.96      inference(resolution_lifted,[status(thm)],[c_7,c_10]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_177,plain,
% 0.98/0.96      ( ~ v1_partfun1(sK3,X0)
% 0.98/0.96      | ~ v1_partfun1(sK2,X0)
% 0.98/0.96      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 0.98/0.96      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 0.98/0.96      | ~ v1_funct_1(sK3)
% 0.98/0.96      | ~ v1_funct_1(sK2)
% 0.98/0.96      | sK3 = sK2 ),
% 0.98/0.96      inference(unflattening,[status(thm)],[c_176]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_16,negated_conjecture,
% 0.98/0.96      ( v1_funct_1(sK2) ),
% 0.98/0.96      inference(cnf_transformation,[],[f32]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_13,negated_conjecture,
% 0.98/0.96      ( v1_funct_1(sK3) ),
% 0.98/0.96      inference(cnf_transformation,[],[f35]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_181,plain,
% 0.98/0.96      ( ~ v1_partfun1(sK3,X0)
% 0.98/0.96      | ~ v1_partfun1(sK2,X0)
% 0.98/0.96      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 0.98/0.96      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 0.98/0.96      | sK3 = sK2 ),
% 0.98/0.96      inference(global_propositional_subsumption,
% 0.98/0.96                [status(thm)],
% 0.98/0.96                [c_177,c_16,c_13]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_304,plain,
% 0.98/0.96      ( ~ v1_partfun1(sK3,X0_42)
% 0.98/0.96      | ~ v1_partfun1(sK2,X0_42)
% 0.98/0.96      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42)))
% 0.98/0.96      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42)))
% 0.98/0.96      | sK3 = sK2 ),
% 0.98/0.96      inference(subtyping,[status(esa)],[c_181]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_493,plain,
% 0.98/0.96      ( sK3 = sK2
% 0.98/0.96      | v1_partfun1(sK3,X0_42) != iProver_top
% 0.98/0.96      | v1_partfun1(sK2,X0_42) != iProver_top
% 0.98/0.96      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top
% 0.98/0.96      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_304]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_682,plain,
% 0.98/0.96      ( sK3 = sK2
% 0.98/0.96      | v1_partfun1(sK3,sK0) != iProver_top
% 0.98/0.96      | v1_partfun1(sK2,sK0) != iProver_top
% 0.98/0.96      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top ),
% 0.98/0.96      inference(superposition,[status(thm)],[c_491,c_493]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_19,plain,
% 0.98/0.96      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_685,plain,
% 0.98/0.96      ( v1_partfun1(sK2,sK0) != iProver_top
% 0.98/0.96      | v1_partfun1(sK3,sK0) != iProver_top
% 0.98/0.96      | sK3 = sK2 ),
% 0.98/0.96      inference(global_propositional_subsumption,
% 0.98/0.96                [status(thm)],
% 0.98/0.96                [c_682,c_19]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_686,plain,
% 0.98/0.96      ( sK3 = sK2
% 0.98/0.96      | v1_partfun1(sK3,sK0) != iProver_top
% 0.98/0.96      | v1_partfun1(sK2,sK0) != iProver_top ),
% 0.98/0.96      inference(renaming,[status(thm)],[c_685]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_313,plain,( X0_42 = X0_42 ),theory(equality) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_647,plain,
% 0.98/0.96      ( sK2 = sK2 ),
% 0.98/0.96      inference(instantiation,[status(thm)],[c_313]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_1,plain,
% 0.98/0.96      ( ~ v1_xboole_0(X0) | v1_xboole_0(k2_zfmisc_1(X1,X0)) ),
% 0.98/0.96      inference(cnf_transformation,[],[f25]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_310,plain,
% 0.98/0.96      ( ~ v1_xboole_0(X0_42) | v1_xboole_0(k2_zfmisc_1(X1_42,X0_42)) ),
% 0.98/0.96      inference(subtyping,[status(esa)],[c_1]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_605,plain,
% 0.98/0.96      ( v1_xboole_0(k2_zfmisc_1(X0_42,sK1)) | ~ v1_xboole_0(sK1) ),
% 0.98/0.96      inference(instantiation,[status(thm)],[c_310]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_606,plain,
% 0.98/0.96      ( v1_xboole_0(k2_zfmisc_1(X0_42,sK1)) = iProver_top
% 0.98/0.96      | v1_xboole_0(sK1) != iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_605]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_608,plain,
% 0.98/0.96      ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) = iProver_top
% 0.98/0.96      | v1_xboole_0(sK1) != iProver_top ),
% 0.98/0.96      inference(instantiation,[status(thm)],[c_606]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_5,plain,
% 0.98/0.96      ( ~ v1_funct_2(X0,X1,X2)
% 0.98/0.96      | v1_partfun1(X0,X1)
% 0.98/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.98/0.96      | ~ v1_funct_1(X0)
% 0.98/0.96      | v1_xboole_0(X2) ),
% 0.98/0.96      inference(cnf_transformation,[],[f30]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_15,negated_conjecture,
% 0.98/0.96      ( v1_funct_2(sK2,sK0,sK1) ),
% 0.98/0.96      inference(cnf_transformation,[],[f33]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_223,plain,
% 0.98/0.96      ( v1_partfun1(X0,X1)
% 0.98/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.98/0.96      | ~ v1_funct_1(X0)
% 0.98/0.96      | v1_xboole_0(X2)
% 0.98/0.96      | sK2 != X0
% 0.98/0.96      | sK1 != X2
% 0.98/0.96      | sK0 != X1 ),
% 0.98/0.96      inference(resolution_lifted,[status(thm)],[c_5,c_15]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_224,plain,
% 0.98/0.96      ( v1_partfun1(sK2,sK0)
% 0.98/0.96      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 0.98/0.96      | ~ v1_funct_1(sK2)
% 0.98/0.96      | v1_xboole_0(sK1) ),
% 0.98/0.96      inference(unflattening,[status(thm)],[c_223]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_226,plain,
% 0.98/0.96      ( v1_partfun1(sK2,sK0) | v1_xboole_0(sK1) ),
% 0.98/0.96      inference(global_propositional_subsumption,
% 0.98/0.96                [status(thm)],
% 0.98/0.96                [c_224,c_16,c_14]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_228,plain,
% 0.98/0.96      ( v1_partfun1(sK2,sK0) = iProver_top
% 0.98/0.96      | v1_xboole_0(sK1) = iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_226]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_12,negated_conjecture,
% 0.98/0.96      ( v1_funct_2(sK3,sK0,sK1) ),
% 0.98/0.96      inference(cnf_transformation,[],[f36]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_209,plain,
% 0.98/0.96      ( v1_partfun1(X0,X1)
% 0.98/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.98/0.96      | ~ v1_funct_1(X0)
% 0.98/0.96      | v1_xboole_0(X2)
% 0.98/0.96      | sK3 != X0
% 0.98/0.96      | sK1 != X2
% 0.98/0.96      | sK0 != X1 ),
% 0.98/0.96      inference(resolution_lifted,[status(thm)],[c_5,c_12]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_210,plain,
% 0.98/0.96      ( v1_partfun1(sK3,sK0)
% 0.98/0.96      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 0.98/0.96      | ~ v1_funct_1(sK3)
% 0.98/0.96      | v1_xboole_0(sK1) ),
% 0.98/0.96      inference(unflattening,[status(thm)],[c_209]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_212,plain,
% 0.98/0.96      ( v1_partfun1(sK3,sK0) | v1_xboole_0(sK1) ),
% 0.98/0.96      inference(global_propositional_subsumption,
% 0.98/0.96                [status(thm)],
% 0.98/0.96                [c_210,c_13,c_11]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(c_214,plain,
% 0.98/0.96      ( v1_partfun1(sK3,sK0) = iProver_top
% 0.98/0.96      | v1_xboole_0(sK1) = iProver_top ),
% 0.98/0.96      inference(predicate_to_equality,[status(thm)],[c_212]) ).
% 0.98/0.96  
% 0.98/0.96  cnf(contradiction,plain,
% 0.98/0.96      ( $false ),
% 0.98/0.96      inference(minisat,
% 0.98/0.96                [status(thm)],
% 0.98/0.96                [c_915,c_907,c_686,c_647,c_608,c_305,c_228,c_214]) ).
% 0.98/0.96  
% 0.98/0.96  
% 0.98/0.96  % SZS output end CNFRefutation for theBenchmark.p
% 0.98/0.96  
% 0.98/0.96  ------                               Statistics
% 0.98/0.96  
% 0.98/0.96  ------ General
% 0.98/0.96  
% 0.98/0.96  abstr_ref_over_cycles:                  0
% 0.98/0.96  abstr_ref_under_cycles:                 0
% 0.98/0.96  gc_basic_clause_elim:                   0
% 0.98/0.96  forced_gc_time:                         0
% 0.98/0.96  parsing_time:                           0.01
% 0.98/0.96  unif_index_cands_time:                  0.
% 0.98/0.96  unif_index_add_time:                    0.
% 0.98/0.96  orderings_time:                         0.
% 0.98/0.96  out_proof_time:                         0.011
% 0.98/0.96  total_time:                             0.066
% 0.98/0.96  num_of_symbols:                         47
% 0.98/0.96  num_of_terms:                           854
% 0.98/0.96  
% 0.98/0.96  ------ Preprocessing
% 0.98/0.96  
% 0.98/0.96  num_of_splits:                          0
% 0.98/0.96  num_of_split_atoms:                     0
% 0.98/0.96  num_of_reused_defs:                     0
% 0.98/0.96  num_eq_ax_congr_red:                    2
% 0.98/0.96  num_of_sem_filtered_clauses:            1
% 0.98/0.96  num_of_subtypes:                        2
% 0.98/0.96  monotx_restored_types:                  1
% 0.98/0.96  sat_num_of_epr_types:                   0
% 0.98/0.96  sat_num_of_non_cyclic_types:            0
% 0.98/0.96  sat_guarded_non_collapsed_types:        0
% 0.98/0.96  num_pure_diseq_elim:                    0
% 0.98/0.96  simp_replaced_by:                       0
% 0.98/0.96  res_preprocessed:                       63
% 0.98/0.96  prep_upred:                             0
% 0.98/0.96  prep_unflattend:                        15
% 0.98/0.96  smt_new_axioms:                         0
% 0.98/0.96  pred_elim_cands:                        3
% 0.98/0.96  pred_elim:                              4
% 0.98/0.96  pred_elim_cl:                           6
% 0.98/0.96  pred_elim_cycles:                       6
% 0.98/0.96  merged_defs:                            0
% 0.98/0.96  merged_defs_ncl:                        0
% 0.98/0.96  bin_hyper_res:                          0
% 0.98/0.96  prep_cycles:                            4
% 0.98/0.96  pred_elim_time:                         0.002
% 0.98/0.96  splitting_time:                         0.
% 0.98/0.96  sem_filter_time:                        0.
% 0.98/0.96  monotx_time:                            0.
% 0.98/0.96  subtype_inf_time:                       0.001
% 0.98/0.96  
% 0.98/0.96  ------ Problem properties
% 0.98/0.96  
% 0.98/0.96  clauses:                                10
% 0.98/0.96  conjectures:                            3
% 0.98/0.96  epr:                                    5
% 0.98/0.96  horn:                                   8
% 0.98/0.96  ground:                                 6
% 0.98/0.96  unary:                                  3
% 0.98/0.96  binary:                                 4
% 0.98/0.96  lits:                                   22
% 0.98/0.96  lits_eq:                                5
% 0.98/0.96  fd_pure:                                0
% 0.98/0.96  fd_pseudo:                              0
% 0.98/0.96  fd_cond:                                0
% 0.98/0.96  fd_pseudo_cond:                         1
% 0.98/0.96  ac_symbols:                             0
% 0.98/0.96  
% 0.98/0.96  ------ Propositional Solver
% 0.98/0.96  
% 0.98/0.96  prop_solver_calls:                      26
% 0.98/0.96  prop_fast_solver_calls:                 351
% 0.98/0.96  smt_solver_calls:                       0
% 0.98/0.96  smt_fast_solver_calls:                  0
% 0.98/0.96  prop_num_of_clauses:                    296
% 0.98/0.96  prop_preprocess_simplified:             1617
% 0.98/0.96  prop_fo_subsumed:                       9
% 0.98/0.96  prop_solver_time:                       0.
% 0.98/0.96  smt_solver_time:                        0.
% 0.98/0.96  smt_fast_solver_time:                   0.
% 0.98/0.96  prop_fast_solver_time:                  0.
% 0.98/0.96  prop_unsat_core_time:                   0.
% 0.98/0.96  
% 0.98/0.96  ------ QBF
% 0.98/0.96  
% 0.98/0.96  qbf_q_res:                              0
% 0.98/0.96  qbf_num_tautologies:                    0
% 0.98/0.96  qbf_prep_cycles:                        0
% 0.98/0.96  
% 0.98/0.96  ------ BMC1
% 0.98/0.96  
% 0.98/0.96  bmc1_current_bound:                     -1
% 0.98/0.96  bmc1_last_solved_bound:                 -1
% 0.98/0.96  bmc1_unsat_core_size:                   -1
% 0.98/0.96  bmc1_unsat_core_parents_size:           -1
% 0.98/0.96  bmc1_merge_next_fun:                    0
% 0.98/0.96  bmc1_unsat_core_clauses_time:           0.
% 0.98/0.96  
% 0.98/0.96  ------ Instantiation
% 0.98/0.96  
% 0.98/0.96  inst_num_of_clauses:                    84
% 0.98/0.96  inst_num_in_passive:                    29
% 0.98/0.96  inst_num_in_active:                     50
% 0.98/0.96  inst_num_in_unprocessed:                4
% 0.98/0.96  inst_num_of_loops:                      62
% 0.98/0.96  inst_num_of_learning_restarts:          0
% 0.98/0.96  inst_num_moves_active_passive:          9
% 0.98/0.96  inst_lit_activity:                      0
% 0.98/0.96  inst_lit_activity_moves:                0
% 0.98/0.96  inst_num_tautologies:                   0
% 0.98/0.96  inst_num_prop_implied:                  0
% 0.98/0.96  inst_num_existing_simplified:           0
% 0.98/0.96  inst_num_eq_res_simplified:             0
% 0.98/0.96  inst_num_child_elim:                    0
% 0.98/0.96  inst_num_of_dismatching_blockings:      0
% 0.98/0.96  inst_num_of_non_proper_insts:           58
% 0.98/0.96  inst_num_of_duplicates:                 0
% 0.98/0.96  inst_inst_num_from_inst_to_res:         0
% 0.98/0.96  inst_dismatching_checking_time:         0.
% 0.98/0.96  
% 0.98/0.96  ------ Resolution
% 0.98/0.96  
% 0.98/0.96  res_num_of_clauses:                     0
% 0.98/0.96  res_num_in_passive:                     0
% 0.98/0.96  res_num_in_active:                      0
% 0.98/0.96  res_num_of_loops:                       67
% 0.98/0.96  res_forward_subset_subsumed:            6
% 0.98/0.96  res_backward_subset_subsumed:           0
% 0.98/0.96  res_forward_subsumed:                   0
% 0.98/0.96  res_backward_subsumed:                  0
% 0.98/0.96  res_forward_subsumption_resolution:     0
% 0.98/0.96  res_backward_subsumption_resolution:    0
% 0.98/0.96  res_clause_to_clause_subsumption:       17
% 0.98/0.96  res_orphan_elimination:                 0
% 0.98/0.96  res_tautology_del:                      10
% 0.98/0.96  res_num_eq_res_simplified:              0
% 0.98/0.96  res_num_sel_changes:                    0
% 0.98/0.96  res_moves_from_active_to_pass:          0
% 0.98/0.96  
% 0.98/0.96  ------ Superposition
% 0.98/0.96  
% 0.98/0.96  sup_time_total:                         0.
% 0.98/0.96  sup_time_generating:                    0.
% 0.98/0.96  sup_time_sim_full:                      0.
% 0.98/0.96  sup_time_sim_immed:                     0.
% 0.98/0.96  
% 0.98/0.96  sup_num_of_clauses:                     15
% 0.98/0.96  sup_num_in_active:                      12
% 0.98/0.96  sup_num_in_passive:                     3
% 0.98/0.96  sup_num_of_loops:                       12
% 0.98/0.96  sup_fw_superposition:                   5
% 0.98/0.96  sup_bw_superposition:                   1
% 0.98/0.96  sup_immediate_simplified:               0
% 0.98/0.96  sup_given_eliminated:                   0
% 0.98/0.96  comparisons_done:                       0
% 0.98/0.96  comparisons_avoided:                    0
% 0.98/0.96  
% 0.98/0.96  ------ Simplifications
% 0.98/0.96  
% 0.98/0.96  
% 0.98/0.96  sim_fw_subset_subsumed:                 0
% 0.98/0.96  sim_bw_subset_subsumed:                 1
% 0.98/0.96  sim_fw_subsumed:                        0
% 0.98/0.96  sim_bw_subsumed:                        0
% 0.98/0.96  sim_fw_subsumption_res:                 0
% 0.98/0.96  sim_bw_subsumption_res:                 0
% 0.98/0.96  sim_tautology_del:                      0
% 0.98/0.96  sim_eq_tautology_del:                   0
% 0.98/0.96  sim_eq_res_simp:                        0
% 0.98/0.96  sim_fw_demodulated:                     0
% 0.98/0.96  sim_bw_demodulated:                     0
% 0.98/0.96  sim_light_normalised:                   0
% 0.98/0.96  sim_joinable_taut:                      0
% 0.98/0.96  sim_joinable_simp:                      0
% 0.98/0.96  sim_ac_normalised:                      0
% 0.98/0.96  sim_smt_subsumption:                    0
% 0.98/0.96  
%------------------------------------------------------------------------------
