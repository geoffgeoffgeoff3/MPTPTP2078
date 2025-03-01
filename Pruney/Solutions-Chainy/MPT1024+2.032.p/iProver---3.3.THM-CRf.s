%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:07:53 EST 2020

% Result     : Theorem 2.33s
% Output     : CNFRefutation 2.33s
% Verified   : 
% Statistics : Number of formulae       :  105 ( 629 expanded)
%              Number of clauses        :   66 ( 213 expanded)
%              Number of leaves         :   11 ( 135 expanded)
%              Depth                    :   23
%              Number of atoms          :  338 (2929 expanded)
%              Number of equality atoms :  116 ( 537 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f20,plain,(
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
    inference(nnf_transformation,[],[f11])).

fof(f21,plain,(
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
    inference(rectify,[],[f20])).

fof(f22,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X4,X0),X2)
          & r2_hidden(X4,k1_relat_1(X2)) )
     => ( r2_hidden(sK0(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
        & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK0(X0,X1,X2),X1)
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f7,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ~ ( ! [X5] :
                ~ ( k1_funct_1(X3,X5) = X4
                  & r2_hidden(X5,X2)
                  & r2_hidden(X5,X0) )
            & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ! [X4] :
            ~ ( ! [X5] :
                  ~ ( k1_funct_1(X3,X5) = X4
                    & r2_hidden(X5,X2)
                    & r2_hidden(X5,X0) )
              & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f9,plain,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_1(X3) )
       => ! [X4] :
            ~ ( ! [X5] :
                  ~ ( k1_funct_1(X3,X5) = X4
                    & r2_hidden(X5,X2)
                    & r2_hidden(X5,X0) )
              & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f16,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(X3,X5) != X4
              | ~ r2_hidden(X5,X2)
              | ~ r2_hidden(X5,X0) )
          & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f17,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(X3,X5) != X4
              | ~ r2_hidden(X5,X2)
              | ~ r2_hidden(X5,X0) )
          & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f16])).

fof(f27,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(X3,X5) != X4
              | ~ r2_hidden(X5,X2)
              | ~ r2_hidden(X5,X0) )
          & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
     => ( ! [X5] :
            ( k1_funct_1(X3,X5) != sK5
            | ~ r2_hidden(X5,X2)
            | ~ r2_hidden(X5,X0) )
        & r2_hidden(sK5,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0,X1,X2,X3] :
        ( ? [X4] :
            ( ! [X5] :
                ( k1_funct_1(X3,X5) != X4
                | ~ r2_hidden(X5,X2)
                | ~ r2_hidden(X5,X0) )
            & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X3) )
   => ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(sK4,X5) != X4
              | ~ r2_hidden(X5,sK3)
              | ~ r2_hidden(X5,sK1) )
          & r2_hidden(X4,k7_relset_1(sK1,sK2,sK4,sK3)) )
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ! [X5] :
        ( k1_funct_1(sK4,X5) != sK5
        | ~ r2_hidden(X5,sK3)
        | ~ r2_hidden(X5,sK1) )
    & r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3))
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5])],[f17,f27,f26])).

fof(f43,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f28])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(flattening,[],[f18])).

fof(f29,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,X2)
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f41,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f44,plain,(
    r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3)) ),
    inference(cnf_transformation,[],[f28])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f12])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X2,X0) = X1
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f42,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f28])).

fof(f45,plain,(
    ! [X5] :
      ( k1_funct_1(sK4,X5) != sK5
      | ~ r2_hidden(X5,sK3)
      | ~ r2_hidden(X5,sK1) ) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK0(X0,X2,X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_214,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_15])).

cnf(c_215,plain,
    ( v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_214])).

cnf(c_386,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK0(X0,X2,X1),X2)
    | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_215])).

cnf(c_387,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(sK0(X0,X1,sK4),X1)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_386])).

cnf(c_523,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(sK0(X0,X1,sK4),X1)
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_387])).

cnf(c_922,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_523])).

cnf(c_524,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_387])).

cnf(c_560,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_524])).

cnf(c_561,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_523])).

cnf(c_538,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1105,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_538])).

cnf(c_522,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_387])).

cnf(c_1106,plain,
    ( ~ sP0_iProver_split
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_522])).

cnf(c_1108,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1106])).

cnf(c_1189,plain,
    ( r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_922,c_560,c_561,c_1105,c_1108])).

cnf(c_1190,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top ),
    inference(renaming,[status(thm)],[c_1189])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_371,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
    | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_215])).

cnf(c_372,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_371])).

cnf(c_525,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
    | ~ sP2_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP2_iProver_split])],[c_372])).

cnf(c_925,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
    | sP2_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_526,plain,
    ( sP2_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_372])).

cnf(c_567,plain,
    ( sP2_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_526])).

cnf(c_568,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
    | sP2_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_1478,plain,
    ( r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_925,c_567,c_568,c_1105,c_1108])).

cnf(c_1479,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top ),
    inference(renaming,[status(thm)],[c_1478])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_192,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(X2)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_15])).

cnf(c_193,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,sK4)
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(X1) ),
    inference(unflattening,[status(thm)],[c_192])).

cnf(c_942,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(X0)
    | r2_hidden(X1,X0) = iProver_top
    | r2_hidden(X1,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_193])).

cnf(c_1132,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK1,sK2)) = iProver_top
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_942])).

cnf(c_2,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_945,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1200,plain,
    ( r2_hidden(X0,sK1) = iProver_top
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1132,c_945])).

cnf(c_1488,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | r2_hidden(sK0(X0,X1,sK4),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1479,c_1200])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_205,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_15])).

cnf(c_206,plain,
    ( k7_relset_1(X0,X1,sK4,X2) = k9_relat_1(sK4,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_205])).

cnf(c_1103,plain,
    ( k7_relset_1(sK1,sK2,sK4,X0) = k9_relat_1(sK4,X0) ),
    inference(equality_resolution,[status(thm)],[c_206])).

cnf(c_14,negated_conjecture,
    ( r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_943,plain,
    ( r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1115,plain,
    ( r2_hidden(sK5,k9_relat_1(sK4,sK3)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1103,c_943])).

cnf(c_9,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | k1_funct_1(X2,X0) = X1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_16,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_235,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ v1_relat_1(X2)
    | k1_funct_1(X2,X0) = X1
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_16])).

cnf(c_236,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | ~ v1_relat_1(sK4)
    | k1_funct_1(sK4,X0) = X1 ),
    inference(unflattening,[status(thm)],[c_235])).

cnf(c_320,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | k1_funct_1(sK4,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(resolution,[status(thm)],[c_215,c_236])).

cnf(c_531,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | k1_funct_1(sK4,X0) = X1
    | ~ sP5_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP5_iProver_split])],[c_320])).

cnf(c_934,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | sP5_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_531])).

cnf(c_532,plain,
    ( sP5_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_320])).

cnf(c_582,plain,
    ( sP5_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_532])).

cnf(c_583,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | sP5_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_531])).

cnf(c_1383,plain,
    ( r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | k1_funct_1(sK4,X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_934,c_582,c_583,c_1105,c_1108])).

cnf(c_1384,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_1383])).

cnf(c_1487,plain,
    ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1479,c_1384])).

cnf(c_2450,plain,
    ( k1_funct_1(sK4,sK0(sK5,sK3,sK4)) = sK5 ),
    inference(superposition,[status(thm)],[c_1115,c_1487])).

