%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:03 EST 2020

% Result     : Theorem 1.03s
% Output     : CNFRefutation 1.03s
% Verified   : 
% Statistics : Number of formulae       :  104 ( 574 expanded)
%              Number of clauses        :   68 ( 194 expanded)
%              Number of leaves         :    9 ( 102 expanded)
%              Depth                    :   22
%              Number of atoms          :  326 (2421 expanded)
%              Number of equality atoms :  114 ( 483 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(k4_tarski(X3,X0),X2)
              & r2_hidden(X3,k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ? [X4] :
              ( r2_hidden(X4,X1)
              & r2_hidden(k4_tarski(X4,X0),X2)
              & r2_hidden(X4,k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(rectify,[],[f17])).

fof(f19,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X4,X0),X2)
          & r2_hidden(X4,k1_relat_1(X2)) )
     => ( r2_hidden(sK0(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
        & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ( r2_hidden(sK0(X0,X1,X2),X1)
            & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
            & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK0(X0,X1,X2),X1)
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f6,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ~ ( ! [X4] :
              ~ ( k1_funct_1(X3,X4) = X2
                & r2_hidden(X4,X0) )
          & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ~ ( k1_funct_1(X3,X4) = X2
                  & r2_hidden(X4,X0) )
            & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f8,plain,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ~ ( k1_funct_1(X3,X4) = X2
                  & r2_hidden(X4,X0) )
            & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f15,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X2
          | ~ r2_hidden(X4,X0) )
      & r2_hidden(X2,k2_relset_1(X0,X1,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f16,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X2
          | ~ r2_hidden(X4,X0) )
      & r2_hidden(X2,k2_relset_1(X0,X1,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f15])).

fof(f23,plain,
    ( ? [X0,X1,X2,X3] :
        ( ! [X4] :
            ( k1_funct_1(X3,X4) != X2
            | ~ r2_hidden(X4,X0) )
        & r2_hidden(X2,k2_relset_1(X0,X1,X3))
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X3) )
   => ( ! [X4] :
          ( k1_funct_1(sK4,X4) != sK3
          | ~ r2_hidden(X4,sK1) )
      & r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4))
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ! [X4] :
        ( k1_funct_1(sK4,X4) != sK3
        | ~ r2_hidden(X4,sK1) )
    & r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4))
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f16,f23])).

fof(f37,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f24])).

fof(f28,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ r2_hidden(X3,X1)
      | ~ r2_hidden(k4_tarski(X3,X0),X2)
      | ~ r2_hidden(X3,k1_relat_1(X2))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f10])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f21])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k1_relat_1(X2))
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f36,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f24])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f33,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f38,plain,(
    r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) ),
    inference(cnf_transformation,[],[f24])).

fof(f26,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X2,X0) = X1
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f39,plain,(
    ! [X4] :
      ( k1_funct_1(sK4,X4) != sK3
      | ~ r2_hidden(X4,sK1) ) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK0(X0,X2,X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_202,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_13])).

cnf(c_203,plain,
    ( v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_202])).

cnf(c_352,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK0(X0,X2,X1),X2)
    | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_203])).

cnf(c_353,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(sK0(X0,X1,sK4),X1)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_352])).

cnf(c_491,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(sK0(X0,X1,sK4),X1)
    | ~ sP2_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP2_iProver_split])],[c_353])).

cnf(c_839,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
    | sP2_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_491])).

cnf(c_492,plain,
    ( sP2_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_353])).

cnf(c_539,plain,
    ( sP2_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_492])).

cnf(c_540,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
    | sP2_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_491])).

cnf(c_504,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_999,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_504])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(X3,X1))
    | ~ r2_hidden(X0,k1_relat_1(X3))
    | ~ r2_hidden(k4_tarski(X0,X2),X3)
    | ~ v1_relat_1(X3) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_367,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(X3,X1))
    | ~ r2_hidden(X0,k1_relat_1(X3))
    | ~ r2_hidden(k4_tarski(X0,X2),X3)
    | k1_zfmisc_1(k2_zfmisc_1(X4,X5)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X3 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_203])).

cnf(c_368,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(sK4,X1))
    | ~ r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(k4_tarski(X0,X2),sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_367])).

cnf(c_6,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X0,X2),X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_14,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_223,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X0,X2),X1)
    | ~ v1_relat_1(X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_14])).

cnf(c_224,plain,
    ( r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | ~ v1_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_223])).

cnf(c_308,plain,
    ( r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(resolution,[status(thm)],[c_203,c_224])).

cnf(c_377,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(sK4,X1))
    | ~ r2_hidden(k4_tarski(X0,X2),sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_368,c_308])).

cnf(c_488,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_377])).

cnf(c_1000,plain,
    ( ~ sP0_iProver_split
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_488])).

cnf(c_1004,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1000])).

cnf(c_1223,plain,
    ( r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_839,c_539,c_540,c_999,c_1004])).

cnf(c_1224,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top ),
    inference(renaming,[status(thm)],[c_1223])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X1) = k2_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_175,plain,
    ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_13])).

cnf(c_176,plain,
    ( k7_relset_1(X0,X1,sK4,X0) = k2_relset_1(X0,X1,sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_175])).

cnf(c_998,plain,
    ( k7_relset_1(sK1,sK2,sK4,sK1) = k2_relset_1(sK1,sK2,sK4) ),
    inference(equality_resolution,[status(thm)],[c_176])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_193,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_13])).

cnf(c_194,plain,
    ( k7_relset_1(X0,X1,sK4,X2) = k9_relat_1(sK4,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_193])).

cnf(c_994,plain,
    ( k7_relset_1(sK1,sK2,sK4,X0) = k9_relat_1(sK4,X0) ),
    inference(equality_resolution,[status(thm)],[c_194])).

cnf(c_1031,plain,
    ( k2_relset_1(sK1,sK2,sK4) = k9_relat_1(sK4,sK1) ),
    inference(demodulation,[status(thm)],[c_998,c_994])).

cnf(c_12,negated_conjecture,
    ( r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_856,plain,
    ( r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1033,plain,
    ( r2_hidden(sK3,k9_relat_1(sK4,sK1)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1031,c_856])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_337,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
    | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_203])).

cnf(c_338,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_337])).

cnf(c_493,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
    | ~ sP3_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP3_iProver_split])],[c_338])).

cnf(c_842,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
    | sP3_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_493])).

cnf(c_494,plain,
    ( sP3_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_338])).

cnf(c_544,plain,
    ( sP3_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_494])).

cnf(c_545,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
    | sP3_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_493])).

cnf(c_1343,plain,
    ( r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_842,c_544,c_545,c_999,c_1004])).

cnf(c_1344,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top ),
    inference(renaming,[status(thm)],[c_1343])).

cnf(c_5,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | k1_funct_1(X2,X0) = X1 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_253,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ v1_relat_1(X2)
    | k1_funct_1(X2,X0) = X1
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_14])).

cnf(c_254,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | ~ v1_relat_1(sK4)
    | k1_funct_1(sK4,X0) = X1 ),
    inference(unflattening,[status(thm)],[c_253])).

cnf(c_280,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | k1_funct_1(sK4,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(resolution,[status(thm)],[c_203,c_254])).

cnf(c_501,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | k1_funct_1(sK4,X0) = X1
    | ~ sP7_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP7_iProver_split])],[c_280])).

cnf(c_854,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | sP7_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_501])).

cnf(c_502,plain,
    ( sP7_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_280])).

cnf(c_564,plain,
    ( sP7_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_502])).

cnf(c_565,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | sP7_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_501])).

cnf(c_1191,plain,
    ( r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | k1_funct_1(sK4,X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_854,c_564,c_565,c_999,c_1004])).

cnf(c_1192,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_1191])).

cnf(c_1353,plain,
    ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1344,c_1192])).

cnf(c_1524,plain,
    ( k1_funct_1(sK4,sK0(sK3,sK1,sK4)) = sK3 ),
    inference(superposition,[status(thm)],[c_1033,c_1353])).