cnf(c_13,negated_conjecture,
    ( ~ r2_hidden(X0,sK1)
    | ~ r2_hidden(X0,sK3)
    | k1_funct_1(sK4,X0) != sK5 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_944,plain,
    ( k1_funct_1(sK4,X0) != sK5
    | r2_hidden(X0,sK1) != iProver_top
    | r2_hidden(X0,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2463,plain,
    ( r2_hidden(sK0(sK5,sK3,sK4),sK1) != iProver_top
    | r2_hidden(sK0(sK5,sK3,sK4),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2450,c_944])).

cnf(c_2539,plain,
    ( r2_hidden(sK0(sK5,sK3,sK4),sK3) != iProver_top
    | r2_hidden(sK5,k9_relat_1(sK4,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1488,c_2463])).

cnf(c_3053,plain,
    ( r2_hidden(sK0(sK5,sK3,sK4),sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2539,c_1115])).

cnf(c_3058,plain,
    ( r2_hidden(sK5,k9_relat_1(sK4,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1190,c_3053])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3058,c_1115])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n017.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:12:31 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.33/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.33/0.98  
% 2.33/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.33/0.98  
% 2.33/0.98  ------  iProver source info
% 2.33/0.98  
% 2.33/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.33/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.33/0.98  git: non_committed_changes: false
% 2.33/0.98  git: last_make_outside_of_git: false
% 2.33/0.98  
% 2.33/0.98  ------ 
% 2.33/0.98  
% 2.33/0.98  ------ Input Options
% 2.33/0.98  
% 2.33/0.98  --out_options                           all
% 2.33/0.98  --tptp_safe_out                         true
% 2.33/0.98  --problem_path                          ""
% 2.33/0.98  --include_path                          ""
% 2.33/0.98  --clausifier                            res/vclausify_rel
% 2.33/0.98  --clausifier_options                    --mode clausify
% 2.33/0.98  --stdin                                 false
% 2.33/0.98  --stats_out                             all
% 2.33/0.98  
% 2.33/0.98  ------ General Options
% 2.33/0.98  
% 2.33/0.98  --fof                                   false
% 2.33/0.98  --time_out_real                         305.
% 2.33/0.98  --time_out_virtual                      -1.
% 2.33/0.98  --symbol_type_check                     false
% 2.33/0.98  --clausify_out                          false
% 2.33/0.98  --sig_cnt_out                           false
% 2.33/0.98  --trig_cnt_out                          false
% 2.33/0.98  --trig_cnt_out_tolerance                1.
% 2.33/0.98  --trig_cnt_out_sk_spl                   false
% 2.33/0.98  --abstr_cl_out                          false
% 2.33/0.98  
% 2.33/0.98  ------ Global Options
% 2.33/0.98  
% 2.33/0.98  --schedule                              default
% 2.33/0.98  --add_important_lit                     false
% 2.33/0.98  --prop_solver_per_cl                    1000
% 2.33/0.98  --min_unsat_core                        false
% 2.33/0.98  --soft_assumptions                      false
% 2.33/0.98  --soft_lemma_size                       3
% 2.33/0.98  --prop_impl_unit_size                   0
% 2.33/0.98  --prop_impl_unit                        []
% 2.33/0.98  --share_sel_clauses                     true
% 2.33/0.98  --reset_solvers                         false
% 2.33/0.98  --bc_imp_inh                            [conj_cone]
% 2.33/0.98  --conj_cone_tolerance                   3.
% 2.33/0.98  --extra_neg_conj                        none
% 2.33/0.98  --large_theory_mode                     true
% 2.33/0.98  --prolific_symb_bound                   200
% 2.33/0.98  --lt_threshold                          2000
% 2.33/0.98  --clause_weak_htbl                      true
% 2.33/0.98  --gc_record_bc_elim                     false
% 2.33/0.98  
% 2.33/0.98  ------ Preprocessing Options
% 2.33/0.98  
% 2.33/0.98  --preprocessing_flag                    true
% 2.33/0.98  --time_out_prep_mult                    0.1
% 2.33/0.98  --splitting_mode                        input
% 2.33/0.98  --splitting_grd                         true
% 2.33/0.98  --splitting_cvd                         false
% 2.33/0.98  --splitting_cvd_svl                     false
% 2.33/0.98  --splitting_nvd                         32
% 2.33/0.98  --sub_typing                            true
% 2.33/0.98  --prep_gs_sim                           true
% 2.33/0.98  --prep_unflatten                        true
% 2.33/0.98  --prep_res_sim                          true
% 2.33/0.98  --prep_upred                            true
% 2.33/0.98  --prep_sem_filter                       exhaustive
% 2.33/0.98  --prep_sem_filter_out                   false
% 2.33/0.98  --pred_elim                             true
% 2.33/0.98  --res_sim_input                         true
% 2.33/0.98  --eq_ax_congr_red                       true
% 2.33/0.98  --pure_diseq_elim                       true
% 2.33/0.98  --brand_transform                       false
% 2.33/0.98  --non_eq_to_eq                          false
% 2.33/0.98  --prep_def_merge                        true
% 2.33/0.98  --prep_def_merge_prop_impl              false
% 2.33/0.98  --prep_def_merge_mbd                    true
% 2.33/0.98  --prep_def_merge_tr_red                 false
% 2.33/0.98  --prep_def_merge_tr_cl                  false
% 2.33/0.98  --smt_preprocessing                     true
% 2.33/0.98  --smt_ac_axioms                         fast
% 2.33/0.98  --preprocessed_out                      false
% 2.33/0.98  --preprocessed_stats                    false
% 2.33/0.98  
% 2.33/0.98  ------ Abstraction refinement Options
% 2.33/0.98  
% 2.33/0.98  --abstr_ref                             []
% 2.33/0.98  --abstr_ref_prep                        false
% 2.33/0.98  --abstr_ref_until_sat                   false
% 2.33/0.98  --abstr_ref_sig_restrict                funpre
% 2.33/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.33/0.98  --abstr_ref_under                       []
% 2.33/0.98  
% 2.33/0.98  ------ SAT Options
% 2.33/0.98  
% 2.33/0.98  --sat_mode                              false
% 2.33/0.98  --sat_fm_restart_options                ""
% 2.33/0.98  --sat_gr_def                            false
% 2.33/0.98  --sat_epr_types                         true
% 2.33/0.98  --sat_non_cyclic_types                  false
% 2.33/0.98  --sat_finite_models                     false
% 2.33/0.98  --sat_fm_lemmas                         false
% 2.33/0.98  --sat_fm_prep                           false
% 2.33/0.98  --sat_fm_uc_incr                        true
% 2.33/0.98  --sat_out_model                         small
% 2.33/0.98  --sat_out_clauses                       false
% 2.33/0.98  
% 2.33/0.98  ------ QBF Options
% 2.33/0.98  
% 2.33/0.98  --qbf_mode                              false
% 2.33/0.98  --qbf_elim_univ                         false
% 2.33/0.98  --qbf_dom_inst                          none
% 2.33/0.98  --qbf_dom_pre_inst                      false
% 2.33/0.98  --qbf_sk_in                             false
% 2.33/0.98  --qbf_pred_elim                         true
% 2.33/0.98  --qbf_split                             512
% 2.33/0.98  
% 2.33/0.98  ------ BMC1 Options
% 2.33/0.98  
% 2.33/0.98  --bmc1_incremental                      false
% 2.33/0.98  --bmc1_axioms                           reachable_all
% 2.33/0.98  --bmc1_min_bound                        0
% 2.33/0.98  --bmc1_max_bound                        -1
% 2.33/0.98  --bmc1_max_bound_default                -1
% 2.33/0.98  --bmc1_symbol_reachability              true
% 2.33/0.98  --bmc1_property_lemmas                  false
% 2.33/0.98  --bmc1_k_induction                      false
% 2.33/0.98  --bmc1_non_equiv_states                 false
% 2.33/0.98  --bmc1_deadlock                         false
% 2.33/0.98  --bmc1_ucm                              false
% 2.33/0.98  --bmc1_add_unsat_core                   none
% 2.33/0.98  --bmc1_unsat_core_children              false
% 2.33/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.33/0.98  --bmc1_out_stat                         full
% 2.33/0.98  --bmc1_ground_init                      false
% 2.33/0.98  --bmc1_pre_inst_next_state              false
% 2.33/0.98  --bmc1_pre_inst_state                   false
% 2.33/0.98  --bmc1_pre_inst_reach_state             false
% 2.33/0.98  --bmc1_out_unsat_core                   false
% 2.33/0.98  --bmc1_aig_witness_out                  false
% 2.33/0.98  --bmc1_verbose                          false
% 2.33/0.98  --bmc1_dump_clauses_tptp                false
% 2.33/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.33/0.98  --bmc1_dump_file                        -
% 2.33/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.33/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.33/0.98  --bmc1_ucm_extend_mode                  1
% 2.33/0.98  --bmc1_ucm_init_mode                    2
% 2.33/0.98  --bmc1_ucm_cone_mode                    none
% 2.33/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.33/0.98  --bmc1_ucm_relax_model                  4
% 2.33/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.33/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.33/0.98  --bmc1_ucm_layered_model                none
% 2.33/0.99  --bmc1_ucm_max_lemma_size               10
% 2.33/0.99  
% 2.33/0.99  ------ AIG Options
% 2.33/0.99  
% 2.33/0.99  --aig_mode                              false
% 2.33/0.99  
% 2.33/0.99  ------ Instantiation Options
% 2.33/0.99  
% 2.33/0.99  --instantiation_flag                    true
% 2.33/0.99  --inst_sos_flag                         false
% 2.33/0.99  --inst_sos_phase                        true
% 2.33/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.33/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.33/0.99  --inst_lit_sel_side                     num_symb
% 2.33/0.99  --inst_solver_per_active                1400
% 2.33/0.99  --inst_solver_calls_frac                1.
% 2.33/0.99  --inst_passive_queue_type               priority_queues
% 2.33/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.33/0.99  --inst_passive_queues_freq              [25;2]
% 2.33/0.99  --inst_dismatching                      true
% 2.33/0.99  --inst_eager_unprocessed_to_passive     true
% 2.33/0.99  --inst_prop_sim_given                   true
% 2.33/0.99  --inst_prop_sim_new                     false
% 2.33/0.99  --inst_subs_new                         false
% 2.33/0.99  --inst_eq_res_simp                      false
% 2.33/0.99  --inst_subs_given                       false
% 2.33/0.99  --inst_orphan_elimination               true
% 2.33/0.99  --inst_learning_loop_flag               true
% 2.33/0.99  --inst_learning_start                   3000
% 2.33/0.99  --inst_learning_factor                  2
% 2.33/0.99  --inst_start_prop_sim_after_learn       3
% 2.33/0.99  --inst_sel_renew                        solver
% 2.33/0.99  --inst_lit_activity_flag                true
% 2.33/0.99  --inst_restr_to_given                   false
% 2.33/0.99  --inst_activity_threshold               500
% 2.33/0.99  --inst_out_proof                        true
% 2.33/0.99  
% 2.33/0.99  ------ Resolution Options
% 2.33/0.99  
% 2.33/0.99  --resolution_flag                       true
% 2.33/0.99  --res_lit_sel                           adaptive
% 2.33/0.99  --res_lit_sel_side                      none
% 2.33/0.99  --res_ordering                          kbo
% 2.33/0.99  --res_to_prop_solver                    active
% 2.33/0.99  --res_prop_simpl_new                    false
% 2.33/0.99  --res_prop_simpl_given                  true
% 2.33/0.99  --res_passive_queue_type                priority_queues
% 2.33/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.33/0.99  --res_passive_queues_freq               [15;5]
% 2.33/0.99  --res_forward_subs                      full
% 2.33/0.99  --res_backward_subs                     full
% 2.33/0.99  --res_forward_subs_resolution           true
% 2.33/0.99  --res_backward_subs_resolution          true
% 2.33/0.99  --res_orphan_elimination                true
% 2.33/0.99  --res_time_limit                        2.
% 2.33/0.99  --res_out_proof                         true
% 2.33/0.99  
% 2.33/0.99  ------ Superposition Options
% 2.33/0.99  
% 2.33/0.99  --superposition_flag                    true
% 2.33/0.99  --sup_passive_queue_type                priority_queues
% 2.33/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.33/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.33/0.99  --demod_completeness_check              fast
% 2.33/0.99  --demod_use_ground                      true
% 2.33/0.99  --sup_to_prop_solver                    passive
% 2.33/0.99  --sup_prop_simpl_new                    true
% 2.33/0.99  --sup_prop_simpl_given                  true
% 2.33/0.99  --sup_fun_splitting                     false
% 2.33/0.99  --sup_smt_interval                      50000
% 2.33/0.99  
% 2.33/0.99  ------ Superposition Simplification Setup
% 2.33/0.99  
% 2.33/0.99  --sup_indices_passive                   []
% 2.33/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.33/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/0.99  --sup_full_bw                           [BwDemod]
% 2.33/0.99  --sup_immed_triv                        [TrivRules]
% 2.33/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.33/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/0.99  --sup_immed_bw_main                     []
% 2.33/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.33/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/0.99  
% 2.33/0.99  ------ Combination Options
% 2.33/0.99  
% 2.33/0.99  --comb_res_mult                         3
% 2.33/0.99  --comb_sup_mult                         2
% 2.33/0.99  --comb_inst_mult                        10
% 2.33/0.99  
% 2.33/0.99  ------ Debug Options
% 2.33/0.99  
% 2.33/0.99  --dbg_backtrace                         false
% 2.33/0.99  --dbg_dump_prop_clauses                 false
% 2.33/0.99  --dbg_dump_prop_clauses_file            -
% 2.33/0.99  --dbg_out_stat                          false
% 2.33/0.99  ------ Parsing...
% 2.33/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.33/0.99  
% 2.33/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.33/0.99  
% 2.33/0.99  ------ Preprocessing... gs_s  sp: 14 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.33/0.99  
% 2.33/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.33/0.99  ------ Proving...
% 2.33/0.99  ------ Problem Properties 
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  clauses                                 28
% 2.33/0.99  conjectures                             2
% 2.33/0.99  EPR                                     7
% 2.33/0.99  Horn                                    21
% 2.33/0.99  unary                                   1
% 2.33/0.99  binary                                  17
% 2.33/0.99  lits                                    66
% 2.33/0.99  lits eq                                 12
% 2.33/0.99  fd_pure                                 0
% 2.33/0.99  fd_pseudo                               0
% 2.33/0.99  fd_cond                                 0
% 2.33/0.99  fd_pseudo_cond                          1
% 2.33/0.99  AC symbols                              0
% 2.33/0.99  
% 2.33/0.99  ------ Schedule dynamic 5 is on 
% 2.33/0.99  
% 2.33/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  ------ 
% 2.33/0.99  Current options:
% 2.33/0.99  ------ 
% 2.33/0.99  
% 2.33/0.99  ------ Input Options
% 2.33/0.99  
% 2.33/0.99  --out_options                           all
% 2.33/0.99  --tptp_safe_out                         true
% 2.33/0.99  --problem_path                          ""
% 2.33/0.99  --include_path                          ""
% 2.33/0.99  --clausifier                            res/vclausify_rel
% 2.33/0.99  --clausifier_options                    --mode clausify
% 2.33/0.99  --stdin                                 false
% 2.33/0.99  --stats_out                             all
% 2.33/0.99  
% 2.33/0.99  ------ General Options
% 2.33/0.99  
% 2.33/0.99  --fof                                   false
% 2.33/0.99  --time_out_real                         305.
% 2.33/0.99  --time_out_virtual                      -1.
% 2.33/0.99  --symbol_type_check                     false
% 2.33/0.99  --clausify_out                          false
% 2.33/0.99  --sig_cnt_out                           false
% 2.33/0.99  --trig_cnt_out                          false
% 2.33/0.99  --trig_cnt_out_tolerance                1.
% 2.33/0.99  --trig_cnt_out_sk_spl                   false
% 2.33/0.99  --abstr_cl_out                          false
% 2.33/0.99  
% 2.33/0.99  ------ Global Options
% 2.33/0.99  
% 2.33/0.99  --schedule                              default
% 2.33/0.99  --add_important_lit                     false
% 2.33/0.99  --prop_solver_per_cl                    1000
% 2.33/0.99  --min_unsat_core                        false
% 2.33/0.99  --soft_assumptions                      false
% 2.33/0.99  --soft_lemma_size                       3
% 2.33/0.99  --prop_impl_unit_size                   0
% 2.33/0.99  --prop_impl_unit                        []
% 2.33/0.99  --share_sel_clauses                     true
% 2.33/0.99  --reset_solvers                         false
% 2.33/0.99  --bc_imp_inh                            [conj_cone]
% 2.33/0.99  --conj_cone_tolerance                   3.
% 2.33/0.99  --extra_neg_conj                        none
% 2.33/0.99  --large_theory_mode                     true
% 2.33/0.99  --prolific_symb_bound                   200
% 2.33/0.99  --lt_threshold                          2000
% 2.33/0.99  --clause_weak_htbl                      true
% 2.33/0.99  --gc_record_bc_elim                     false
% 2.33/0.99  
% 2.33/0.99  ------ Preprocessing Options
% 2.33/0.99  
% 2.33/0.99  --preprocessing_flag                    true
% 2.33/0.99  --time_out_prep_mult                    0.1
% 2.33/0.99  --splitting_mode                        input
% 2.33/0.99  --splitting_grd                         true
% 2.33/0.99  --splitting_cvd                         false
% 2.33/0.99  --splitting_cvd_svl                     false
% 2.33/0.99  --splitting_nvd                         32
% 2.33/0.99  --sub_typing                            true
% 2.33/0.99  --prep_gs_sim                           true
% 2.33/0.99  --prep_unflatten                        true
% 2.33/0.99  --prep_res_sim                          true
% 2.33/0.99  --prep_upred                            true
% 2.33/0.99  --prep_sem_filter                       exhaustive
% 2.33/0.99  --prep_sem_filter_out                   false
% 2.33/0.99  --pred_elim                             true
% 2.33/0.99  --res_sim_input                         true
% 2.33/0.99  --eq_ax_congr_red                       true
% 2.33/0.99  --pure_diseq_elim                       true
% 2.33/0.99  --brand_transform                       false
% 2.33/0.99  --non_eq_to_eq                          false
% 2.33/0.99  --prep_def_merge                        true
% 2.33/0.99  --prep_def_merge_prop_impl              false
% 2.33/0.99  --prep_def_merge_mbd                    true
% 2.33/0.99  --prep_def_merge_tr_red                 false
% 2.33/0.99  --prep_def_merge_tr_cl                  false
% 2.33/0.99  --smt_preprocessing                     true
% 2.33/0.99  --smt_ac_axioms                         fast
% 2.33/0.99  --preprocessed_out                      false
% 2.33/0.99  --preprocessed_stats                    false
% 2.33/0.99  
% 2.33/0.99  ------ Abstraction refinement Options
% 2.33/0.99  
% 2.33/0.99  --abstr_ref                             []
% 2.33/0.99  --abstr_ref_prep                        false
% 2.33/0.99  --abstr_ref_until_sat                   false
% 2.33/0.99  --abstr_ref_sig_restrict                funpre
% 2.33/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.33/0.99  --abstr_ref_under                       []
% 2.33/0.99  
% 2.33/0.99  ------ SAT Options
% 2.33/0.99  
% 2.33/0.99  --sat_mode                              false
% 2.33/0.99  --sat_fm_restart_options                ""
% 2.33/0.99  --sat_gr_def                            false
% 2.33/0.99  --sat_epr_types                         true
% 2.33/0.99  --sat_non_cyclic_types                  false
% 2.33/0.99  --sat_finite_models                     false
% 2.33/0.99  --sat_fm_lemmas                         false
% 2.33/0.99  --sat_fm_prep                           false
% 2.33/0.99  --sat_fm_uc_incr                        true
% 2.33/0.99  --sat_out_model                         small
% 2.33/0.99  --sat_out_clauses                       false
% 2.33/0.99  
% 2.33/0.99  ------ QBF Options
% 2.33/0.99  
% 2.33/0.99  --qbf_mode                              false
% 2.33/0.99  --qbf_elim_univ                         false
% 2.33/0.99  --qbf_dom_inst                          none
% 2.33/0.99  --qbf_dom_pre_inst                      false
% 2.33/0.99  --qbf_sk_in                             false
% 2.33/0.99  --qbf_pred_elim                         true
% 2.33/0.99  --qbf_split                             512
% 2.33/0.99  
% 2.33/0.99  ------ BMC1 Options
% 2.33/0.99  
% 2.33/0.99  --bmc1_incremental                      false
% 2.33/0.99  --bmc1_axioms                           reachable_all
% 2.33/0.99  --bmc1_min_bound                        0
% 2.33/0.99  --bmc1_max_bound                        -1
% 2.33/0.99  --bmc1_max_bound_default                -1
% 2.33/0.99  --bmc1_symbol_reachability              true
% 2.33/0.99  --bmc1_property_lemmas                  false
% 2.33/0.99  --bmc1_k_induction                      false
% 2.33/0.99  --bmc1_non_equiv_states                 false
% 2.33/0.99  --bmc1_deadlock                         false
% 2.33/0.99  --bmc1_ucm                              false
% 2.33/0.99  --bmc1_add_unsat_core                   none
% 2.33/0.99  --bmc1_unsat_core_children              false
% 2.33/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.33/0.99  --bmc1_out_stat                         full
% 2.33/0.99  --bmc1_ground_init                      false
% 2.33/0.99  --bmc1_pre_inst_next_state              false
% 2.33/0.99  --bmc1_pre_inst_state                   false
% 2.33/0.99  --bmc1_pre_inst_reach_state             false
% 2.33/0.99  --bmc1_out_unsat_core                   false
% 2.33/0.99  --bmc1_aig_witness_out                  false
% 2.33/0.99  --bmc1_verbose                          false
% 2.33/0.99  --bmc1_dump_clauses_tptp                false
% 2.33/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.33/0.99  --bmc1_dump_file                        -
% 2.33/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.33/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.33/0.99  --bmc1_ucm_extend_mode                  1
% 2.33/0.99  --bmc1_ucm_init_mode                    2
% 2.33/0.99  --bmc1_ucm_cone_mode                    none
% 2.33/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.33/0.99  --bmc1_ucm_relax_model                  4
% 2.33/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.33/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.33/0.99  --bmc1_ucm_layered_model                none
% 2.33/0.99  --bmc1_ucm_max_lemma_size               10
% 2.33/0.99  
% 2.33/0.99  ------ AIG Options
% 2.33/0.99  
% 2.33/0.99  --aig_mode                              false
% 2.33/0.99  
% 2.33/0.99  ------ Instantiation Options
% 2.33/0.99  
% 2.33/0.99  --instantiation_flag                    true
% 2.33/0.99  --inst_sos_flag                         false
% 2.33/0.99  --inst_sos_phase                        true
% 2.33/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.33/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.33/0.99  --inst_lit_sel_side                     none
% 2.33/0.99  --inst_solver_per_active                1400
% 2.33/0.99  --inst_solver_calls_frac                1.
% 2.33/0.99  --inst_passive_queue_type               priority_queues
% 2.33/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.33/0.99  --inst_passive_queues_freq              [25;2]
% 2.33/0.99  --inst_dismatching                      true
% 2.33/0.99  --inst_eager_unprocessed_to_passive     true
% 2.33/0.99  --inst_prop_sim_given                   true
% 2.33/0.99  --inst_prop_sim_new                     false
% 2.33/0.99  --inst_subs_new                         false
% 2.33/0.99  --inst_eq_res_simp                      false
% 2.33/0.99  --inst_subs_given                       false
% 2.33/0.99  --inst_orphan_elimination               true
% 2.33/0.99  --inst_learning_loop_flag               true
% 2.33/0.99  --inst_learning_start                   3000
% 2.33/0.99  --inst_learning_factor                  2
% 2.33/0.99  --inst_start_prop_sim_after_learn       3
% 2.33/0.99  --inst_sel_renew                        solver
% 2.33/0.99  --inst_lit_activity_flag                true
% 2.33/0.99  --inst_restr_to_given                   false
% 2.33/0.99  --inst_activity_threshold               500
% 2.33/0.99  --inst_out_proof                        true
% 2.33/0.99  
% 2.33/0.99  ------ Resolution Options
% 2.33/0.99  
% 2.33/0.99  --resolution_flag                       false
% 2.33/0.99  --res_lit_sel                           adaptive
% 2.33/0.99  --res_lit_sel_side                      none
% 2.33/0.99  --res_ordering                          kbo
% 2.33/0.99  --res_to_prop_solver                    active
% 2.33/0.99  --res_prop_simpl_new                    false
% 2.33/0.99  --res_prop_simpl_given                  true
% 2.33/0.99  --res_passive_queue_type                priority_queues
% 2.33/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.33/0.99  --res_passive_queues_freq               [15;5]
% 2.33/0.99  --res_forward_subs                      full
% 2.33/0.99  --res_backward_subs                     full
% 2.33/0.99  --res_forward_subs_resolution           true
% 2.33/0.99  --res_backward_subs_resolution          true
% 2.33/0.99  --res_orphan_elimination                true
% 2.33/0.99  --res_time_limit                        2.
% 2.33/0.99  --res_out_proof                         true
% 2.33/0.99  
% 2.33/0.99  ------ Superposition Options
% 2.33/0.99  
% 2.33/0.99  --superposition_flag                    true
% 2.33/0.99  --sup_passive_queue_type                priority_queues
% 2.33/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.33/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.33/0.99  --demod_completeness_check              fast
% 2.33/0.99  --demod_use_ground                      true
% 2.33/0.99  --sup_to_prop_solver                    passive
% 2.33/0.99  --sup_prop_simpl_new                    true
% 2.33/0.99  --sup_prop_simpl_given                  true
% 2.33/0.99  --sup_fun_splitting                     false
% 2.33/0.99  --sup_smt_interval                      50000
% 2.33/0.99  
% 2.33/0.99  ------ Superposition Simplification Setup
% 2.33/0.99  
% 2.33/0.99  --sup_indices_passive                   []
% 2.33/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.33/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/0.99  --sup_full_bw                           [BwDemod]
% 2.33/0.99  --sup_immed_triv                        [TrivRules]
% 2.33/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.33/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/0.99  --sup_immed_bw_main                     []
% 2.33/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.33/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/0.99  
% 2.33/0.99  ------ Combination Options
% 2.33/0.99  
% 2.33/0.99  --comb_res_mult                         3
% 2.33/0.99  --comb_sup_mult                         2
% 2.33/0.99  --comb_inst_mult                        10
% 2.33/0.99  
% 2.33/0.99  ------ Debug Options
% 2.33/0.99  
% 2.33/0.99  --dbg_backtrace                         false
% 2.33/0.99  --dbg_dump_prop_clauses                 false
% 2.33/0.99  --dbg_dump_prop_clauses_file            -
% 2.33/0.99  --dbg_out_stat                          false
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  ------ Proving...
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  % SZS status Theorem for theBenchmark.p
% 2.33/0.99  
% 2.33/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.33/0.99  
% 2.33/0.99  fof(f3,axiom,(
% 2.33/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f11,plain,(
% 2.33/0.99    ! [X0,X1,X2] : ((r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(ennf_transformation,[],[f3])).
% 2.33/0.99  
% 2.33/0.99  fof(f20,plain,(
% 2.33/0.99    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(nnf_transformation,[],[f11])).
% 2.33/0.99  
% 2.33/0.99  fof(f21,plain,(
% 2.33/0.99    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(rectify,[],[f20])).
% 2.33/0.99  
% 2.33/0.99  fof(f22,plain,(
% 2.33/0.99    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) => (r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))))),
% 2.33/0.99    introduced(choice_axiom,[])).
% 2.33/0.99  
% 2.33/0.99  fof(f23,plain,(
% 2.33/0.99    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).
% 2.33/0.99  
% 2.33/0.99  fof(f35,plain,(
% 2.33/0.99    ( ! [X2,X0,X1] : (r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 2.33/0.99    inference(cnf_transformation,[],[f23])).
% 2.33/0.99  
% 2.33/0.99  fof(f5,axiom,(
% 2.33/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f14,plain,(
% 2.33/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/0.99    inference(ennf_transformation,[],[f5])).
% 2.33/0.99  
% 2.33/0.99  fof(f40,plain,(
% 2.33/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/0.99    inference(cnf_transformation,[],[f14])).
% 2.33/0.99  
% 2.33/0.99  fof(f7,conjecture,(
% 2.33/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ~(! [X5] : ~(k1_funct_1(X3,X5) = X4 & r2_hidden(X5,X2) & r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f8,negated_conjecture,(
% 2.33/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ~(! [X5] : ~(k1_funct_1(X3,X5) = X4 & r2_hidden(X5,X2) & r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))))),
% 2.33/0.99    inference(negated_conjecture,[],[f7])).
% 2.33/0.99  
% 2.33/0.99  fof(f9,plain,(
% 2.33/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ! [X4] : ~(! [X5] : ~(k1_funct_1(X3,X5) = X4 & r2_hidden(X5,X2) & r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))))),
% 2.33/0.99    inference(pure_predicate_removal,[],[f8])).
% 2.33/0.99  
% 2.33/0.99  fof(f16,plain,(
% 2.33/0.99    ? [X0,X1,X2,X3] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)))),
% 2.33/0.99    inference(ennf_transformation,[],[f9])).
% 2.33/0.99  
% 2.33/0.99  fof(f17,plain,(
% 2.33/0.99    ? [X0,X1,X2,X3] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3))),
% 2.33/0.99    inference(flattening,[],[f16])).
% 2.33/0.99  
% 2.33/0.99  fof(f27,plain,(
% 2.33/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) => (! [X5] : (k1_funct_1(X3,X5) != sK5 | ~r2_hidden(X5,X2) | ~r2_hidden(X5,X0)) & r2_hidden(sK5,k7_relset_1(X0,X1,X3,X2)))) )),
% 2.33/0.99    introduced(choice_axiom,[])).
% 2.33/0.99  
% 2.33/0.99  fof(f26,plain,(
% 2.33/0.99    ? [X0,X1,X2,X3] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~r2_hidden(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => (? [X4] : (! [X5] : (k1_funct_1(sK4,X5) != X4 | ~r2_hidden(X5,sK3) | ~r2_hidden(X5,sK1)) & r2_hidden(X4,k7_relset_1(sK1,sK2,sK4,sK3))) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_1(sK4))),
% 2.33/0.99    introduced(choice_axiom,[])).
% 2.33/0.99  
% 2.33/0.99  fof(f28,plain,(
% 2.33/0.99    (! [X5] : (k1_funct_1(sK4,X5) != sK5 | ~r2_hidden(X5,sK3) | ~r2_hidden(X5,sK1)) & r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3))) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_1(sK4)),
% 2.33/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5])],[f17,f27,f26])).
% 2.33/0.99  
% 2.33/0.99  fof(f43,plain,(
% 2.33/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 2.33/0.99    inference(cnf_transformation,[],[f28])).
% 2.33/0.99  
% 2.33/0.99  fof(f34,plain,(
% 2.33/0.99    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 2.33/0.99    inference(cnf_transformation,[],[f23])).
% 2.33/0.99  
% 2.33/0.99  fof(f2,axiom,(
% 2.33/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f10,plain,(
% 2.33/0.99    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.33/0.99    inference(ennf_transformation,[],[f2])).
% 2.33/0.99  
% 2.33/0.99  fof(f32,plain,(
% 2.33/0.99    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.33/0.99    inference(cnf_transformation,[],[f10])).
% 2.33/0.99  
% 2.33/0.99  fof(f1,axiom,(
% 2.33/0.99    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) <=> (r2_hidden(X1,X3) & r2_hidden(X0,X2)))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f18,plain,(
% 2.33/0.99    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | (~r2_hidden(X1,X3) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.33/0.99    inference(nnf_transformation,[],[f1])).
% 2.33/0.99  
% 2.33/0.99  fof(f19,plain,(
% 2.33/0.99    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.33/0.99    inference(flattening,[],[f18])).
% 2.33/0.99  
% 2.33/0.99  fof(f29,plain,(
% 2.33/0.99    ( ! [X2,X0,X3,X1] : (r2_hidden(X0,X2) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))) )),
% 2.33/0.99    inference(cnf_transformation,[],[f19])).
% 2.33/0.99  
% 2.33/0.99  fof(f6,axiom,(
% 2.33/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f15,plain,(
% 2.33/0.99    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/0.99    inference(ennf_transformation,[],[f6])).
% 2.33/0.99  
% 2.33/0.99  fof(f41,plain,(
% 2.33/0.99    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/0.99    inference(cnf_transformation,[],[f15])).
% 2.33/0.99  
% 2.33/0.99  fof(f44,plain,(
% 2.33/0.99    r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3))),
% 2.33/0.99    inference(cnf_transformation,[],[f28])).
% 2.33/0.99  
% 2.33/0.99  fof(f4,axiom,(
% 2.33/0.99    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))))),
% 2.33/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/0.99  
% 2.33/0.99  fof(f12,plain,(
% 2.33/0.99    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2)))),
% 2.33/0.99    inference(ennf_transformation,[],[f4])).
% 2.33/0.99  
% 2.33/0.99  fof(f13,plain,(
% 2.33/0.99    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(flattening,[],[f12])).
% 2.33/0.99  
% 2.33/0.99  fof(f24,plain,(
% 2.33/0.99    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | (k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2)))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(nnf_transformation,[],[f13])).
% 2.33/0.99  
% 2.33/0.99  fof(f25,plain,(
% 2.33/0.99    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.33/0.99    inference(flattening,[],[f24])).
% 2.33/0.99  
% 2.33/0.99  fof(f38,plain,(
% 2.33/0.99    ( ! [X2,X0,X1] : (k1_funct_1(X2,X0) = X1 | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 2.33/0.99    inference(cnf_transformation,[],[f25])).
% 2.33/0.99  
% 2.33/0.99  fof(f42,plain,(
% 2.33/0.99    v1_funct_1(sK4)),
% 2.33/0.99    inference(cnf_transformation,[],[f28])).
% 2.33/0.99  
% 2.33/0.99  fof(f45,plain,(
% 2.33/0.99    ( ! [X5] : (k1_funct_1(sK4,X5) != sK5 | ~r2_hidden(X5,sK3) | ~r2_hidden(X5,sK1)) )),
% 2.33/0.99    inference(cnf_transformation,[],[f28])).
% 2.33/0.99  
% 2.33/0.99  cnf(c_5,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 2.33/0.99      | r2_hidden(sK0(X0,X2,X1),X2)
% 2.33/0.99      | ~ v1_relat_1(X1) ),
% 2.33/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_11,plain,
% 2.33/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.33/0.99      | v1_relat_1(X0) ),
% 2.33/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_15,negated_conjecture,
% 2.33/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 2.33/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_214,plain,
% 2.33/0.99      ( v1_relat_1(X0)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 2.33/0.99      | sK4 != X0 ),
% 2.33/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_15]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_215,plain,
% 2.33/0.99      ( v1_relat_1(sK4)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(unflattening,[status(thm)],[c_214]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_386,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 2.33/0.99      | r2_hidden(sK0(X0,X2,X1),X2)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 2.33/0.99      | sK4 != X1 ),
% 2.33/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_215]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_387,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 2.33/0.99      | r2_hidden(sK0(X0,X1,sK4),X1)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(unflattening,[status(thm)],[c_386]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_523,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 2.33/0.99      | r2_hidden(sK0(X0,X1,sK4),X1)
% 2.33/0.99      | ~ sP1_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 2.33/0.99                [c_387]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_922,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
% 2.33/0.99      | sP1_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_523]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_524,plain,
% 2.33/0.99      ( sP1_iProver_split | sP0_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[])],
% 2.33/0.99                [c_387]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_560,plain,
% 2.33/0.99      ( sP1_iProver_split = iProver_top
% 2.33/0.99      | sP0_iProver_split = iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_524]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_561,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
% 2.33/0.99      | sP1_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_523]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_538,plain,( X0 = X0 ),theory(equality) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1105,plain,
% 2.33/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(instantiation,[status(thm)],[c_538]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_522,plain,
% 2.33/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 2.33/0.99      | ~ sP0_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.33/0.99                [c_387]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1106,plain,
% 2.33/0.99      ( ~ sP0_iProver_split
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(instantiation,[status(thm)],[c_522]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1108,plain,
% 2.33/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 2.33/0.99      | sP0_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_1106]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1189,plain,
% 2.33/0.99      ( r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top
% 2.33/0.99      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 2.33/0.99      inference(global_propositional_subsumption,
% 2.33/0.99                [status(thm)],
% 2.33/0.99                [c_922,c_560,c_561,c_1105,c_1108]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1190,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(sK0(X0,X1,sK4),X1) = iProver_top ),
% 2.33/0.99      inference(renaming,[status(thm)],[c_1189]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_6,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
% 2.33/0.99      | ~ v1_relat_1(X1) ),
% 2.33/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_371,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X3,X4)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 2.33/0.99      | sK4 != X1 ),
% 2.33/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_215]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_372,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(unflattening,[status(thm)],[c_371]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_525,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,k9_relat_1(sK4,X1))
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4)
% 2.33/0.99      | ~ sP2_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[sP2_iProver_split])],
% 2.33/0.99                [c_372]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_925,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
% 2.33/0.99      | sP2_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_526,plain,
% 2.33/0.99      ( sP2_iProver_split | sP0_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[])],
% 2.33/0.99                [c_372]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_567,plain,
% 2.33/0.99      ( sP2_iProver_split = iProver_top
% 2.33/0.99      | sP0_iProver_split = iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_526]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_568,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
% 2.33/0.99      | sP2_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1478,plain,
% 2.33/0.99      ( r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top
% 2.33/0.99      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 2.33/0.99      inference(global_propositional_subsumption,
% 2.33/0.99                [status(thm)],
% 2.33/0.99                [c_925,c_567,c_568,c_1105,c_1108]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1479,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(k4_tarski(sK0(X0,X1,sK4),X0),sK4) = iProver_top ),
% 2.33/0.99      inference(renaming,[status(thm)],[c_1478]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_3,plain,
% 2.33/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.33/0.99      | ~ r2_hidden(X2,X0)
% 2.33/0.99      | r2_hidden(X2,X1) ),
% 2.33/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_192,plain,
% 2.33/0.99      ( ~ r2_hidden(X0,X1)
% 2.33/0.99      | r2_hidden(X0,X2)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(X2)
% 2.33/0.99      | sK4 != X1 ),
% 2.33/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_15]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_193,plain,
% 2.33/0.99      ( r2_hidden(X0,X1)
% 2.33/0.99      | ~ r2_hidden(X0,sK4)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(X1) ),
% 2.33/0.99      inference(unflattening,[status(thm)],[c_192]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_942,plain,
% 2.33/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) != k1_zfmisc_1(X0)
% 2.33/0.99      | r2_hidden(X1,X0) = iProver_top
% 2.33/0.99      | r2_hidden(X1,sK4) != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_193]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1132,plain,
% 2.33/0.99      ( r2_hidden(X0,k2_zfmisc_1(sK1,sK2)) = iProver_top
% 2.33/0.99      | r2_hidden(X0,sK4) != iProver_top ),
% 2.33/0.99      inference(equality_resolution,[status(thm)],[c_942]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_2,plain,
% 2.33/0.99      ( r2_hidden(X0,X1)
% 2.33/0.99      | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
% 2.33/0.99      inference(cnf_transformation,[],[f29]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_945,plain,
% 2.33/0.99      ( r2_hidden(X0,X1) = iProver_top
% 2.33/0.99      | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1200,plain,
% 2.33/0.99      ( r2_hidden(X0,sK1) = iProver_top
% 2.33/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_1132,c_945]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1488,plain,
% 2.33/0.99      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.33/0.99      | r2_hidden(sK0(X0,X1,sK4),sK1) = iProver_top ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_1479,c_1200]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_12,plain,
% 2.33/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.33/0.99      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.33/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_205,plain,
% 2.33/0.99      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))
% 2.33/0.99      | sK4 != X2 ),
% 2.33/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_15]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_206,plain,
% 2.33/0.99      ( k7_relset_1(X0,X1,sK4,X2) = k9_relat_1(sK4,X2)
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(unflattening,[status(thm)],[c_205]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1103,plain,
% 2.33/0.99      ( k7_relset_1(sK1,sK2,sK4,X0) = k9_relat_1(sK4,X0) ),
% 2.33/0.99      inference(equality_resolution,[status(thm)],[c_206]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_14,negated_conjecture,
% 2.33/0.99      ( r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3)) ),
% 2.33/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_943,plain,
% 2.33/0.99      ( r2_hidden(sK5,k7_relset_1(sK1,sK2,sK4,sK3)) = iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1115,plain,
% 2.33/0.99      ( r2_hidden(sK5,k9_relat_1(sK4,sK3)) = iProver_top ),
% 2.33/0.99      inference(demodulation,[status(thm)],[c_1103,c_943]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_9,plain,
% 2.33/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 2.33/0.99      | ~ v1_funct_1(X2)
% 2.33/0.99      | ~ v1_relat_1(X2)
% 2.33/0.99      | k1_funct_1(X2,X0) = X1 ),
% 2.33/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_16,negated_conjecture,
% 2.33/0.99      ( v1_funct_1(sK4) ),
% 2.33/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_235,plain,
% 2.33/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 2.33/0.99      | ~ v1_relat_1(X2)
% 2.33/0.99      | k1_funct_1(X2,X0) = X1
% 2.33/0.99      | sK4 != X2 ),
% 2.33/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_16]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_236,plain,
% 2.33/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 2.33/0.99      | ~ v1_relat_1(sK4)
% 2.33/0.99      | k1_funct_1(sK4,X0) = X1 ),
% 2.33/0.99      inference(unflattening,[status(thm)],[c_235]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_320,plain,
% 2.33/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 2.33/0.99      | k1_funct_1(sK4,X0) = X1
% 2.33/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.33/0.99      inference(resolution,[status(thm)],[c_215,c_236]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_531,plain,
% 2.33/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 2.33/0.99      | k1_funct_1(sK4,X0) = X1
% 2.33/0.99      | ~ sP5_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[sP5_iProver_split])],
% 2.33/0.99                [c_320]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_934,plain,
% 2.33/0.99      ( k1_funct_1(sK4,X0) = X1
% 2.33/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 2.33/0.99      | sP5_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_531]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_532,plain,
% 2.33/0.99      ( sP5_iProver_split | sP0_iProver_split ),
% 2.33/0.99      inference(splitting,
% 2.33/0.99                [splitting(split),new_symbols(definition,[])],
% 2.33/0.99                [c_320]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_582,plain,
% 2.33/0.99      ( sP5_iProver_split = iProver_top
% 2.33/0.99      | sP0_iProver_split = iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_532]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_583,plain,
% 2.33/0.99      ( k1_funct_1(sK4,X0) = X1
% 2.33/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 2.33/0.99      | sP5_iProver_split != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_531]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1383,plain,
% 2.33/0.99      ( r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 2.33/0.99      | k1_funct_1(sK4,X0) = X1 ),
% 2.33/0.99      inference(global_propositional_subsumption,
% 2.33/0.99                [status(thm)],
% 2.33/0.99                [c_934,c_582,c_583,c_1105,c_1108]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1384,plain,
% 2.33/0.99      ( k1_funct_1(sK4,X0) = X1
% 2.33/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
% 2.33/0.99      inference(renaming,[status(thm)],[c_1383]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_1487,plain,
% 2.33/0.99      ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
% 2.33/0.99      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_1479,c_1384]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_2450,plain,
% 2.33/0.99      ( k1_funct_1(sK4,sK0(sK5,sK3,sK4)) = sK5 ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_1115,c_1487]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_13,negated_conjecture,
% 2.33/0.99      ( ~ r2_hidden(X0,sK1)
% 2.33/0.99      | ~ r2_hidden(X0,sK3)
% 2.33/0.99      | k1_funct_1(sK4,X0) != sK5 ),
% 2.33/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_944,plain,
% 2.33/0.99      ( k1_funct_1(sK4,X0) != sK5
% 2.33/0.99      | r2_hidden(X0,sK1) != iProver_top
% 2.33/0.99      | r2_hidden(X0,sK3) != iProver_top ),
% 2.33/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_2463,plain,
% 2.33/0.99      ( r2_hidden(sK0(sK5,sK3,sK4),sK1) != iProver_top
% 2.33/0.99      | r2_hidden(sK0(sK5,sK3,sK4),sK3) != iProver_top ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_2450,c_944]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_2539,plain,
% 2.33/0.99      ( r2_hidden(sK0(sK5,sK3,sK4),sK3) != iProver_top
% 2.33/0.99      | r2_hidden(sK5,k9_relat_1(sK4,sK3)) != iProver_top ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_1488,c_2463]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_3053,plain,
% 2.33/0.99      ( r2_hidden(sK0(sK5,sK3,sK4),sK3) != iProver_top ),
% 2.33/0.99      inference(global_propositional_subsumption,
% 2.33/0.99                [status(thm)],
% 2.33/0.99                [c_2539,c_1115]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(c_3058,plain,
% 2.33/0.99      ( r2_hidden(sK5,k9_relat_1(sK4,sK3)) != iProver_top ),
% 2.33/0.99      inference(superposition,[status(thm)],[c_1190,c_3053]) ).
% 2.33/0.99  
% 2.33/0.99  cnf(contradiction,plain,
% 2.33/0.99      ( $false ),
% 2.33/0.99      inference(minisat,[status(thm)],[c_3058,c_1115]) ).
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.33/0.99  
% 2.33/0.99  ------                               Statistics
% 2.33/0.99  
% 2.33/0.99  ------ General
% 2.33/0.99  
% 2.33/0.99  abstr_ref_over_cycles:                  0
% 2.33/0.99  abstr_ref_under_cycles:                 0
% 2.33/0.99  gc_basic_clause_elim:                   0
% 2.33/0.99  forced_gc_time:                         0
% 2.33/0.99  parsing_time:                           0.008
% 2.33/0.99  unif_index_cands_time:                  0.
% 2.33/0.99  unif_index_add_time:                    0.
% 2.33/0.99  orderings_time:                         0.
% 2.33/0.99  out_proof_time:                         0.009
% 2.33/0.99  total_time:                             0.105
% 2.33/0.99  num_of_symbols:                         56
% 2.33/0.99  num_of_terms:                           3740
% 2.33/0.99  
% 2.33/0.99  ------ Preprocessing
% 2.33/0.99  
% 2.33/0.99  num_of_splits:                          14
% 2.33/0.99  num_of_split_atoms:                     8
% 2.33/0.99  num_of_reused_defs:                     6
% 2.33/0.99  num_eq_ax_congr_red:                    16
% 2.33/0.99  num_of_sem_filtered_clauses:            1
% 2.33/0.99  num_of_subtypes:                        0
% 2.33/0.99  monotx_restored_types:                  0
% 2.33/0.99  sat_num_of_epr_types:                   0
% 2.33/0.99  sat_num_of_non_cyclic_types:            0
% 2.33/0.99  sat_guarded_non_collapsed_types:        0
% 2.33/0.99  num_pure_diseq_elim:                    0
% 2.33/0.99  simp_replaced_by:                       0
% 2.33/0.99  res_preprocessed:                       98
% 2.33/0.99  prep_upred:                             0
% 2.33/0.99  prep_unflattend:                        10
% 2.33/0.99  smt_new_axioms:                         0
% 2.33/0.99  pred_elim_cands:                        1
% 2.33/0.99  pred_elim:                              3
% 2.33/0.99  pred_elim_cl:                           3
% 2.33/0.99  pred_elim_cycles:                       5
% 2.33/0.99  merged_defs:                            0
% 2.33/0.99  merged_defs_ncl:                        0
% 2.33/0.99  bin_hyper_res:                          0
% 2.33/0.99  prep_cycles:                            4
% 2.33/0.99  pred_elim_time:                         0.003
% 2.33/0.99  splitting_time:                         0.
% 2.33/0.99  sem_filter_time:                        0.
% 2.33/0.99  monotx_time:                            0.
% 2.33/0.99  subtype_inf_time:                       0.
% 2.33/0.99  
% 2.33/0.99  ------ Problem properties
% 2.33/0.99  
% 2.33/0.99  clauses:                                28
% 2.33/0.99  conjectures:                            2
% 2.33/0.99  epr:                                    7
% 2.33/0.99  horn:                                   21
% 2.33/0.99  ground:                                 8
% 2.33/0.99  unary:                                  1
% 2.33/0.99  binary:                                 17
% 2.33/0.99  lits:                                   66
% 2.33/0.99  lits_eq:                                12
% 2.33/0.99  fd_pure:                                0
% 2.33/0.99  fd_pseudo:                              0
% 2.33/0.99  fd_cond:                                0
% 2.33/0.99  fd_pseudo_cond:                         1
% 2.33/0.99  ac_symbols:                             0
% 2.33/0.99  
% 2.33/0.99  ------ Propositional Solver
% 2.33/0.99  
% 2.33/0.99  prop_solver_calls:                      27
% 2.33/0.99  prop_fast_solver_calls:                 655
% 2.33/0.99  smt_solver_calls:                       0
% 2.33/0.99  smt_fast_solver_calls:                  0
% 2.33/0.99  prop_num_of_clauses:                    1251
% 2.33/0.99  prop_preprocess_simplified:             4175
% 2.33/0.99  prop_fo_subsumed:                       15
% 2.33/0.99  prop_solver_time:                       0.
% 2.33/0.99  smt_solver_time:                        0.
% 2.33/0.99  smt_fast_solver_time:                   0.
% 2.33/0.99  prop_fast_solver_time:                  0.
% 2.33/0.99  prop_unsat_core_time:                   0.
% 2.33/0.99  
% 2.33/0.99  ------ QBF
% 2.33/0.99  
% 2.33/0.99  qbf_q_res:                              0
% 2.33/0.99  qbf_num_tautologies:                    0
% 2.33/0.99  qbf_prep_cycles:                        0
% 2.33/0.99  
% 2.33/0.99  ------ BMC1
% 2.33/0.99  
% 2.33/0.99  bmc1_current_bound:                     -1
% 2.33/0.99  bmc1_last_solved_bound:                 -1
% 2.33/0.99  bmc1_unsat_core_size:                   -1
% 2.33/0.99  bmc1_unsat_core_parents_size:           -1
% 2.33/0.99  bmc1_merge_next_fun:                    0
% 2.33/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.33/0.99  
% 2.33/0.99  ------ Instantiation
% 2.33/0.99  
% 2.33/0.99  inst_num_of_clauses:                    384
% 2.33/0.99  inst_num_in_passive:                    158
% 2.33/0.99  inst_num_in_active:                     158
% 2.33/0.99  inst_num_in_unprocessed:                68
% 2.33/0.99  inst_num_of_loops:                      180
% 2.33/0.99  inst_num_of_learning_restarts:          0
% 2.33/0.99  inst_num_moves_active_passive:          18
% 2.33/0.99  inst_lit_activity:                      0
% 2.33/0.99  inst_lit_activity_moves:                0
% 2.33/0.99  inst_num_tautologies:                   0
% 2.33/0.99  inst_num_prop_implied:                  0
% 2.33/0.99  inst_num_existing_simplified:           0
% 2.33/0.99  inst_num_eq_res_simplified:             0
% 2.33/0.99  inst_num_child_elim:                    0
% 2.33/0.99  inst_num_of_dismatching_blockings:      63
% 2.33/0.99  inst_num_of_non_proper_insts:           263
% 2.33/0.99  inst_num_of_duplicates:                 0
% 2.33/0.99  inst_inst_num_from_inst_to_res:         0
% 2.33/0.99  inst_dismatching_checking_time:         0.
% 2.33/0.99  
% 2.33/0.99  ------ Resolution
% 2.33/0.99  
% 2.33/0.99  res_num_of_clauses:                     0
% 2.33/0.99  res_num_in_passive:                     0
% 2.33/0.99  res_num_in_active:                      0
% 2.33/0.99  res_num_of_loops:                       102
% 2.33/0.99  res_forward_subset_subsumed:            38
% 2.33/0.99  res_backward_subset_subsumed:           0
% 2.33/0.99  res_forward_subsumed:                   0
% 2.33/0.99  res_backward_subsumed:                  0
% 2.33/0.99  res_forward_subsumption_resolution:     1
% 2.33/0.99  res_backward_subsumption_resolution:    0
% 2.33/0.99  res_clause_to_clause_subsumption:       56
% 2.33/0.99  res_orphan_elimination:                 0
% 2.33/0.99  res_tautology_del:                      19
% 2.33/0.99  res_num_eq_res_simplified:              0
% 2.33/0.99  res_num_sel_changes:                    0
% 2.33/0.99  res_moves_from_active_to_pass:          0
% 2.33/0.99  
% 2.33/0.99  ------ Superposition
% 2.33/0.99  
% 2.33/0.99  sup_time_total:                         0.
% 2.33/0.99  sup_time_generating:                    0.
% 2.33/0.99  sup_time_sim_full:                      0.
% 2.33/0.99  sup_time_sim_immed:                     0.
% 2.33/0.99  
% 2.33/0.99  sup_num_of_clauses:                     44
% 2.33/0.99  sup_num_in_active:                      35
% 2.33/0.99  sup_num_in_passive:                     9
% 2.33/0.99  sup_num_of_loops:                       35
% 2.33/0.99  sup_fw_superposition:                   14
% 2.33/0.99  sup_bw_superposition:                   14
% 2.33/0.99  sup_immediate_simplified:               2
% 2.33/0.99  sup_given_eliminated:                   0
% 2.33/0.99  comparisons_done:                       0
% 2.33/0.99  comparisons_avoided:                    0
% 2.33/0.99  
% 2.33/0.99  ------ Simplifications
% 2.33/0.99  
% 2.33/0.99  
% 2.33/0.99  sim_fw_subset_subsumed:                 2
% 2.33/0.99  sim_bw_subset_subsumed:                 0
% 2.33/0.99  sim_fw_subsumed:                        0
% 2.33/0.99  sim_bw_subsumed:                        0
% 2.33/0.99  sim_fw_subsumption_res:                 0
% 2.33/0.99  sim_bw_subsumption_res:                 0
% 2.33/0.99  sim_tautology_del:                      3
% 2.33/0.99  sim_eq_tautology_del:                   1
% 2.33/0.99  sim_eq_res_simp:                        0
% 2.33/0.99  sim_fw_demodulated:                     0
% 2.33/0.99  sim_bw_demodulated:                     1
% 2.33/0.99  sim_light_normalised:                   0
% 2.33/0.99  sim_joinable_taut:                      0
% 2.33/0.99  sim_joinable_simp:                      0
% 2.33/0.99  sim_ac_normalised:                      0
% 2.33/0.99  sim_smt_subsumption:                    0
% 2.33/0.99  
%------------------------------------------------------------------------------