cnf(c_11,negated_conjecture,
    ( ~ r2_hidden(X0,sK1)
    | k1_funct_1(sK4,X0) != sK3 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_857,plain,
    ( k1_funct_1(sK4,X0) != sK3
    | r2_hidden(X0,sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1536,plain,
    ( r2_hidden(sK0(sK3,sK1,sK4),sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1524,c_857])).

cnf(c_1604,plain,
    ( r2_hidden(sK3,k9_relat_1(sK4,sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1224,c_1536])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1604,c_1033])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:22:12 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.03/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.03/0.99  
% 1.03/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.03/0.99  
% 1.03/0.99  ------  iProver source info
% 1.03/0.99  
% 1.03/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.03/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.03/0.99  git: non_committed_changes: false
% 1.03/0.99  git: last_make_outside_of_git: false
% 1.03/0.99  
% 1.03/0.99  ------ 
% 1.03/0.99  
% 1.03/0.99  ------ Input Options
% 1.03/0.99  
% 1.03/0.99  --out_options                           all
% 1.03/0.99  --tptp_safe_out                         true
% 1.03/0.99  --problem_path                          ""
% 1.03/0.99  --include_path                          ""
% 1.03/0.99  --clausifier                            res/vclausify_rel
% 1.03/0.99  --clausifier_options                    --mode clausify
% 1.03/0.99  --stdin                                 false
% 1.03/0.99  --stats_out                             all
% 1.03/0.99  
% 1.03/0.99  ------ General Options
% 1.03/0.99  
% 1.03/0.99  --fof                                   false
% 1.03/0.99  --time_out_real                         305.
% 1.03/0.99  --time_out_virtual                      -1.
% 1.03/0.99  --symbol_type_check                     false
% 1.03/0.99  --clausify_out                          false
% 1.03/0.99  --sig_cnt_out                           false
% 1.03/0.99  --trig_cnt_out                          false
% 1.03/0.99  --trig_cnt_out_tolerance                1.
% 1.03/0.99  --trig_cnt_out_sk_spl                   false
% 1.03/0.99  --abstr_cl_out                          false
% 1.03/0.99  
% 1.03/0.99  ------ Global Options
% 1.03/0.99  
% 1.03/0.99  --schedule                              default
% 1.03/0.99  --add_important_lit                     false
% 1.03/0.99  --prop_solver_per_cl                    1000
% 1.03/0.99  --min_unsat_core                        false
% 1.03/0.99  --soft_assumptions                      false
% 1.03/0.99  --soft_lemma_size                       3
% 1.03/0.99  --prop_impl_unit_size                   0
% 1.03/0.99  --prop_impl_unit                        []
% 1.03/0.99  --share_sel_clauses                     true
% 1.03/0.99  --reset_solvers                         false
% 1.03/0.99  --bc_imp_inh                            [conj_cone]
% 1.03/0.99  --conj_cone_tolerance                   3.
% 1.03/0.99  --extra_neg_conj                        none
% 1.03/0.99  --large_theory_mode                     true
% 1.03/0.99  --prolific_symb_bound                   200
% 1.03/0.99  --lt_threshold                          2000
% 1.03/0.99  --clause_weak_htbl                      true
% 1.03/0.99  --gc_record_bc_elim                     false
% 1.03/0.99  
% 1.03/0.99  ------ Preprocessing Options
% 1.03/0.99  
% 1.03/0.99  --preprocessing_flag                    true
% 1.03/0.99  --time_out_prep_mult                    0.1
% 1.03/0.99  --splitting_mode                        input
% 1.03/0.99  --splitting_grd                         true
% 1.03/0.99  --splitting_cvd                         false
% 1.03/0.99  --splitting_cvd_svl                     false
% 1.03/0.99  --splitting_nvd                         32
% 1.03/0.99  --sub_typing                            true
% 1.03/0.99  --prep_gs_sim                           true
% 1.03/0.99  --prep_unflatten                        true
% 1.03/0.99  --prep_res_sim                          true
% 1.03/0.99  --prep_upred                            true
% 1.03/0.99  --prep_sem_filter                       exhaustive
% 1.03/0.99  --prep_sem_filter_out                   false
% 1.03/0.99  --pred_elim                             true
% 1.03/0.99  --res_sim_input                         true
% 1.03/0.99  --eq_ax_congr_red                       true
% 1.03/0.99  --pure_diseq_elim                       true
% 1.03/0.99  --brand_transform                       false
% 1.03/0.99  --non_eq_to_eq                          false
% 1.03/0.99  --prep_def_merge                        true
% 1.03/0.99  --prep_def_merge_prop_impl              false
% 1.03/0.99  --prep_def_merge_mbd                    true
% 1.03/0.99  --prep_def_merge_tr_red                 false
% 1.03/0.99  --prep_def_merge_tr_cl                  false
% 1.03/0.99  --smt_preprocessing                     true
% 1.03/0.99  --smt_ac_axioms                         fast
% 1.03/0.99  --preprocessed_out                      false
% 1.03/0.99  --preprocessed_stats                    false
% 1.03/0.99  
% 1.03/0.99  ------ Abstraction refinement Options
% 1.03/0.99  
% 1.03/0.99  --abstr_ref                             []
% 1.03/0.99  --abstr_ref_prep                        false
% 1.03/0.99  --abstr_ref_until_sat                   false
% 1.03/0.99  --abstr_ref_sig_restrict                funpre
% 1.03/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.03/0.99  --abstr_ref_under                       []
% 1.03/0.99  
% 1.03/0.99  ------ SAT Options
% 1.03/0.99  
% 1.03/0.99  --sat_mode                              false
% 1.03/0.99  --sat_fm_restart_options                ""
% 1.03/0.99  --sat_gr_def                            false
% 1.03/0.99  --sat_epr_types                         true
% 1.03/0.99  --sat_non_cyclic_types                  false
% 1.03/0.99  --sat_finite_models                     false
% 1.03/0.99  --sat_fm_lemmas                         false
% 1.03/0.99  --sat_fm_prep                           false
% 1.03/0.99  --sat_fm_uc_incr                        true
% 1.03/0.99  --sat_out_model                         small
% 1.03/0.99  --sat_out_clauses                       false
% 1.03/0.99  
% 1.03/0.99  ------ QBF Options
% 1.03/0.99  
% 1.03/0.99  --qbf_mode                              false
% 1.03/0.99  --qbf_elim_univ                         false
% 1.03/0.99  --qbf_dom_inst                          none
% 1.03/0.99  --qbf_dom_pre_inst                      false
% 1.03/0.99  --qbf_sk_in                             false
% 1.03/0.99  --qbf_pred_elim                         true
% 1.03/0.99  --qbf_split                             512
% 1.03/0.99  
% 1.03/0.99  ------ BMC1 Options
% 1.03/0.99  
% 1.03/0.99  --bmc1_incremental                      false
% 1.03/0.99  --bmc1_axioms                           reachable_all
% 1.03/0.99  --bmc1_min_bound                        0
% 1.03/0.99  --bmc1_max_bound                        -1
% 1.03/0.99  --bmc1_max_bound_default                -1
% 1.03/0.99  --bmc1_symbol_reachability              true
% 1.03/0.99  --bmc1_property_lemmas                  false
% 1.03/0.99  --bmc1_k_induction                      false
% 1.03/0.99  --bmc1_non_equiv_states                 false
% 1.03/0.99  --bmc1_deadlock                         false
% 1.03/0.99  --bmc1_ucm                              false
% 1.03/0.99  --bmc1_add_unsat_core                   none
% 1.03/0.99  --bmc1_unsat_core_children              false
% 1.03/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.03/0.99  --bmc1_out_stat                         full
% 1.03/0.99  --bmc1_ground_init                      false
% 1.03/0.99  --bmc1_pre_inst_next_state              false
% 1.03/0.99  --bmc1_pre_inst_state                   false
% 1.03/0.99  --bmc1_pre_inst_reach_state             false
% 1.03/0.99  --bmc1_out_unsat_core                   false
% 1.03/0.99  --bmc1_aig_witness_out                  false
% 1.03/0.99  --bmc1_verbose                          false
% 1.03/0.99  --bmc1_dump_clauses_tptp                false
% 1.03/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.03/0.99  --bmc1_dump_file                        -
% 1.03/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.03/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.03/0.99  --bmc1_ucm_extend_mode                  1
% 1.03/0.99  --bmc1_ucm_init_mode                    2
% 1.03/0.99  --bmc1_ucm_cone_mode                    none
% 1.03/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.03/0.99  --bmc1_ucm_relax_model                  4
% 1.03/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.03/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.03/0.99  --bmc1_ucm_layered_model                none
% 1.03/0.99  --bmc1_ucm_max_lemma_size               10
% 1.03/0.99  
% 1.03/0.99  ------ AIG Options
% 1.03/0.99  
% 1.03/0.99  --aig_mode                              false
% 1.03/0.99  
% 1.03/0.99  ------ Instantiation Options
% 1.03/0.99  
% 1.03/0.99  --instantiation_flag                    true
% 1.03/0.99  --inst_sos_flag                         false
% 1.03/0.99  --inst_sos_phase                        true
% 1.03/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.03/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.03/0.99  --inst_lit_sel_side                     num_symb
% 1.03/0.99  --inst_solver_per_active                1400
% 1.03/0.99  --inst_solver_calls_frac                1.
% 1.03/0.99  --inst_passive_queue_type               priority_queues
% 1.03/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.03/0.99  --inst_passive_queues_freq              [25;2]
% 1.03/0.99  --inst_dismatching                      true
% 1.03/0.99  --inst_eager_unprocessed_to_passive     true
% 1.03/0.99  --inst_prop_sim_given                   true
% 1.03/0.99  --inst_prop_sim_new                     false
% 1.03/0.99  --inst_subs_new                         false
% 1.03/0.99  --inst_eq_res_simp                      false
% 1.03/0.99  --inst_subs_given                       false
% 1.03/0.99  --inst_orphan_elimination               true
% 1.03/0.99  --inst_learning_loop_flag               true
% 1.03/0.99  --inst_learning_start                   3000
% 1.03/0.99  --inst_learning_factor                  2
% 1.03/0.99  --inst_start_prop_sim_after_learn       3
% 1.03/0.99  --inst_sel_renew                        solver
% 1.03/0.99  --inst_lit_activity_flag                true
% 1.03/0.99  --inst_restr_to_given                   false
% 1.03/0.99  --inst_activity_threshold               500
% 1.03/0.99  --inst_out_proof                        true
% 1.03/0.99  
% 1.03/0.99  ------ Resolution Options
% 1.03/0.99  
% 1.03/0.99  --resolution_flag                       true
% 1.03/0.99  --res_lit_sel                           adaptive
% 1.03/0.99  --res_lit_sel_side                      none
% 1.03/0.99  --res_ordering                          kbo
% 1.03/0.99  --res_to_prop_solver                    active
% 1.03/0.99  --res_prop_simpl_new                    false
% 1.03/0.99  --res_prop_simpl_given                  true
% 1.03/0.99  --res_passive_queue_type                priority_queues
% 1.03/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.03/0.99  --res_passive_queues_freq               [15;5]
% 1.03/0.99  --res_forward_subs                      full
% 1.03/0.99  --res_backward_subs                     full
% 1.03/0.99  --res_forward_subs_resolution           true
% 1.03/0.99  --res_backward_subs_resolution          true
% 1.03/0.99  --res_orphan_elimination                true
% 1.03/0.99  --res_time_limit                        2.
% 1.03/0.99  --res_out_proof                         true
% 1.03/0.99  
% 1.03/0.99  ------ Superposition Options
% 1.03/0.99  
% 1.03/0.99  --superposition_flag                    true
% 1.03/0.99  --sup_passive_queue_type                priority_queues
% 1.03/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.03/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.03/0.99  --demod_completeness_check              fast
% 1.03/0.99  --demod_use_ground                      true
% 1.03/0.99  --sup_to_prop_solver                    passive
% 1.03/0.99  --sup_prop_simpl_new                    true
% 1.03/0.99  --sup_prop_simpl_given                  true
% 1.03/0.99  --sup_fun_splitting                     false
% 1.03/0.99  --sup_smt_interval                      50000
% 1.03/0.99  
% 1.03/0.99  ------ Superposition Simplification Setup
% 1.03/0.99  
% 1.03/0.99  --sup_indices_passive                   []
% 1.03/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.03/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.03/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.03/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.03/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.03/0.99  --sup_full_bw                           [BwDemod]
% 1.03/0.99  --sup_immed_triv                        [TrivRules]
% 1.03/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.03/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.03/0.99  --sup_immed_bw_main                     []
% 1.03/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.03/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.03/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.03/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.03/0.99  
% 1.03/0.99  ------ Combination Options
% 1.03/0.99  
% 1.03/0.99  --comb_res_mult                         3
% 1.03/0.99  --comb_sup_mult                         2
% 1.03/0.99  --comb_inst_mult                        10
% 1.03/0.99  
% 1.03/0.99  ------ Debug Options
% 1.03/0.99  
% 1.03/0.99  --dbg_backtrace                         false
% 1.03/0.99  --dbg_dump_prop_clauses                 false
% 1.03/0.99  --dbg_dump_prop_clauses_file            -
% 1.03/0.99  --dbg_out_stat                          false
% 1.03/0.99  ------ Parsing...
% 1.03/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.03/0.99  
% 1.03/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.03/0.99  
% 1.03/0.99  ------ Preprocessing... gs_s  sp: 14 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.03/0.99  
% 1.03/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.03/0.99  ------ Proving...
% 1.03/0.99  ------ Problem Properties 
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  clauses                                 26
% 1.03/0.99  conjectures                             2
% 1.03/0.99  EPR                                     7
% 1.03/0.99  Horn                                    19
% 1.03/0.99  unary                                   1
% 1.03/0.99  binary                                  18
% 1.03/0.99  lits                                    59
% 1.03/0.99  lits eq                                 15
% 1.03/0.99  fd_pure                                 0
% 1.03/0.99  fd_pseudo                               0
% 1.03/0.99  fd_cond                                 0
% 1.03/0.99  fd_pseudo_cond                          1
% 1.03/0.99  AC symbols                              0
% 1.03/0.99  
% 1.03/0.99  ------ Schedule dynamic 5 is on 
% 1.03/0.99  
% 1.03/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  ------ 
% 1.03/0.99  Current options:
% 1.03/0.99  ------ 
% 1.03/0.99  
% 1.03/0.99  ------ Input Options
% 1.03/0.99  
% 1.03/0.99  --out_options                           all
% 1.03/0.99  --tptp_safe_out                         true
% 1.03/0.99  --problem_path                          ""
% 1.03/0.99  --include_path                          ""
% 1.03/0.99  --clausifier                            res/vclausify_rel
% 1.03/0.99  --clausifier_options                    --mode clausify
% 1.03/0.99  --stdin                                 false
% 1.03/0.99  --stats_out                             all
% 1.03/0.99  
% 1.03/0.99  ------ General Options
% 1.03/0.99  
% 1.03/0.99  --fof                                   false
% 1.03/0.99  --time_out_real                         305.
% 1.03/0.99  --time_out_virtual                      -1.
% 1.03/0.99  --symbol_type_check                     false
% 1.03/0.99  --clausify_out                          false
% 1.03/0.99  --sig_cnt_out                           false
% 1.03/0.99  --trig_cnt_out                          false
% 1.03/0.99  --trig_cnt_out_tolerance                1.
% 1.03/0.99  --trig_cnt_out_sk_spl                   false
% 1.03/0.99  --abstr_cl_out                          false
% 1.03/0.99  
% 1.03/0.99  ------ Global Options
% 1.03/0.99  
% 1.03/0.99  --schedule                              default
% 1.03/0.99  --add_important_lit                     false
% 1.03/0.99  --prop_solver_per_cl                    1000
% 1.03/0.99  --min_unsat_core                        false
% 1.03/0.99  --soft_assumptions                      false
% 1.03/0.99  --soft_lemma_size                       3
% 1.03/0.99  --prop_impl_unit_size                   0
% 1.03/0.99  --prop_impl_unit                        []
% 1.03/0.99  --share_sel_clauses                     true
% 1.03/0.99  --reset_solvers                         false
% 1.03/0.99  --bc_imp_inh                            [conj_cone]
% 1.03/0.99  --conj_cone_tolerance                   3.
% 1.03/0.99  --extra_neg_conj                        none
% 1.03/0.99  --large_theory_mode                     true
% 1.03/0.99  --prolific_symb_bound                   200
% 1.03/0.99  --lt_threshold                          2000
% 1.03/0.99  --clause_weak_htbl                      true
% 1.03/0.99  --gc_record_bc_elim                     false
% 1.03/0.99  
% 1.03/0.99  ------ Preprocessing Options
% 1.03/0.99  
% 1.03/0.99  --preprocessing_flag                    true
% 1.03/0.99  --time_out_prep_mult                    0.1
% 1.03/0.99  --splitting_mode                        input
% 1.03/0.99  --splitting_grd                         true
% 1.03/0.99  --splitting_cvd                         false
% 1.03/0.99  --splitting_cvd_svl                     false
% 1.03/0.99  --splitting_nvd                         32
% 1.03/0.99  --sub_typing                            true
% 1.03/0.99  --prep_gs_sim                           true
% 1.03/0.99  --prep_unflatten                        true
% 1.03/0.99  --prep_res_sim                          true
% 1.03/0.99  --prep_upred                            true
% 1.03/0.99  --prep_sem_filter                       exhaustive
% 1.03/0.99  --prep_sem_filter_out                   false
% 1.03/0.99  --pred_elim                             true
% 1.03/0.99  --res_sim_input                         true
% 1.03/0.99  --eq_ax_congr_red                       true
% 1.03/0.99  --pure_diseq_elim                       true
% 1.03/0.99  --brand_transform                       false
% 1.03/0.99  --non_eq_to_eq                          false
% 1.03/0.99  --prep_def_merge                        true
% 1.03/0.99  --prep_def_merge_prop_impl              false
% 1.03/0.99  --prep_def_merge_mbd                    true
% 1.03/0.99  --prep_def_merge_tr_red                 false
% 1.03/0.99  --prep_def_merge_tr_cl                  false
% 1.03/0.99  --smt_preprocessing                     true
% 1.03/0.99  --smt_ac_axioms                         fast
% 1.03/0.99  --preprocessed_out                      false
% 1.03/0.99  --preprocessed_stats                    false
% 1.03/0.99  
% 1.03/0.99  ------ Abstraction refinement Options
% 1.03/0.99  
% 1.03/0.99  --abstr_ref                             []
% 1.03/0.99  --abstr_ref_prep                        false
% 1.03/0.99  --abstr_ref_until_sat                   false
% 1.03/0.99  --abstr_ref_sig_restrict                funpre
% 1.03/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.03/0.99  --abstr_ref_under                       []
% 1.03/0.99  
% 1.03/0.99  ------ SAT Options
% 1.03/0.99  
% 1.03/0.99  --sat_mode                              false
% 1.03/0.99  --sat_fm_restart_options                ""
% 1.03/0.99  --sat_gr_def                            false
% 1.03/0.99  --sat_epr_types                         true
% 1.03/0.99  --sat_non_cyclic_types                  false
% 1.03/0.99  --sat_finite_models                     false
% 1.03/0.99  --sat_fm_lemmas                         false
% 1.03/0.99  --sat_fm_prep                           false
% 1.03/0.99  --sat_fm_uc_incr                        true
% 1.03/0.99  --sat_out_model                         small
% 1.03/0.99  --sat_out_clauses                       false
% 1.03/0.99  
% 1.03/0.99  ------ QBF Options
% 1.03/0.99  
% 1.03/0.99  --qbf_mode                              false
% 1.03/0.99  --qbf_elim_univ                         false
% 1.03/0.99  --qbf_dom_inst                          none
% 1.03/0.99  --qbf_dom_pre_inst                      false
% 1.03/0.99  --qbf_sk_in                             false
% 1.03/0.99  --qbf_pred_elim                         true
% 1.03/0.99  --qbf_split                             512
% 1.03/0.99  
% 1.03/0.99  ------ BMC1 Options
% 1.03/0.99  
% 1.03/0.99  --bmc1_incremental                      false
% 1.03/0.99  --bmc1_axioms                           reachable_all
% 1.03/0.99  --bmc1_min_bound                        0
% 1.03/0.99  --bmc1_max_bound                        -1
% 1.03/0.99  --bmc1_max_bound_default                -1
% 1.03/0.99  --bmc1_symbol_reachability              true
% 1.03/0.99  --bmc1_property_lemmas                  false
% 1.03/0.99  --bmc1_k_induction                      false
% 1.03/0.99  --bmc1_non_equiv_states                 false
% 1.03/0.99  --bmc1_deadlock                         false
% 1.03/0.99  --bmc1_ucm                              false
% 1.03/0.99  --bmc1_add_unsat_core                   none
% 1.03/0.99  --bmc1_unsat_core_children              false
% 1.03/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.03/0.99  --bmc1_out_stat                         full
% 1.03/0.99  --bmc1_ground_init                      false
% 1.03/0.99  --bmc1_pre_inst_next_state              false
% 1.03/0.99  --bmc1_pre_inst_state                   false
% 1.03/0.99  --bmc1_pre_inst_reach_state             false
% 1.03/0.99  --bmc1_out_unsat_core                   false
% 1.03/0.99  --bmc1_aig_witness_out                  false
% 1.03/0.99  --bmc1_verbose                          false
% 1.03/0.99  --bmc1_dump_clauses_tptp                false
% 1.03/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.03/0.99  --bmc1_dump_file                        -
% 1.03/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.03/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.03/0.99  --bmc1_ucm_extend_mode                  1
% 1.03/0.99  --bmc1_ucm_init_mode                    2
% 1.03/0.99  --bmc1_ucm_cone_mode                    none
% 1.03/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.03/0.99  --bmc1_ucm_relax_model                  4
% 1.03/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.03/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.03/0.99  --bmc1_ucm_layered_model                none
% 1.03/0.99  --bmc1_ucm_max_lemma_size               10
% 1.03/0.99  
% 1.03/0.99  ------ AIG Options
% 1.03/0.99  
% 1.03/0.99  --aig_mode                              false
% 1.03/0.99  
% 1.03/0.99  ------ Instantiation Options
% 1.03/0.99  
% 1.03/0.99  --instantiation_flag                    true
% 1.03/0.99  --inst_sos_flag                         false
% 1.03/0.99  --inst_sos_phase                        true
% 1.03/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.03/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.03/0.99  --inst_lit_sel_side                     none
% 1.03/0.99  --inst_solver_per_active                1400
% 1.03/0.99  --inst_solver_calls_frac                1.
% 1.03/0.99  --inst_passive_queue_type               priority_queues
% 1.03/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.03/0.99  --inst_passive_queues_freq              [25;2]
% 1.03/0.99  --inst_dismatching                      true
% 1.03/0.99  --inst_eager_unprocessed_to_passive     true
% 1.03/0.99  --inst_prop_sim_given                   true
% 1.03/0.99  --inst_prop_sim_new                     false
% 1.03/0.99  --inst_subs_new                         false
% 1.03/0.99  --inst_eq_res_simp                      false
% 1.03/0.99  --inst_subs_given                       false
% 1.03/0.99  --inst_orphan_elimination               true
% 1.03/0.99  --inst_learning_loop_flag               true
% 1.03/0.99  --inst_learning_start                   3000
% 1.03/0.99  --inst_learning_factor                  2
% 1.03/0.99  --inst_start_prop_sim_after_learn       3
% 1.03/0.99  --inst_sel_renew                        solver
% 1.03/0.99  --inst_lit_activity_flag                true
% 1.03/0.99  --inst_restr_to_given                   false
% 1.03/0.99  --inst_activity_threshold               500
% 1.03/0.99  --inst_out_proof                        true
% 1.03/0.99  
% 1.03/0.99  ------ Resolution Options
% 1.03/0.99  
% 1.03/0.99  --resolution_flag                       false
% 1.03/0.99  --res_lit_sel                           adaptive
% 1.03/0.99  --res_lit_sel_side                      none
% 1.03/0.99  --res_ordering                          kbo
% 1.03/0.99  --res_to_prop_solver                    active
% 1.03/0.99  --res_prop_simpl_new                    false
% 1.03/0.99  --res_prop_simpl_given                  true
% 1.03/0.99  --res_passive_queue_type                priority_queues
% 1.03/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.03/0.99  --res_passive_queues_freq               [15;5]
% 1.03/0.99  --res_forward_subs                      full
% 1.03/0.99  --res_backward_subs                     full
% 1.03/0.99  --res_forward_subs_resolution           true
% 1.03/0.99  --res_backward_subs_resolution          true
% 1.03/0.99  --res_orphan_elimination                true
% 1.03/0.99  --res_time_limit                        2.
% 1.03/0.99  --res_out_proof                         true
% 1.03/0.99  
% 1.03/0.99  ------ Superposition Options
% 1.03/0.99  
% 1.03/0.99  --superposition_flag                    true
% 1.03/0.99  --sup_passive_queue_type                priority_queues
% 1.03/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.03/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.03/0.99  --demod_completeness_check              fast
% 1.03/0.99  --demod_use_ground                      true
% 1.03/0.99  --sup_to_prop_solver                    passive
% 1.03/0.99  --sup_prop_simpl_new                    true
% 1.03/0.99  --sup_prop_simpl_given                  true
% 1.03/0.99  --sup_fun_splitting                     false
% 1.03/0.99  --sup_smt_interval                      50000
% 1.03/0.99  
% 1.03/0.99  ------ Superposition Simplification Setup
% 1.03/0.99  
% 1.03/0.99  --sup_indices_passive                   []
% 1.03/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.03/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.03/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.03/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.03/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.03/0.99  --sup_full_bw                           [BwDemod]
% 1.03/0.99  --sup_immed_triv                        [TrivRules]
% 1.03/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.03/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.03/0.99  --sup_immed_bw_main                     []
% 1.03/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.03/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.03/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.03/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.03/0.99  
% 1.03/0.99  ------ Combination Options
% 1.03/0.99  
% 1.03/0.99  --comb_res_mult                         3
% 1.03/0.99  --comb_sup_mult                         2
% 1.03/0.99  --comb_inst_mult                        10
% 1.03/0.99  
% 1.03/0.99  ------ Debug Options
% 1.03/0.99  
% 1.03/0.99  --dbg_backtrace                         false
% 1.03/0.99  --dbg_dump_prop_clauses                 false
% 1.03/0.99  --dbg_dump_prop_clauses_file            -
% 1.03/0.99  --dbg_out_stat                          false
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  ------ Proving...
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  % SZS status Theorem for theBenchmark.p
% 1.03/0.99  
% 1.03/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.03/0.99  
% 1.03/0.99  fof(f1,axiom,(
% 1.03/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))))),
% 1.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.03/0.99  
% 1.03/0.99  fof(f9,plain,(
% 1.03/0.99    ! [X0,X1,X2] : ((r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(ennf_transformation,[],[f1])).
% 1.03/0.99  
% 1.03/0.99  fof(f17,plain,(
% 1.03/0.99    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(nnf_transformation,[],[f9])).
% 1.03/0.99  
% 1.03/0.99  fof(f18,plain,(
% 1.03/0.99    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(rectify,[],[f17])).
% 1.03/0.99  
% 1.03/0.99  fof(f19,plain,(
% 1.03/0.99    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) => (r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))))),
% 1.03/0.99    introduced(choice_axiom,[])).
% 1.03/0.99  
% 1.03/0.99  fof(f20,plain,(
% 1.03/0.99    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).
% 1.03/0.99  
% 1.03/0.99  fof(f27,plain,(
% 1.03/0.99    ( ! [X2,X0,X1] : (r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 1.03/0.99    inference(cnf_transformation,[],[f20])).
% 1.03/0.99  
% 1.03/0.99  fof(f3,axiom,(
% 1.03/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.03/0.99  
% 1.03/0.99  fof(f12,plain,(
% 1.03/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.03/0.99    inference(ennf_transformation,[],[f3])).
% 1.03/0.99  
% 1.03/0.99  fof(f32,plain,(
% 1.03/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.03/0.99    inference(cnf_transformation,[],[f12])).
% 1.03/0.99  
% 1.03/0.99  fof(f6,conjecture,(
% 1.03/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 1.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.03/0.99  
% 1.03/0.99  fof(f7,negated_conjecture,(
% 1.03/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 1.03/0.99    inference(negated_conjecture,[],[f6])).
% 1.03/0.99  
% 1.03/0.99  fof(f8,plain,(
% 1.03/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 1.03/0.99    inference(pure_predicate_removal,[],[f7])).
% 1.03/0.99  
% 1.03/0.99  fof(f15,plain,(
% 1.03/0.99    ? [X0,X1,X2,X3] : ((! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)))),
% 1.03/0.99    inference(ennf_transformation,[],[f8])).
% 1.03/0.99  
% 1.03/0.99  fof(f16,plain,(
% 1.03/0.99    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3))),
% 1.03/0.99    inference(flattening,[],[f15])).
% 1.03/0.99  
% 1.03/0.99  fof(f23,plain,(
% 1.03/0.99    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => (! [X4] : (k1_funct_1(sK4,X4) != sK3 | ~r2_hidden(X4,sK1)) & r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_1(sK4))),
% 1.03/0.99    introduced(choice_axiom,[])).
% 1.03/0.99  
% 1.03/0.99  fof(f24,plain,(
% 1.03/0.99    ! [X4] : (k1_funct_1(sK4,X4) != sK3 | ~r2_hidden(X4,sK1)) & r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_1(sK4)),
% 1.03/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f16,f23])).
% 1.03/0.99  
% 1.03/0.99  fof(f37,plain,(
% 1.03/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 1.03/0.99    inference(cnf_transformation,[],[f24])).
% 1.03/0.99  
% 1.03/0.99  fof(f28,plain,(
% 1.03/0.99    ( ! [X2,X0,X3,X1] : (r2_hidden(X0,k9_relat_1(X2,X1)) | ~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)) | ~v1_relat_1(X2)) )),
% 1.03/0.99    inference(cnf_transformation,[],[f20])).
% 1.03/0.99  
% 1.03/0.99  fof(f2,axiom,(
% 1.03/0.99    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))))),
% 1.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.03/0.99  
% 1.03/0.99  fof(f10,plain,(
% 1.03/0.99    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2)))),
% 1.03/0.99    inference(ennf_transformation,[],[f2])).
% 1.03/0.99  
% 1.03/0.99  fof(f11,plain,(
% 1.03/0.99    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(flattening,[],[f10])).
% 1.03/0.99  
% 1.03/0.99  fof(f21,plain,(
% 1.03/0.99    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | (k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2)))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(nnf_transformation,[],[f11])).
% 1.03/0.99  
% 1.03/0.99  fof(f22,plain,(
% 1.03/0.99    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 1.03/0.99    inference(flattening,[],[f21])).
% 1.03/0.99  
% 1.03/0.99  fof(f29,plain,(
% 1.03/0.99    ( ! [X2,X0,X1] : (r2_hidden(X0,k1_relat_1(X2)) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 1.03/0.99    inference(cnf_transformation,[],[f22])).
% 1.03/0.99  
% 1.03/0.99  fof(f36,plain,(
% 1.03/0.99    v1_funct_1(sK4)),
% 1.03/0.99    inference(cnf_transformation,[],[f24])).
% 1.03/0.99  
% 1.03/0.99  fof(f5,axiom,(
% 1.03/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)))),
% 1.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.03/0.99  
% 1.03/0.99  fof(f14,plain,(
% 1.03/0.99    ! [X0,X1,X2] : ((k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.03/0.99    inference(ennf_transformation,[],[f5])).
% 1.03/0.99  
% 1.03/0.99  fof(f34,plain,(
% 1.03/0.99    ( ! [X2,X0,X1] : (k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.03/0.99    inference(cnf_transformation,[],[f14])).
% 1.03/0.99  
% 1.03/0.99  fof(f4,axiom,(
% 1.03/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 1.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.03/0.99  
% 1.03/0.99  fof(f13,plain,(
% 1.03/0.99    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.03/0.99    inference(ennf_transformation,[],[f4])).
% 1.03/0.99  
% 1.03/0.99  fof(f33,plain,(
% 1.03/0.99    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.03/0.99    inference(cnf_transformation,[],[f13])).
% 1.03/0.99  
% 1.03/0.99  fof(f38,plain,(
% 1.03/0.99    r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4))),
% 1.03/0.99    inference(cnf_transformation,[],[f24])).
% 1.03/0.99  
% 1.03/0.99  fof(f26,plain,(
% 1.03/0.99    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 1.03/0.99    inference(cnf_transformation,[],[f20])).
% 1.03/0.99  
% 1.03/0.99  fof(f30,plain,(
% 1.03/0.99    ( ! [X2,X0,X1] : (k1_funct_1(X2,X0) = X1 | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 1.03/0.99    inference(cnf_transformation,[],[f22])).
% 1.03/0.99  
% 1.03/0.99  fof(f39,plain,(
% 1.03/0.99    ( ! [X4] : (k1_funct_1(sK4,X4) != sK3 | ~r2_hidden(X4,sK1)) )),
% 1.03/0.99    inference(cnf_transformation,[],[f24])).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 1.03/0.99      | r2_hidden(sK0(X0,X2,X1),X2)
% 1.03/0.99      | ~ v1_relat_1(X1) ),
% 1.03/0.99      inference(cnf_transformation,[],[f27]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_7,plain,
% 1.03/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.03/0.99      | v1_relat_1(X0) ),
% 1.03/0.99      inference(cnf_transformation,[],[f32]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_13,negated_conjecture,
% 1.03/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 1.03/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_202,plain,
% 1.03/0.99      ( v1_relat_1(X0)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sK4 != X0 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_13]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_203,plain,
% 1.03/0.99      ( v1_relat_1(sK4)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_202]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_352,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 1.03/0.99      | r2_hidden(sK0(X0,X2,X1),X2)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sK4 != X1 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_203]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_353,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 1.03/0.99      | r2_hidden(sK0(X0,X1,sK4),X1)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_352]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_491,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 1.03/0.99      | r2_hidden(sK0(X0,X1,sK4),X1)
% 1.03/0.99      | ~ sP2_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[sP2_iProver_split])],
% 1.03/0.99                [c_353]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_839,plain,
% 1.03/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 1.03/0.99      | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
% 1.03/0.99      | sP2_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_491]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_492,plain,
% 1.03/0.99      ( sP2_iProver_split | sP0_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[])],
% 1.03/0.99                [c_353]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_539,plain,
% 1.03/0.99      ( sP2_iProver_split = iProver_top
% 1.03/0.99      | sP0_iProver_split = iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_492]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_540,plain,
% 1.03/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 1.03/0.99      | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
% 1.03/0.99      | sP2_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_491]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_504,plain,( X0 = X0 ),theory(equality) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_999,plain,
% 1.03/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(instantiation,[status(thm)],[c_504]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_0,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,X1)
% 1.03/0.99      | r2_hidden(X2,k9_relat_1(X3,X1))
% 1.03/0.99      | ~ r2_hidden(X0,k1_relat_1(X3))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X2),X3)
% 1.03/0.99      | ~ v1_relat_1(X3) ),
% 1.03/0.99      inference(cnf_transformation,[],[f28]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_367,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,X1)
% 1.03/0.99      | r2_hidden(X2,k9_relat_1(X3,X1))
% 1.03/0.99      | ~ r2_hidden(X0,k1_relat_1(X3))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X2),X3)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X4,X5)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sK4 != X3 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_203]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_368,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,X1)
% 1.03/0.99      | r2_hidden(X2,k9_relat_1(sK4,X1))
% 1.03/0.99      | ~ r2_hidden(X0,k1_relat_1(sK4))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X2),sK4)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_367]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_6,plain,
% 1.03/0.99      ( r2_hidden(X0,k1_relat_1(X1))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X2),X1)
% 1.03/0.99      | ~ v1_funct_1(X1)
% 1.03/0.99      | ~ v1_relat_1(X1) ),
% 1.03/0.99      inference(cnf_transformation,[],[f29]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_14,negated_conjecture,
% 1.03/0.99      ( v1_funct_1(sK4) ),
% 1.03/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_223,plain,
% 1.03/0.99      ( r2_hidden(X0,k1_relat_1(X1))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X2),X1)
% 1.03/0.99      | ~ v1_relat_1(X1)
% 1.03/0.99      | sK4 != X1 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_14]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_224,plain,
% 1.03/0.99      ( r2_hidden(X0,k1_relat_1(sK4))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 1.03/0.99      | ~ v1_relat_1(sK4) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_223]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_308,plain,
% 1.03/0.99      ( r2_hidden(X0,k1_relat_1(sK4))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(resolution,[status(thm)],[c_203,c_224]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_377,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,X1)
% 1.03/0.99      | r2_hidden(X2,k9_relat_1(sK4,X1))
% 1.03/0.99      | ~ r2_hidden(k4_tarski(X0,X2),sK4)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(forward_subsumption_resolution,
% 1.03/0.99                [status(thm)],
% 1.03/0.99                [c_368,c_308]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_488,plain,
% 1.03/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | ~ sP0_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.03/0.99                [c_377]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1000,plain,
% 1.03/0.99      ( ~ sP0_iProver_split
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(instantiation,[status(thm)],[c_488]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1004,plain,
% 1.03/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sP0_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_1000]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1223,plain,
% 1.03/0.99      ( r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
% 1.03/0.99      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 1.03/0.99      inference(global_propositional_subsumption,
% 1.03/0.99                [status(thm)],
% 1.03/0.99                [c_839,c_539,c_540,c_999,c_1004]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1224,plain,
% 1.03/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 1.03/0.99      | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top ),
% 1.03/0.99      inference(renaming,[status(thm)],[c_1223]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_10,plain,
% 1.03/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.03/0.99      | k7_relset_1(X1,X2,X0,X1) = k2_relset_1(X1,X2,X0) ),
% 1.03/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_175,plain,
% 1.03/0.99      ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sK4 != X2 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_13]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_176,plain,
% 1.03/0.99      ( k7_relset_1(X0,X1,sK4,X0) = k2_relset_1(X0,X1,sK4)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_175]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_998,plain,
% 1.03/0.99      ( k7_relset_1(sK1,sK2,sK4,sK1) = k2_relset_1(sK1,sK2,sK4) ),
% 1.03/0.99      inference(equality_resolution,[status(thm)],[c_176]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_8,plain,
% 1.03/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.03/0.99      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 1.03/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_193,plain,
% 1.03/0.99      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sK4 != X2 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_13]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_194,plain,
% 1.03/0.99      ( k7_relset_1(X0,X1,sK4,X2) = k9_relat_1(sK4,X2)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_193]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_994,plain,
% 1.03/0.99      ( k7_relset_1(sK1,sK2,sK4,X0) = k9_relat_1(sK4,X0) ),
% 1.03/0.99      inference(equality_resolution,[status(thm)],[c_194]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1031,plain,
% 1.03/0.99      ( k2_relset_1(sK1,sK2,sK4) = k9_relat_1(sK4,sK1) ),
% 1.03/0.99      inference(demodulation,[status(thm)],[c_998,c_994]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_12,negated_conjecture,
% 1.03/0.99      ( r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) ),
% 1.03/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_856,plain,
% 1.03/0.99      ( r2_hidden(sK3,k2_relset_1(sK1,sK2,sK4)) = iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1033,plain,
% 1.03/0.99      ( r2_hidden(sK3,k9_relat_1(sK4,sK1)) = iProver_top ),
% 1.03/0.99      inference(demodulation,[status(thm)],[c_1031,c_856]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_2,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
% 1.03/0.99      | ~ v1_relat_1(X1) ),
% 1.03/0.99      inference(cnf_transformation,[],[f26]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_337,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 1.03/0.99      | sK4 != X1 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_203]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_338,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_337]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_493,plain,
% 1.03/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
% 1.03/0.99      | ~ sP3_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[sP3_iProver_split])],
% 1.03/0.99                [c_338]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_842,plain,
% 1.03/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
% 1.03/0.99      | sP3_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_493]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_494,plain,
% 1.03/0.99      ( sP3_iProver_split | sP0_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[])],
% 1.03/0.99                [c_338]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_544,plain,
% 1.03/0.99      ( sP3_iProver_split = iProver_top
% 1.03/0.99      | sP0_iProver_split = iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_494]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_545,plain,
% 1.03/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
% 1.03/0.99      | sP3_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_493]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1343,plain,
% 1.03/0.99      ( r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
% 1.03/0.99      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 1.03/0.99      inference(global_propositional_subsumption,
% 1.03/0.99                [status(thm)],
% 1.03/0.99                [c_842,c_544,c_545,c_999,c_1004]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1344,plain,
% 1.03/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 1.03/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top ),
% 1.03/0.99      inference(renaming,[status(thm)],[c_1343]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_5,plain,
% 1.03/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 1.03/0.99      | ~ v1_funct_1(X2)
% 1.03/0.99      | ~ v1_relat_1(X2)
% 1.03/0.99      | k1_funct_1(X2,X0) = X1 ),
% 1.03/0.99      inference(cnf_transformation,[],[f30]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_253,plain,
% 1.03/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 1.03/0.99      | ~ v1_relat_1(X2)
% 1.03/0.99      | k1_funct_1(X2,X0) = X1
% 1.03/0.99      | sK4 != X2 ),
% 1.03/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_14]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_254,plain,
% 1.03/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 1.03/0.99      | ~ v1_relat_1(sK4)
% 1.03/0.99      | k1_funct_1(sK4,X0) = X1 ),
% 1.03/0.99      inference(unflattening,[status(thm)],[c_253]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_280,plain,
% 1.03/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 1.03/0.99      | k1_funct_1(sK4,X0) = X1
% 1.03/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 1.03/0.99      inference(resolution,[status(thm)],[c_203,c_254]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_501,plain,
% 1.03/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 1.03/0.99      | k1_funct_1(sK4,X0) = X1
% 1.03/0.99      | ~ sP7_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[sP7_iProver_split])],
% 1.03/0.99                [c_280]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_854,plain,
% 1.03/0.99      ( k1_funct_1(sK4,X0) = X1
% 1.03/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 1.03/0.99      | sP7_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_501]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_502,plain,
% 1.03/0.99      ( sP7_iProver_split | sP0_iProver_split ),
% 1.03/0.99      inference(splitting,
% 1.03/0.99                [splitting(split),new_symbols(definition,[])],
% 1.03/0.99                [c_280]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_564,plain,
% 1.03/0.99      ( sP7_iProver_split = iProver_top
% 1.03/0.99      | sP0_iProver_split = iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_502]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_565,plain,
% 1.03/0.99      ( k1_funct_1(sK4,X0) = X1
% 1.03/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 1.03/0.99      | sP7_iProver_split != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_501]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1191,plain,
% 1.03/0.99      ( r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 1.03/0.99      | k1_funct_1(sK4,X0) = X1 ),
% 1.03/0.99      inference(global_propositional_subsumption,
% 1.03/0.99                [status(thm)],
% 1.03/0.99                [c_854,c_564,c_565,c_999,c_1004]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1192,plain,
% 1.03/0.99      ( k1_funct_1(sK4,X0) = X1
% 1.03/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
% 1.03/0.99      inference(renaming,[status(thm)],[c_1191]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1353,plain,
% 1.03/0.99      ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
% 1.03/0.99      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 1.03/0.99      inference(superposition,[status(thm)],[c_1344,c_1192]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1524,plain,
% 1.03/0.99      ( k1_funct_1(sK4,sK0(sK3,sK1,sK4)) = sK3 ),
% 1.03/0.99      inference(superposition,[status(thm)],[c_1033,c_1353]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_11,negated_conjecture,
% 1.03/0.99      ( ~ r2_hidden(X0,sK1) | k1_funct_1(sK4,X0) != sK3 ),
% 1.03/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_857,plain,
% 1.03/0.99      ( k1_funct_1(sK4,X0) != sK3 | r2_hidden(X0,sK1) != iProver_top ),
% 1.03/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1536,plain,
% 1.03/0.99      ( r2_hidden(sK0(sK3,sK1,sK4),sK1) != iProver_top ),
% 1.03/0.99      inference(superposition,[status(thm)],[c_1524,c_857]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(c_1604,plain,
% 1.03/0.99      ( r2_hidden(sK3,k9_relat_1(sK4,sK1)) != iProver_top ),
% 1.03/0.99      inference(superposition,[status(thm)],[c_1224,c_1536]) ).
% 1.03/0.99  
% 1.03/0.99  cnf(contradiction,plain,
% 1.03/0.99      ( $false ),
% 1.03/0.99      inference(minisat,[status(thm)],[c_1604,c_1033]) ).
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.03/0.99  
% 1.03/0.99  ------                               Statistics
% 1.03/0.99  
% 1.03/0.99  ------ General
% 1.03/0.99  
% 1.03/0.99  abstr_ref_over_cycles:                  0
% 1.03/0.99  abstr_ref_under_cycles:                 0
% 1.03/0.99  gc_basic_clause_elim:                   0
% 1.03/0.99  forced_gc_time:                         0
% 1.03/0.99  parsing_time:                           0.008
% 1.03/0.99  unif_index_cands_time:                  0.
% 1.03/0.99  unif_index_add_time:                    0.
% 1.03/0.99  orderings_time:                         0.
% 1.03/0.99  out_proof_time:                         0.009
% 1.03/0.99  total_time:                             0.079
% 1.03/0.99  num_of_symbols:                         58
% 1.03/0.99  num_of_terms:                           1169
% 1.03/0.99  
% 1.03/0.99  ------ Preprocessing
% 1.03/0.99  
% 1.03/0.99  num_of_splits:                          14
% 1.03/0.99  num_of_split_atoms:                     8
% 1.03/0.99  num_of_reused_defs:                     6
% 1.03/0.99  num_eq_ax_congr_red:                    43
% 1.03/0.99  num_of_sem_filtered_clauses:            1
% 1.03/0.99  num_of_subtypes:                        0
% 1.03/0.99  monotx_restored_types:                  0
% 1.03/0.99  sat_num_of_epr_types:                   0
% 1.03/0.99  sat_num_of_non_cyclic_types:            0
% 1.03/0.99  sat_guarded_non_collapsed_types:        0
% 1.03/0.99  num_pure_diseq_elim:                    0
% 1.03/0.99  simp_replaced_by:                       0
% 1.03/0.99  res_preprocessed:                       96
% 1.03/0.99  prep_upred:                             0
% 1.03/0.99  prep_unflattend:                        11
% 1.03/0.99  smt_new_axioms:                         0
% 1.03/0.99  pred_elim_cands:                        1
% 1.03/0.99  pred_elim:                              3
% 1.03/0.99  pred_elim_cl:                           3
% 1.03/0.99  pred_elim_cycles:                       5
% 1.03/0.99  merged_defs:                            0
% 1.03/0.99  merged_defs_ncl:                        0
% 1.03/0.99  bin_hyper_res:                          0
% 1.03/0.99  prep_cycles:                            4
% 1.03/0.99  pred_elim_time:                         0.004
% 1.03/0.99  splitting_time:                         0.
% 1.03/0.99  sem_filter_time:                        0.
% 1.03/0.99  monotx_time:                            0.
% 1.03/0.99  subtype_inf_time:                       0.
% 1.03/0.99  
% 1.03/0.99  ------ Problem properties
% 1.03/0.99  
% 1.03/0.99  clauses:                                26
% 1.03/0.99  conjectures:                            2
% 1.03/0.99  epr:                                    7
% 1.03/0.99  horn:                                   19
% 1.03/0.99  ground:                                 8
% 1.03/0.99  unary:                                  1
% 1.03/0.99  binary:                                 18
% 1.03/0.99  lits:                                   59
% 1.03/0.99  lits_eq:                                15
% 1.03/0.99  fd_pure:                                0
% 1.03/0.99  fd_pseudo:                              0
% 1.03/0.99  fd_cond:                                0
% 1.03/0.99  fd_pseudo_cond:                         1
% 1.03/0.99  ac_symbols:                             0
% 1.03/0.99  
% 1.03/0.99  ------ Propositional Solver
% 1.03/0.99  
% 1.03/0.99  prop_solver_calls:                      29
% 1.03/0.99  prop_fast_solver_calls:                 597
% 1.03/0.99  smt_solver_calls:                       0
% 1.03/0.99  smt_fast_solver_calls:                  0
% 1.03/0.99  prop_num_of_clauses:                    458
% 1.03/0.99  prop_preprocess_simplified:             2665
% 1.03/0.99  prop_fo_subsumed:                       15
% 1.03/0.99  prop_solver_time:                       0.
% 1.03/0.99  smt_solver_time:                        0.
% 1.03/0.99  smt_fast_solver_time:                   0.
% 1.03/0.99  prop_fast_solver_time:                  0.
% 1.03/0.99  prop_unsat_core_time:                   0.
% 1.03/0.99  
% 1.03/0.99  ------ QBF
% 1.03/0.99  
% 1.03/0.99  qbf_q_res:                              0
% 1.03/0.99  qbf_num_tautologies:                    0
% 1.03/0.99  qbf_prep_cycles:                        0
% 1.03/0.99  
% 1.03/0.99  ------ BMC1
% 1.03/0.99  
% 1.03/0.99  bmc1_current_bound:                     -1
% 1.03/0.99  bmc1_last_solved_bound:                 -1
% 1.03/0.99  bmc1_unsat_core_size:                   -1
% 1.03/0.99  bmc1_unsat_core_parents_size:           -1
% 1.03/0.99  bmc1_merge_next_fun:                    0
% 1.03/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.03/0.99  
% 1.03/0.99  ------ Instantiation
% 1.03/0.99  
% 1.03/0.99  inst_num_of_clauses:                    136
% 1.03/0.99  inst_num_in_passive:                    12
% 1.03/0.99  inst_num_in_active:                     116
% 1.03/0.99  inst_num_in_unprocessed:                8
% 1.03/0.99  inst_num_of_loops:                      140
% 1.03/0.99  inst_num_of_learning_restarts:          0
% 1.03/0.99  inst_num_moves_active_passive:          17
% 1.03/0.99  inst_lit_activity:                      0
% 1.03/0.99  inst_lit_activity_moves:                0
% 1.03/0.99  inst_num_tautologies:                   0
% 1.03/0.99  inst_num_prop_implied:                  0
% 1.03/0.99  inst_num_existing_simplified:           0
% 1.03/0.99  inst_num_eq_res_simplified:             0
% 1.03/0.99  inst_num_child_elim:                    0
% 1.03/0.99  inst_num_of_dismatching_blockings:      21
% 1.03/0.99  inst_num_of_non_proper_insts:           116
% 1.03/0.99  inst_num_of_duplicates:                 0
% 1.03/0.99  inst_inst_num_from_inst_to_res:         0
% 1.03/0.99  inst_dismatching_checking_time:         0.
% 1.03/0.99  
% 1.03/0.99  ------ Resolution
% 1.03/0.99  
% 1.03/0.99  res_num_of_clauses:                     0
% 1.03/0.99  res_num_in_passive:                     0
% 1.03/0.99  res_num_in_active:                      0
% 1.03/0.99  res_num_of_loops:                       100
% 1.03/0.99  res_forward_subset_subsumed:            37
% 1.03/0.99  res_backward_subset_subsumed:           0
% 1.03/0.99  res_forward_subsumed:                   0
% 1.03/0.99  res_backward_subsumed:                  0
% 1.03/0.99  res_forward_subsumption_resolution:     1
% 1.03/0.99  res_backward_subsumption_resolution:    0
% 1.03/0.99  res_clause_to_clause_subsumption:       33
% 1.03/0.99  res_orphan_elimination:                 0
% 1.03/0.99  res_tautology_del:                      26
% 1.03/0.99  res_num_eq_res_simplified:              0
% 1.03/0.99  res_num_sel_changes:                    0
% 1.03/0.99  res_moves_from_active_to_pass:          0
% 1.03/0.99  
% 1.03/0.99  ------ Superposition
% 1.03/0.99  
% 1.03/0.99  sup_time_total:                         0.
% 1.03/0.99  sup_time_generating:                    0.
% 1.03/0.99  sup_time_sim_full:                      0.
% 1.03/0.99  sup_time_sim_immed:                     0.
% 1.03/0.99  
% 1.03/0.99  sup_num_of_clauses:                     31
% 1.03/0.99  sup_num_in_active:                      26
% 1.03/0.99  sup_num_in_passive:                     5
% 1.03/0.99  sup_num_of_loops:                       26
% 1.03/0.99  sup_fw_superposition:                   3
% 1.03/0.99  sup_bw_superposition:                   8
% 1.03/0.99  sup_immediate_simplified:               0
% 1.03/0.99  sup_given_eliminated:                   0
% 1.03/0.99  comparisons_done:                       0
% 1.03/0.99  comparisons_avoided:                    0
% 1.03/0.99  
% 1.03/0.99  ------ Simplifications
% 1.03/0.99  
% 1.03/0.99  
% 1.03/0.99  sim_fw_subset_subsumed:                 0
% 1.03/0.99  sim_bw_subset_subsumed:                 0
% 1.03/0.99  sim_fw_subsumed:                        0
% 1.03/0.99  sim_bw_subsumed:                        0
% 1.03/0.99  sim_fw_subsumption_res:                 0
% 1.03/0.99  sim_bw_subsumption_res:                 0
% 1.03/0.99  sim_tautology_del:                      1
% 1.03/0.99  sim_eq_tautology_del:                   1
% 1.03/0.99  sim_eq_res_simp:                        0
% 1.03/0.99  sim_fw_demodulated:                     1
% 1.03/0.99  sim_bw_demodulated:                     1
% 1.03/0.99  sim_light_normalised:                   0
% 1.03/0.99  sim_joinable_taut:                      0
% 1.03/0.99  sim_joinable_simp:                      0
% 1.03/0.99  sim_ac_normalised:                      0
% 1.03/0.99  sim_smt_subsumption:                    0
% 1.03/0.99  
%------------------------------------------------------------------------------
