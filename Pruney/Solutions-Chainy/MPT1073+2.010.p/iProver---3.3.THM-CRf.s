%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:10:02 EST 2020

% Result     : Theorem 2.10s
% Output     : CNFRefutation 2.10s
% Verified   : 
% Statistics : Number of formulae       :  103 ( 267 expanded)
%              Number of clauses        :   54 (  90 expanded)
%              Number of leaves         :   12 (  46 expanded)
%              Depth                    :   19
%              Number of atoms          :  306 (1010 expanded)
%              Number of equality atoms :   90 ( 227 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f28,plain,(
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
    inference(nnf_transformation,[],[f17])).

fof(f29,plain,(
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
    inference(rectify,[],[f28])).

fof(f30,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X4,X0),X2)
          & r2_hidden(X4,k1_relat_1(X2)) )
     => ( r2_hidden(sK0(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
        & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f10,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_2(X3,X1,X2)
        & v1_funct_1(X3) )
     => ~ ( ! [X4] :
              ( m1_subset_1(X4,X1)
             => k1_funct_1(X3,X4) != X0 )
          & r2_hidden(X0,k2_relset_1(X1,X2,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ( m1_subset_1(X4,X1)
               => k1_funct_1(X3,X4) != X0 )
            & r2_hidden(X0,k2_relset_1(X1,X2,X3)) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f12,plain,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ( m1_subset_1(X4,X1)
               => k1_funct_1(X3,X4) != X0 )
            & r2_hidden(X0,k2_relset_1(X1,X2,X3)) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f24,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X0
          | ~ m1_subset_1(X4,X1) )
      & r2_hidden(X0,k2_relset_1(X1,X2,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f25,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X0
          | ~ m1_subset_1(X4,X1) )
      & r2_hidden(X0,k2_relset_1(X1,X2,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f24])).

fof(f34,plain,
    ( ? [X0,X1,X2,X3] :
        ( ! [X4] :
            ( k1_funct_1(X3,X4) != X0
            | ~ m1_subset_1(X4,X1) )
        & r2_hidden(X0,k2_relset_1(X1,X2,X3))
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X3) )
   => ( ! [X4] :
          ( k1_funct_1(sK4,X4) != sK1
          | ~ m1_subset_1(X4,sK2) )
      & r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4))
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ! [X4] :
        ( k1_funct_1(sK4,X4) != sK1
        | ~ m1_subset_1(X4,sK2) )
    & r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4))
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f25,f34])).

fof(f54,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f35])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f37,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f14])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f50,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f55,plain,(
    r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) ),
    inference(cnf_transformation,[],[f35])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2)
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f18])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f32])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X2,X0) = X1
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f53,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f35])).

fof(f56,plain,(
    ! [X4] :
      ( k1_funct_1(sK4,X4) != sK1
      | ~ m1_subset_1(X4,sK2) ) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_8,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK0(X0,X2,X1),k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1062,plain,
    ( r2_hidden(X0,k9_relat_1(X1,X2)) != iProver_top
    | r2_hidden(sK0(X0,X2,X1),k1_relat_1(X1)) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1055,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_172,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_0])).

cnf(c_13,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_4,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_291,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_13,c_4])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_295,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_291,c_13,c_12,c_4])).

cnf(c_296,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(renaming,[status(thm)],[c_295])).

cnf(c_313,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | X3 != X1
    | k1_relat_1(X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_172,c_296])).

cnf(c_314,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_relat_1(X0),k1_zfmisc_1(X1)) ),
    inference(unflattening,[status(thm)],[c_313])).

cnf(c_1054,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k1_relat_1(X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_314])).

cnf(c_1362,plain,
    ( m1_subset_1(k1_relat_1(sK4),k1_zfmisc_1(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1055,c_1054])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_1066,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X0,X2) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1446,plain,
    ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
    | m1_subset_1(X0,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1362,c_1066])).

cnf(c_1700,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | m1_subset_1(sK0(X0,X1,sK4),sK2) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1062,c_1446])).

cnf(c_22,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_1182,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1183,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1182])).

cnf(c_1841,plain,
    ( m1_subset_1(sK0(X0,X1,sK4),sK2) = iProver_top
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1700,c_22,c_1183])).

cnf(c_1842,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | m1_subset_1(sK0(X0,X1,sK4),sK2) = iProver_top ),
    inference(renaming,[status(thm)],[c_1841])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X1) = k2_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1058,plain,
    ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1419,plain,
    ( k7_relset_1(sK2,sK3,sK4,sK2) = k2_relset_1(sK2,sK3,sK4) ),
    inference(superposition,[status(thm)],[c_1055,c_1058])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1060,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1367,plain,
    ( k7_relset_1(sK2,sK3,sK4,X0) = k9_relat_1(sK4,X0) ),
    inference(superposition,[status(thm)],[c_1055,c_1060])).

cnf(c_1533,plain,
    ( k2_relset_1(sK2,sK3,sK4) = k9_relat_1(sK4,sK2) ),
    inference(demodulation,[status(thm)],[c_1419,c_1367])).

cnf(c_18,negated_conjecture,
    ( r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1056,plain,
    ( r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_1535,plain,
    ( r2_hidden(sK1,k9_relat_1(sK4,sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1533,c_1056])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1063,plain,
    ( r2_hidden(X0,k9_relat_1(X1,X2)) != iProver_top
    | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_10,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | k1_funct_1(X2,X0) = X1 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_20,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_328,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ v1_relat_1(X2)
    | k1_funct_1(X2,X0) = X1
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_20])).

cnf(c_329,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
    | ~ v1_relat_1(sK4)
    | k1_funct_1(sK4,X0) = X1 ),
    inference(unflattening,[status(thm)],[c_328])).

cnf(c_1053,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_329])).

cnf(c_330,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_329])).

cnf(c_1211,plain,
    ( r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
    | k1_funct_1(sK4,X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1053,c_22,c_330,c_1183])).

cnf(c_1212,plain,
    ( k1_funct_1(sK4,X0) = X1
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_1211])).

cnf(c_1737,plain,
    ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1063,c_1212])).

cnf(c_1850,plain,
    ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
    | k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1737,c_22,c_1183])).

cnf(c_1851,plain,
    ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
    | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1850])).

cnf(c_1860,plain,
    ( k1_funct_1(sK4,sK0(sK1,sK2,sK4)) = sK1 ),
    inference(superposition,[status(thm)],[c_1535,c_1851])).

cnf(c_17,negated_conjecture,
    ( ~ m1_subset_1(X0,sK2)
    | k1_funct_1(sK4,X0) != sK1 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1057,plain,
    ( k1_funct_1(sK4,X0) != sK1
    | m1_subset_1(X0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1937,plain,
    ( m1_subset_1(sK0(sK1,sK2,sK4),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1860,c_1057])).

cnf(c_1948,plain,
    ( r2_hidden(sK1,k9_relat_1(sK4,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1842,c_1937])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1948,c_1535])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:26:55 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.10/0.97  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.10/0.97  
% 2.10/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.10/0.97  
% 2.10/0.97  ------  iProver source info
% 2.10/0.97  
% 2.10/0.97  git: date: 2020-06-30 10:37:57 +0100
% 2.10/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.10/0.97  git: non_committed_changes: false
% 2.10/0.97  git: last_make_outside_of_git: false
% 2.10/0.97  
% 2.10/0.97  ------ 
% 2.10/0.97  
% 2.10/0.97  ------ Input Options
% 2.10/0.97  
% 2.10/0.97  --out_options                           all
% 2.10/0.97  --tptp_safe_out                         true
% 2.10/0.97  --problem_path                          ""
% 2.10/0.97  --include_path                          ""
% 2.10/0.97  --clausifier                            res/vclausify_rel
% 2.10/0.97  --clausifier_options                    --mode clausify
% 2.10/0.97  --stdin                                 false
% 2.10/0.97  --stats_out                             all
% 2.10/0.97  
% 2.10/0.97  ------ General Options
% 2.10/0.97  
% 2.10/0.97  --fof                                   false
% 2.10/0.97  --time_out_real                         305.
% 2.10/0.97  --time_out_virtual                      -1.
% 2.10/0.97  --symbol_type_check                     false
% 2.10/0.97  --clausify_out                          false
% 2.10/0.97  --sig_cnt_out                           false
% 2.10/0.97  --trig_cnt_out                          false
% 2.10/0.97  --trig_cnt_out_tolerance                1.
% 2.10/0.97  --trig_cnt_out_sk_spl                   false
% 2.10/0.97  --abstr_cl_out                          false
% 2.10/0.97  
% 2.10/0.97  ------ Global Options
% 2.10/0.97  
% 2.10/0.97  --schedule                              default
% 2.10/0.97  --add_important_lit                     false
% 2.10/0.97  --prop_solver_per_cl                    1000
% 2.10/0.97  --min_unsat_core                        false
% 2.10/0.97  --soft_assumptions                      false
% 2.10/0.97  --soft_lemma_size                       3
% 2.10/0.97  --prop_impl_unit_size                   0
% 2.10/0.97  --prop_impl_unit                        []
% 2.10/0.97  --share_sel_clauses                     true
% 2.10/0.97  --reset_solvers                         false
% 2.10/0.97  --bc_imp_inh                            [conj_cone]
% 2.10/0.97  --conj_cone_tolerance                   3.
% 2.10/0.97  --extra_neg_conj                        none
% 2.10/0.97  --large_theory_mode                     true
% 2.10/0.97  --prolific_symb_bound                   200
% 2.10/0.97  --lt_threshold                          2000
% 2.10/0.97  --clause_weak_htbl                      true
% 2.10/0.97  --gc_record_bc_elim                     false
% 2.10/0.97  
% 2.10/0.97  ------ Preprocessing Options
% 2.10/0.97  
% 2.10/0.97  --preprocessing_flag                    true
% 2.10/0.97  --time_out_prep_mult                    0.1
% 2.10/0.97  --splitting_mode                        input
% 2.10/0.97  --splitting_grd                         true
% 2.10/0.97  --splitting_cvd                         false
% 2.10/0.97  --splitting_cvd_svl                     false
% 2.10/0.97  --splitting_nvd                         32
% 2.10/0.97  --sub_typing                            true
% 2.10/0.97  --prep_gs_sim                           true
% 2.10/0.97  --prep_unflatten                        true
% 2.10/0.97  --prep_res_sim                          true
% 2.10/0.97  --prep_upred                            true
% 2.10/0.97  --prep_sem_filter                       exhaustive
% 2.10/0.97  --prep_sem_filter_out                   false
% 2.10/0.97  --pred_elim                             true
% 2.10/0.97  --res_sim_input                         true
% 2.10/0.97  --eq_ax_congr_red                       true
% 2.10/0.97  --pure_diseq_elim                       true
% 2.10/0.97  --brand_transform                       false
% 2.10/0.97  --non_eq_to_eq                          false
% 2.10/0.97  --prep_def_merge                        true
% 2.10/0.97  --prep_def_merge_prop_impl              false
% 2.10/0.97  --prep_def_merge_mbd                    true
% 2.10/0.97  --prep_def_merge_tr_red                 false
% 2.10/0.97  --prep_def_merge_tr_cl                  false
% 2.10/0.97  --smt_preprocessing                     true
% 2.10/0.97  --smt_ac_axioms                         fast
% 2.10/0.97  --preprocessed_out                      false
% 2.10/0.97  --preprocessed_stats                    false
% 2.10/0.97  
% 2.10/0.97  ------ Abstraction refinement Options
% 2.10/0.97  
% 2.10/0.97  --abstr_ref                             []
% 2.10/0.97  --abstr_ref_prep                        false
% 2.10/0.97  --abstr_ref_until_sat                   false
% 2.10/0.97  --abstr_ref_sig_restrict                funpre
% 2.10/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.10/0.97  --abstr_ref_under                       []
% 2.10/0.97  
% 2.10/0.97  ------ SAT Options
% 2.10/0.97  
% 2.10/0.97  --sat_mode                              false
% 2.10/0.97  --sat_fm_restart_options                ""
% 2.10/0.97  --sat_gr_def                            false
% 2.10/0.97  --sat_epr_types                         true
% 2.10/0.97  --sat_non_cyclic_types                  false
% 2.10/0.97  --sat_finite_models                     false
% 2.10/0.97  --sat_fm_lemmas                         false
% 2.10/0.97  --sat_fm_prep                           false
% 2.10/0.97  --sat_fm_uc_incr                        true
% 2.10/0.97  --sat_out_model                         small
% 2.10/0.97  --sat_out_clauses                       false
% 2.10/0.97  
% 2.10/0.97  ------ QBF Options
% 2.10/0.97  
% 2.10/0.97  --qbf_mode                              false
% 2.10/0.97  --qbf_elim_univ                         false
% 2.10/0.97  --qbf_dom_inst                          none
% 2.10/0.97  --qbf_dom_pre_inst                      false
% 2.10/0.97  --qbf_sk_in                             false
% 2.10/0.97  --qbf_pred_elim                         true
% 2.10/0.97  --qbf_split                             512
% 2.10/0.97  
% 2.10/0.97  ------ BMC1 Options
% 2.10/0.97  
% 2.10/0.97  --bmc1_incremental                      false
% 2.10/0.97  --bmc1_axioms                           reachable_all
% 2.10/0.97  --bmc1_min_bound                        0
% 2.10/0.97  --bmc1_max_bound                        -1
% 2.10/0.97  --bmc1_max_bound_default                -1
% 2.10/0.97  --bmc1_symbol_reachability              true
% 2.10/0.97  --bmc1_property_lemmas                  false
% 2.10/0.97  --bmc1_k_induction                      false
% 2.10/0.97  --bmc1_non_equiv_states                 false
% 2.10/0.97  --bmc1_deadlock                         false
% 2.10/0.97  --bmc1_ucm                              false
% 2.10/0.97  --bmc1_add_unsat_core                   none
% 2.10/0.97  --bmc1_unsat_core_children              false
% 2.10/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.10/0.97  --bmc1_out_stat                         full
% 2.10/0.97  --bmc1_ground_init                      false
% 2.10/0.97  --bmc1_pre_inst_next_state              false
% 2.10/0.97  --bmc1_pre_inst_state                   false
% 2.10/0.97  --bmc1_pre_inst_reach_state             false
% 2.10/0.97  --bmc1_out_unsat_core                   false
% 2.10/0.97  --bmc1_aig_witness_out                  false
% 2.10/0.97  --bmc1_verbose                          false
% 2.10/0.97  --bmc1_dump_clauses_tptp                false
% 2.10/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.10/0.97  --bmc1_dump_file                        -
% 2.10/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.10/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.10/0.97  --bmc1_ucm_extend_mode                  1
% 2.10/0.97  --bmc1_ucm_init_mode                    2
% 2.10/0.97  --bmc1_ucm_cone_mode                    none
% 2.10/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.10/0.97  --bmc1_ucm_relax_model                  4
% 2.10/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.10/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.10/0.97  --bmc1_ucm_layered_model                none
% 2.10/0.97  --bmc1_ucm_max_lemma_size               10
% 2.10/0.97  
% 2.10/0.97  ------ AIG Options
% 2.10/0.97  
% 2.10/0.97  --aig_mode                              false
% 2.10/0.97  
% 2.10/0.97  ------ Instantiation Options
% 2.10/0.97  
% 2.10/0.97  --instantiation_flag                    true
% 2.10/0.97  --inst_sos_flag                         false
% 2.10/0.97  --inst_sos_phase                        true
% 2.10/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.10/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.10/0.97  --inst_lit_sel_side                     num_symb
% 2.10/0.97  --inst_solver_per_active                1400
% 2.10/0.97  --inst_solver_calls_frac                1.
% 2.10/0.97  --inst_passive_queue_type               priority_queues
% 2.10/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.10/0.97  --inst_passive_queues_freq              [25;2]
% 2.10/0.97  --inst_dismatching                      true
% 2.10/0.97  --inst_eager_unprocessed_to_passive     true
% 2.10/0.97  --inst_prop_sim_given                   true
% 2.10/0.97  --inst_prop_sim_new                     false
% 2.10/0.97  --inst_subs_new                         false
% 2.10/0.97  --inst_eq_res_simp                      false
% 2.10/0.97  --inst_subs_given                       false
% 2.10/0.97  --inst_orphan_elimination               true
% 2.10/0.97  --inst_learning_loop_flag               true
% 2.10/0.97  --inst_learning_start                   3000
% 2.10/0.97  --inst_learning_factor                  2
% 2.10/0.97  --inst_start_prop_sim_after_learn       3
% 2.10/0.97  --inst_sel_renew                        solver
% 2.10/0.97  --inst_lit_activity_flag                true
% 2.10/0.97  --inst_restr_to_given                   false
% 2.10/0.97  --inst_activity_threshold               500
% 2.10/0.97  --inst_out_proof                        true
% 2.10/0.97  
% 2.10/0.97  ------ Resolution Options
% 2.10/0.97  
% 2.10/0.97  --resolution_flag                       true
% 2.10/0.97  --res_lit_sel                           adaptive
% 2.10/0.97  --res_lit_sel_side                      none
% 2.10/0.97  --res_ordering                          kbo
% 2.10/0.97  --res_to_prop_solver                    active
% 2.10/0.97  --res_prop_simpl_new                    false
% 2.10/0.97  --res_prop_simpl_given                  true
% 2.10/0.97  --res_passive_queue_type                priority_queues
% 2.10/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.10/0.97  --res_passive_queues_freq               [15;5]
% 2.10/0.97  --res_forward_subs                      full
% 2.10/0.97  --res_backward_subs                     full
% 2.10/0.97  --res_forward_subs_resolution           true
% 2.10/0.97  --res_backward_subs_resolution          true
% 2.10/0.97  --res_orphan_elimination                true
% 2.10/0.97  --res_time_limit                        2.
% 2.10/0.97  --res_out_proof                         true
% 2.10/0.97  
% 2.10/0.97  ------ Superposition Options
% 2.10/0.97  
% 2.10/0.97  --superposition_flag                    true
% 2.10/0.97  --sup_passive_queue_type                priority_queues
% 2.10/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.10/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.10/0.97  --demod_completeness_check              fast
% 2.10/0.97  --demod_use_ground                      true
% 2.10/0.97  --sup_to_prop_solver                    passive
% 2.10/0.97  --sup_prop_simpl_new                    true
% 2.10/0.97  --sup_prop_simpl_given                  true
% 2.10/0.97  --sup_fun_splitting                     false
% 2.10/0.97  --sup_smt_interval                      50000
% 2.10/0.97  
% 2.10/0.97  ------ Superposition Simplification Setup
% 2.10/0.97  
% 2.10/0.97  --sup_indices_passive                   []
% 2.10/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.10/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.10/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.10/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.10/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.10/0.97  --sup_full_bw                           [BwDemod]
% 2.10/0.97  --sup_immed_triv                        [TrivRules]
% 2.10/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.10/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.10/0.97  --sup_immed_bw_main                     []
% 2.10/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.10/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.10/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.10/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.10/0.97  
% 2.10/0.97  ------ Combination Options
% 2.10/0.97  
% 2.10/0.97  --comb_res_mult                         3
% 2.10/0.97  --comb_sup_mult                         2
% 2.10/0.97  --comb_inst_mult                        10
% 2.10/0.97  
% 2.10/0.97  ------ Debug Options
% 2.10/0.97  
% 2.10/0.97  --dbg_backtrace                         false
% 2.10/0.97  --dbg_dump_prop_clauses                 false
% 2.10/0.97  --dbg_dump_prop_clauses_file            -
% 2.10/0.97  --dbg_out_stat                          false
% 2.10/0.97  ------ Parsing...
% 2.10/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.10/0.97  
% 2.10/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.10/0.97  
% 2.10/0.97  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.10/0.97  
% 2.10/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.10/0.97  ------ Proving...
% 2.10/0.97  ------ Problem Properties 
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  clauses                                 16
% 2.10/0.97  conjectures                             3
% 2.10/0.97  EPR                                     0
% 2.10/0.97  Horn                                    16
% 2.10/0.97  unary                                   2
% 2.10/0.97  binary                                  6
% 2.10/0.97  lits                                    40
% 2.10/0.97  lits eq                                 5
% 2.10/0.97  fd_pure                                 0
% 2.10/0.97  fd_pseudo                               0
% 2.10/0.97  fd_cond                                 0
% 2.10/0.97  fd_pseudo_cond                          1
% 2.10/0.97  AC symbols                              0
% 2.10/0.97  
% 2.10/0.97  ------ Schedule dynamic 5 is on 
% 2.10/0.97  
% 2.10/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  ------ 
% 2.10/0.97  Current options:
% 2.10/0.97  ------ 
% 2.10/0.97  
% 2.10/0.97  ------ Input Options
% 2.10/0.97  
% 2.10/0.97  --out_options                           all
% 2.10/0.97  --tptp_safe_out                         true
% 2.10/0.97  --problem_path                          ""
% 2.10/0.97  --include_path                          ""
% 2.10/0.97  --clausifier                            res/vclausify_rel
% 2.10/0.97  --clausifier_options                    --mode clausify
% 2.10/0.97  --stdin                                 false
% 2.10/0.97  --stats_out                             all
% 2.10/0.97  
% 2.10/0.97  ------ General Options
% 2.10/0.97  
% 2.10/0.97  --fof                                   false
% 2.10/0.97  --time_out_real                         305.
% 2.10/0.97  --time_out_virtual                      -1.
% 2.10/0.97  --symbol_type_check                     false
% 2.10/0.97  --clausify_out                          false
% 2.10/0.97  --sig_cnt_out                           false
% 2.10/0.97  --trig_cnt_out                          false
% 2.10/0.97  --trig_cnt_out_tolerance                1.
% 2.10/0.97  --trig_cnt_out_sk_spl                   false
% 2.10/0.97  --abstr_cl_out                          false
% 2.10/0.97  
% 2.10/0.97  ------ Global Options
% 2.10/0.97  
% 2.10/0.97  --schedule                              default
% 2.10/0.97  --add_important_lit                     false
% 2.10/0.97  --prop_solver_per_cl                    1000
% 2.10/0.97  --min_unsat_core                        false
% 2.10/0.97  --soft_assumptions                      false
% 2.10/0.97  --soft_lemma_size                       3
% 2.10/0.97  --prop_impl_unit_size                   0
% 2.10/0.97  --prop_impl_unit                        []
% 2.10/0.97  --share_sel_clauses                     true
% 2.10/0.97  --reset_solvers                         false
% 2.10/0.97  --bc_imp_inh                            [conj_cone]
% 2.10/0.97  --conj_cone_tolerance                   3.
% 2.10/0.97  --extra_neg_conj                        none
% 2.10/0.97  --large_theory_mode                     true
% 2.10/0.97  --prolific_symb_bound                   200
% 2.10/0.97  --lt_threshold                          2000
% 2.10/0.97  --clause_weak_htbl                      true
% 2.10/0.97  --gc_record_bc_elim                     false
% 2.10/0.97  
% 2.10/0.97  ------ Preprocessing Options
% 2.10/0.97  
% 2.10/0.97  --preprocessing_flag                    true
% 2.10/0.97  --time_out_prep_mult                    0.1
% 2.10/0.97  --splitting_mode                        input
% 2.10/0.97  --splitting_grd                         true
% 2.10/0.97  --splitting_cvd                         false
% 2.10/0.97  --splitting_cvd_svl                     false
% 2.10/0.97  --splitting_nvd                         32
% 2.10/0.97  --sub_typing                            true
% 2.10/0.97  --prep_gs_sim                           true
% 2.10/0.97  --prep_unflatten                        true
% 2.10/0.97  --prep_res_sim                          true
% 2.10/0.97  --prep_upred                            true
% 2.10/0.97  --prep_sem_filter                       exhaustive
% 2.10/0.97  --prep_sem_filter_out                   false
% 2.10/0.97  --pred_elim                             true
% 2.10/0.97  --res_sim_input                         true
% 2.10/0.97  --eq_ax_congr_red                       true
% 2.10/0.97  --pure_diseq_elim                       true
% 2.10/0.97  --brand_transform                       false
% 2.10/0.97  --non_eq_to_eq                          false
% 2.10/0.97  --prep_def_merge                        true
% 2.10/0.97  --prep_def_merge_prop_impl              false
% 2.10/0.97  --prep_def_merge_mbd                    true
% 2.10/0.97  --prep_def_merge_tr_red                 false
% 2.10/0.97  --prep_def_merge_tr_cl                  false
% 2.10/0.97  --smt_preprocessing                     true
% 2.10/0.97  --smt_ac_axioms                         fast
% 2.10/0.97  --preprocessed_out                      false
% 2.10/0.97  --preprocessed_stats                    false
% 2.10/0.97  
% 2.10/0.97  ------ Abstraction refinement Options
% 2.10/0.97  
% 2.10/0.97  --abstr_ref                             []
% 2.10/0.97  --abstr_ref_prep                        false
% 2.10/0.97  --abstr_ref_until_sat                   false
% 2.10/0.97  --abstr_ref_sig_restrict                funpre
% 2.10/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.10/0.97  --abstr_ref_under                       []
% 2.10/0.97  
% 2.10/0.97  ------ SAT Options
% 2.10/0.97  
% 2.10/0.97  --sat_mode                              false
% 2.10/0.97  --sat_fm_restart_options                ""
% 2.10/0.97  --sat_gr_def                            false
% 2.10/0.97  --sat_epr_types                         true
% 2.10/0.97  --sat_non_cyclic_types                  false
% 2.10/0.97  --sat_finite_models                     false
% 2.10/0.97  --sat_fm_lemmas                         false
% 2.10/0.97  --sat_fm_prep                           false
% 2.10/0.97  --sat_fm_uc_incr                        true
% 2.10/0.97  --sat_out_model                         small
% 2.10/0.97  --sat_out_clauses                       false
% 2.10/0.97  
% 2.10/0.97  ------ QBF Options
% 2.10/0.97  
% 2.10/0.97  --qbf_mode                              false
% 2.10/0.97  --qbf_elim_univ                         false
% 2.10/0.97  --qbf_dom_inst                          none
% 2.10/0.97  --qbf_dom_pre_inst                      false
% 2.10/0.97  --qbf_sk_in                             false
% 2.10/0.97  --qbf_pred_elim                         true
% 2.10/0.97  --qbf_split                             512
% 2.10/0.97  
% 2.10/0.97  ------ BMC1 Options
% 2.10/0.97  
% 2.10/0.97  --bmc1_incremental                      false
% 2.10/0.97  --bmc1_axioms                           reachable_all
% 2.10/0.97  --bmc1_min_bound                        0
% 2.10/0.97  --bmc1_max_bound                        -1
% 2.10/0.97  --bmc1_max_bound_default                -1
% 2.10/0.97  --bmc1_symbol_reachability              true
% 2.10/0.97  --bmc1_property_lemmas                  false
% 2.10/0.97  --bmc1_k_induction                      false
% 2.10/0.97  --bmc1_non_equiv_states                 false
% 2.10/0.97  --bmc1_deadlock                         false
% 2.10/0.97  --bmc1_ucm                              false
% 2.10/0.97  --bmc1_add_unsat_core                   none
% 2.10/0.97  --bmc1_unsat_core_children              false
% 2.10/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.10/0.97  --bmc1_out_stat                         full
% 2.10/0.97  --bmc1_ground_init                      false
% 2.10/0.97  --bmc1_pre_inst_next_state              false
% 2.10/0.97  --bmc1_pre_inst_state                   false
% 2.10/0.97  --bmc1_pre_inst_reach_state             false
% 2.10/0.97  --bmc1_out_unsat_core                   false
% 2.10/0.97  --bmc1_aig_witness_out                  false
% 2.10/0.97  --bmc1_verbose                          false
% 2.10/0.97  --bmc1_dump_clauses_tptp                false
% 2.10/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.10/0.97  --bmc1_dump_file                        -
% 2.10/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.10/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.10/0.97  --bmc1_ucm_extend_mode                  1
% 2.10/0.97  --bmc1_ucm_init_mode                    2
% 2.10/0.97  --bmc1_ucm_cone_mode                    none
% 2.10/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.10/0.97  --bmc1_ucm_relax_model                  4
% 2.10/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.10/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.10/0.97  --bmc1_ucm_layered_model                none
% 2.10/0.97  --bmc1_ucm_max_lemma_size               10
% 2.10/0.97  
% 2.10/0.97  ------ AIG Options
% 2.10/0.97  
% 2.10/0.97  --aig_mode                              false
% 2.10/0.97  
% 2.10/0.97  ------ Instantiation Options
% 2.10/0.97  
% 2.10/0.97  --instantiation_flag                    true
% 2.10/0.97  --inst_sos_flag                         false
% 2.10/0.97  --inst_sos_phase                        true
% 2.10/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.10/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.10/0.97  --inst_lit_sel_side                     none
% 2.10/0.97  --inst_solver_per_active                1400
% 2.10/0.97  --inst_solver_calls_frac                1.
% 2.10/0.97  --inst_passive_queue_type               priority_queues
% 2.10/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.10/0.97  --inst_passive_queues_freq              [25;2]
% 2.10/0.97  --inst_dismatching                      true
% 2.10/0.97  --inst_eager_unprocessed_to_passive     true
% 2.10/0.97  --inst_prop_sim_given                   true
% 2.10/0.97  --inst_prop_sim_new                     false
% 2.10/0.97  --inst_subs_new                         false
% 2.10/0.97  --inst_eq_res_simp                      false
% 2.10/0.97  --inst_subs_given                       false
% 2.10/0.97  --inst_orphan_elimination               true
% 2.10/0.97  --inst_learning_loop_flag               true
% 2.10/0.97  --inst_learning_start                   3000
% 2.10/0.97  --inst_learning_factor                  2
% 2.10/0.97  --inst_start_prop_sim_after_learn       3
% 2.10/0.97  --inst_sel_renew                        solver
% 2.10/0.97  --inst_lit_activity_flag                true
% 2.10/0.97  --inst_restr_to_given                   false
% 2.10/0.97  --inst_activity_threshold               500
% 2.10/0.97  --inst_out_proof                        true
% 2.10/0.97  
% 2.10/0.97  ------ Resolution Options
% 2.10/0.97  
% 2.10/0.97  --resolution_flag                       false
% 2.10/0.97  --res_lit_sel                           adaptive
% 2.10/0.97  --res_lit_sel_side                      none
% 2.10/0.97  --res_ordering                          kbo
% 2.10/0.97  --res_to_prop_solver                    active
% 2.10/0.97  --res_prop_simpl_new                    false
% 2.10/0.97  --res_prop_simpl_given                  true
% 2.10/0.97  --res_passive_queue_type                priority_queues
% 2.10/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.10/0.97  --res_passive_queues_freq               [15;5]
% 2.10/0.97  --res_forward_subs                      full
% 2.10/0.97  --res_backward_subs                     full
% 2.10/0.97  --res_forward_subs_resolution           true
% 2.10/0.97  --res_backward_subs_resolution          true
% 2.10/0.97  --res_orphan_elimination                true
% 2.10/0.97  --res_time_limit                        2.
% 2.10/0.97  --res_out_proof                         true
% 2.10/0.97  
% 2.10/0.97  ------ Superposition Options
% 2.10/0.97  
% 2.10/0.97  --superposition_flag                    true
% 2.10/0.97  --sup_passive_queue_type                priority_queues
% 2.10/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.10/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.10/0.97  --demod_completeness_check              fast
% 2.10/0.97  --demod_use_ground                      true
% 2.10/0.97  --sup_to_prop_solver                    passive
% 2.10/0.97  --sup_prop_simpl_new                    true
% 2.10/0.97  --sup_prop_simpl_given                  true
% 2.10/0.97  --sup_fun_splitting                     false
% 2.10/0.97  --sup_smt_interval                      50000
% 2.10/0.97  
% 2.10/0.97  ------ Superposition Simplification Setup
% 2.10/0.97  
% 2.10/0.97  --sup_indices_passive                   []
% 2.10/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.10/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.10/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.10/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.10/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.10/0.97  --sup_full_bw                           [BwDemod]
% 2.10/0.97  --sup_immed_triv                        [TrivRules]
% 2.10/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.10/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.10/0.97  --sup_immed_bw_main                     []
% 2.10/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.10/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.10/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.10/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.10/0.97  
% 2.10/0.97  ------ Combination Options
% 2.10/0.97  
% 2.10/0.97  --comb_res_mult                         3
% 2.10/0.97  --comb_sup_mult                         2
% 2.10/0.97  --comb_inst_mult                        10
% 2.10/0.97  
% 2.10/0.97  ------ Debug Options
% 2.10/0.97  
% 2.10/0.97  --dbg_backtrace                         false
% 2.10/0.97  --dbg_dump_prop_clauses                 false
% 2.10/0.97  --dbg_dump_prop_clauses_file            -
% 2.10/0.97  --dbg_out_stat                          false
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  ------ Proving...
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  % SZS status Theorem for theBenchmark.p
% 2.10/0.97  
% 2.10/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 2.10/0.97  
% 2.10/0.97  fof(f4,axiom,(
% 2.10/0.97    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f17,plain,(
% 2.10/0.97    ! [X0,X1,X2] : ((r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(ennf_transformation,[],[f4])).
% 2.10/0.97  
% 2.10/0.97  fof(f28,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(nnf_transformation,[],[f17])).
% 2.10/0.97  
% 2.10/0.97  fof(f29,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(rectify,[],[f28])).
% 2.10/0.97  
% 2.10/0.97  fof(f30,plain,(
% 2.10/0.97    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) => (r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))))),
% 2.10/0.97    introduced(choice_axiom,[])).
% 2.10/0.97  
% 2.10/0.97  fof(f31,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) & r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).
% 2.10/0.97  
% 2.10/0.97  fof(f41,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (r2_hidden(sK0(X0,X1,X2),k1_relat_1(X2)) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f31])).
% 2.10/0.97  
% 2.10/0.97  fof(f10,conjecture,(
% 2.10/0.97    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ~(! [X4] : (m1_subset_1(X4,X1) => k1_funct_1(X3,X4) != X0) & r2_hidden(X0,k2_relset_1(X1,X2,X3))))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f11,negated_conjecture,(
% 2.10/0.97    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ~(! [X4] : (m1_subset_1(X4,X1) => k1_funct_1(X3,X4) != X0) & r2_hidden(X0,k2_relset_1(X1,X2,X3))))),
% 2.10/0.97    inference(negated_conjecture,[],[f10])).
% 2.10/0.97  
% 2.10/0.97  fof(f12,plain,(
% 2.10/0.97    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3)) => ~(! [X4] : (m1_subset_1(X4,X1) => k1_funct_1(X3,X4) != X0) & r2_hidden(X0,k2_relset_1(X1,X2,X3))))),
% 2.10/0.97    inference(pure_predicate_removal,[],[f11])).
% 2.10/0.97  
% 2.10/0.97  fof(f24,plain,(
% 2.10/0.97    ? [X0,X1,X2,X3] : ((! [X4] : (k1_funct_1(X3,X4) != X0 | ~m1_subset_1(X4,X1)) & r2_hidden(X0,k2_relset_1(X1,X2,X3))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3)))),
% 2.10/0.97    inference(ennf_transformation,[],[f12])).
% 2.10/0.97  
% 2.10/0.97  fof(f25,plain,(
% 2.10/0.97    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X0 | ~m1_subset_1(X4,X1)) & r2_hidden(X0,k2_relset_1(X1,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3))),
% 2.10/0.97    inference(flattening,[],[f24])).
% 2.10/0.97  
% 2.10/0.97  fof(f34,plain,(
% 2.10/0.97    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X0 | ~m1_subset_1(X4,X1)) & r2_hidden(X0,k2_relset_1(X1,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3)) => (! [X4] : (k1_funct_1(sK4,X4) != sK1 | ~m1_subset_1(X4,sK2)) & r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_1(sK4))),
% 2.10/0.97    introduced(choice_axiom,[])).
% 2.10/0.97  
% 2.10/0.97  fof(f35,plain,(
% 2.10/0.97    ! [X4] : (k1_funct_1(sK4,X4) != sK1 | ~m1_subset_1(X4,sK2)) & r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_1(sK4)),
% 2.10/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f25,f34])).
% 2.10/0.97  
% 2.10/0.97  fof(f54,plain,(
% 2.10/0.97    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))),
% 2.10/0.97    inference(cnf_transformation,[],[f35])).
% 2.10/0.97  
% 2.10/0.97  fof(f1,axiom,(
% 2.10/0.97    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f26,plain,(
% 2.10/0.97    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.10/0.97    inference(nnf_transformation,[],[f1])).
% 2.10/0.97  
% 2.10/0.97  fof(f37,plain,(
% 2.10/0.97    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f26])).
% 2.10/0.97  
% 2.10/0.97  fof(f7,axiom,(
% 2.10/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f13,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 2.10/0.97    inference(pure_predicate_removal,[],[f7])).
% 2.10/0.97  
% 2.10/0.97  fof(f21,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.10/0.97    inference(ennf_transformation,[],[f13])).
% 2.10/0.97  
% 2.10/0.97  fof(f49,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.10/0.97    inference(cnf_transformation,[],[f21])).
% 2.10/0.97  
% 2.10/0.97  fof(f3,axiom,(
% 2.10/0.97    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f16,plain,(
% 2.10/0.97    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.10/0.97    inference(ennf_transformation,[],[f3])).
% 2.10/0.97  
% 2.10/0.97  fof(f27,plain,(
% 2.10/0.97    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.10/0.97    inference(nnf_transformation,[],[f16])).
% 2.10/0.97  
% 2.10/0.97  fof(f39,plain,(
% 2.10/0.97    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f27])).
% 2.10/0.97  
% 2.10/0.97  fof(f6,axiom,(
% 2.10/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f20,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.10/0.97    inference(ennf_transformation,[],[f6])).
% 2.10/0.97  
% 2.10/0.97  fof(f48,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.10/0.97    inference(cnf_transformation,[],[f20])).
% 2.10/0.97  
% 2.10/0.97  fof(f2,axiom,(
% 2.10/0.97    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f14,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 2.10/0.97    inference(ennf_transformation,[],[f2])).
% 2.10/0.97  
% 2.10/0.97  fof(f15,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.10/0.97    inference(flattening,[],[f14])).
% 2.10/0.97  
% 2.10/0.97  fof(f38,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f15])).
% 2.10/0.97  
% 2.10/0.97  fof(f9,axiom,(
% 2.10/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f23,plain,(
% 2.10/0.97    ! [X0,X1,X2] : ((k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.10/0.97    inference(ennf_transformation,[],[f9])).
% 2.10/0.97  
% 2.10/0.97  fof(f51,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.10/0.97    inference(cnf_transformation,[],[f23])).
% 2.10/0.97  
% 2.10/0.97  fof(f8,axiom,(
% 2.10/0.97    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f22,plain,(
% 2.10/0.97    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.10/0.97    inference(ennf_transformation,[],[f8])).
% 2.10/0.97  
% 2.10/0.97  fof(f50,plain,(
% 2.10/0.97    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.10/0.97    inference(cnf_transformation,[],[f22])).
% 2.10/0.97  
% 2.10/0.97  fof(f55,plain,(
% 2.10/0.97    r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4))),
% 2.10/0.97    inference(cnf_transformation,[],[f35])).
% 2.10/0.97  
% 2.10/0.97  fof(f42,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(sK0(X0,X1,X2),X0),X2) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f31])).
% 2.10/0.97  
% 2.10/0.97  fof(f5,axiom,(
% 2.10/0.97    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))))),
% 2.10/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.10/0.97  
% 2.10/0.97  fof(f18,plain,(
% 2.10/0.97    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2)))),
% 2.10/0.97    inference(ennf_transformation,[],[f5])).
% 2.10/0.97  
% 2.10/0.97  fof(f19,plain,(
% 2.10/0.97    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(flattening,[],[f18])).
% 2.10/0.97  
% 2.10/0.97  fof(f32,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | (k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2)))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(nnf_transformation,[],[f19])).
% 2.10/0.97  
% 2.10/0.97  fof(f33,plain,(
% 2.10/0.97    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.10/0.97    inference(flattening,[],[f32])).
% 2.10/0.97  
% 2.10/0.97  fof(f46,plain,(
% 2.10/0.97    ( ! [X2,X0,X1] : (k1_funct_1(X2,X0) = X1 | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f33])).
% 2.10/0.97  
% 2.10/0.97  fof(f53,plain,(
% 2.10/0.97    v1_funct_1(sK4)),
% 2.10/0.97    inference(cnf_transformation,[],[f35])).
% 2.10/0.97  
% 2.10/0.97  fof(f56,plain,(
% 2.10/0.97    ( ! [X4] : (k1_funct_1(sK4,X4) != sK1 | ~m1_subset_1(X4,sK2)) )),
% 2.10/0.97    inference(cnf_transformation,[],[f35])).
% 2.10/0.97  
% 2.10/0.97  cnf(c_8,plain,
% 2.10/0.97      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 2.10/0.97      | r2_hidden(sK0(X0,X2,X1),k1_relat_1(X1))
% 2.10/0.97      | ~ v1_relat_1(X1) ),
% 2.10/0.97      inference(cnf_transformation,[],[f41]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1062,plain,
% 2.10/0.97      ( r2_hidden(X0,k9_relat_1(X1,X2)) != iProver_top
% 2.10/0.97      | r2_hidden(sK0(X0,X2,X1),k1_relat_1(X1)) = iProver_top
% 2.10/0.97      | v1_relat_1(X1) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_19,negated_conjecture,
% 2.10/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
% 2.10/0.97      inference(cnf_transformation,[],[f54]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1055,plain,
% 2.10/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_0,plain,
% 2.10/0.97      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.10/0.97      inference(cnf_transformation,[],[f37]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_172,plain,
% 2.10/0.97      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.10/0.97      inference(prop_impl,[status(thm)],[c_0]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_13,plain,
% 2.10/0.97      ( v4_relat_1(X0,X1)
% 2.10/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.10/0.97      inference(cnf_transformation,[],[f49]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_4,plain,
% 2.10/0.97      ( ~ v4_relat_1(X0,X1)
% 2.10/0.97      | r1_tarski(k1_relat_1(X0),X1)
% 2.10/0.97      | ~ v1_relat_1(X0) ),
% 2.10/0.97      inference(cnf_transformation,[],[f39]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_291,plain,
% 2.10/0.97      ( r1_tarski(k1_relat_1(X0),X1)
% 2.10/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.10/0.97      | ~ v1_relat_1(X0) ),
% 2.10/0.97      inference(resolution,[status(thm)],[c_13,c_4]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_12,plain,
% 2.10/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.10/0.97      | v1_relat_1(X0) ),
% 2.10/0.97      inference(cnf_transformation,[],[f48]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_295,plain,
% 2.10/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.10/0.97      | r1_tarski(k1_relat_1(X0),X1) ),
% 2.10/0.97      inference(global_propositional_subsumption,
% 2.10/0.97                [status(thm)],
% 2.10/0.97                [c_291,c_13,c_12,c_4]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_296,plain,
% 2.10/0.97      ( r1_tarski(k1_relat_1(X0),X1)
% 2.10/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.10/0.97      inference(renaming,[status(thm)],[c_295]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_313,plain,
% 2.10/0.97      ( m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.10/0.97      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 2.10/0.97      | X3 != X1
% 2.10/0.97      | k1_relat_1(X2) != X0 ),
% 2.10/0.97      inference(resolution_lifted,[status(thm)],[c_172,c_296]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_314,plain,
% 2.10/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.10/0.97      | m1_subset_1(k1_relat_1(X0),k1_zfmisc_1(X1)) ),
% 2.10/0.97      inference(unflattening,[status(thm)],[c_313]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1054,plain,
% 2.10/0.97      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.10/0.97      | m1_subset_1(k1_relat_1(X0),k1_zfmisc_1(X1)) = iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_314]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1362,plain,
% 2.10/0.97      ( m1_subset_1(k1_relat_1(sK4),k1_zfmisc_1(sK2)) = iProver_top ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1055,c_1054]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_2,plain,
% 2.10/0.97      ( ~ r2_hidden(X0,X1)
% 2.10/0.97      | m1_subset_1(X0,X2)
% 2.10/0.97      | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
% 2.10/0.97      inference(cnf_transformation,[],[f38]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1066,plain,
% 2.10/0.97      ( r2_hidden(X0,X1) != iProver_top
% 2.10/0.97      | m1_subset_1(X0,X2) = iProver_top
% 2.10/0.97      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1446,plain,
% 2.10/0.97      ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
% 2.10/0.97      | m1_subset_1(X0,sK2) = iProver_top ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1362,c_1066]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1700,plain,
% 2.10/0.97      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.10/0.97      | m1_subset_1(sK0(X0,X1,sK4),sK2) = iProver_top
% 2.10/0.97      | v1_relat_1(sK4) != iProver_top ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1062,c_1446]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_22,plain,
% 2.10/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1182,plain,
% 2.10/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 2.10/0.97      | v1_relat_1(sK4) ),
% 2.10/0.97      inference(instantiation,[status(thm)],[c_12]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1183,plain,
% 2.10/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) != iProver_top
% 2.10/0.97      | v1_relat_1(sK4) = iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_1182]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1841,plain,
% 2.10/0.97      ( m1_subset_1(sK0(X0,X1,sK4),sK2) = iProver_top
% 2.10/0.97      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 2.10/0.97      inference(global_propositional_subsumption,
% 2.10/0.97                [status(thm)],
% 2.10/0.97                [c_1700,c_22,c_1183]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1842,plain,
% 2.10/0.97      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.10/0.97      | m1_subset_1(sK0(X0,X1,sK4),sK2) = iProver_top ),
% 2.10/0.97      inference(renaming,[status(thm)],[c_1841]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_16,plain,
% 2.10/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.10/0.97      | k7_relset_1(X1,X2,X0,X1) = k2_relset_1(X1,X2,X0) ),
% 2.10/0.97      inference(cnf_transformation,[],[f51]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1058,plain,
% 2.10/0.97      ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
% 2.10/0.97      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1419,plain,
% 2.10/0.97      ( k7_relset_1(sK2,sK3,sK4,sK2) = k2_relset_1(sK2,sK3,sK4) ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1055,c_1058]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_14,plain,
% 2.10/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.10/0.97      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.10/0.97      inference(cnf_transformation,[],[f50]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1060,plain,
% 2.10/0.97      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 2.10/0.97      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1367,plain,
% 2.10/0.97      ( k7_relset_1(sK2,sK3,sK4,X0) = k9_relat_1(sK4,X0) ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1055,c_1060]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1533,plain,
% 2.10/0.97      ( k2_relset_1(sK2,sK3,sK4) = k9_relat_1(sK4,sK2) ),
% 2.10/0.97      inference(demodulation,[status(thm)],[c_1419,c_1367]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_18,negated_conjecture,
% 2.10/0.97      ( r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) ),
% 2.10/0.97      inference(cnf_transformation,[],[f55]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1056,plain,
% 2.10/0.97      ( r2_hidden(sK1,k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1535,plain,
% 2.10/0.97      ( r2_hidden(sK1,k9_relat_1(sK4,sK2)) = iProver_top ),
% 2.10/0.97      inference(demodulation,[status(thm)],[c_1533,c_1056]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_7,plain,
% 2.10/0.97      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 2.10/0.97      | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1)
% 2.10/0.97      | ~ v1_relat_1(X1) ),
% 2.10/0.97      inference(cnf_transformation,[],[f42]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1063,plain,
% 2.10/0.97      ( r2_hidden(X0,k9_relat_1(X1,X2)) != iProver_top
% 2.10/0.97      | r2_hidden(k4_tarski(sK0(X0,X2,X1),X0),X1) = iProver_top
% 2.10/0.97      | v1_relat_1(X1) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_10,plain,
% 2.10/0.97      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 2.10/0.97      | ~ v1_funct_1(X2)
% 2.10/0.97      | ~ v1_relat_1(X2)
% 2.10/0.97      | k1_funct_1(X2,X0) = X1 ),
% 2.10/0.97      inference(cnf_transformation,[],[f46]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_20,negated_conjecture,
% 2.10/0.97      ( v1_funct_1(sK4) ),
% 2.10/0.97      inference(cnf_transformation,[],[f53]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_328,plain,
% 2.10/0.97      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 2.10/0.97      | ~ v1_relat_1(X2)
% 2.10/0.97      | k1_funct_1(X2,X0) = X1
% 2.10/0.97      | sK4 != X2 ),
% 2.10/0.97      inference(resolution_lifted,[status(thm)],[c_10,c_20]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_329,plain,
% 2.10/0.97      ( ~ r2_hidden(k4_tarski(X0,X1),sK4)
% 2.10/0.97      | ~ v1_relat_1(sK4)
% 2.10/0.97      | k1_funct_1(sK4,X0) = X1 ),
% 2.10/0.97      inference(unflattening,[status(thm)],[c_328]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1053,plain,
% 2.10/0.97      ( k1_funct_1(sK4,X0) = X1
% 2.10/0.97      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 2.10/0.97      | v1_relat_1(sK4) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_329]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_330,plain,
% 2.10/0.97      ( k1_funct_1(sK4,X0) = X1
% 2.10/0.97      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 2.10/0.97      | v1_relat_1(sK4) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_329]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1211,plain,
% 2.10/0.97      ( r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top
% 2.10/0.97      | k1_funct_1(sK4,X0) = X1 ),
% 2.10/0.97      inference(global_propositional_subsumption,
% 2.10/0.97                [status(thm)],
% 2.10/0.97                [c_1053,c_22,c_330,c_1183]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1212,plain,
% 2.10/0.97      ( k1_funct_1(sK4,X0) = X1
% 2.10/0.97      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
% 2.10/0.97      inference(renaming,[status(thm)],[c_1211]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1737,plain,
% 2.10/0.97      ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
% 2.10/0.97      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.10/0.97      | v1_relat_1(sK4) != iProver_top ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1063,c_1212]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1850,plain,
% 2.10/0.97      ( r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top
% 2.10/0.97      | k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0 ),
% 2.10/0.97      inference(global_propositional_subsumption,
% 2.10/0.97                [status(thm)],
% 2.10/0.97                [c_1737,c_22,c_1183]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1851,plain,
% 2.10/0.97      ( k1_funct_1(sK4,sK0(X0,X1,sK4)) = X0
% 2.10/0.97      | r2_hidden(X0,k9_relat_1(sK4,X1)) != iProver_top ),
% 2.10/0.97      inference(renaming,[status(thm)],[c_1850]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1860,plain,
% 2.10/0.97      ( k1_funct_1(sK4,sK0(sK1,sK2,sK4)) = sK1 ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1535,c_1851]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_17,negated_conjecture,
% 2.10/0.97      ( ~ m1_subset_1(X0,sK2) | k1_funct_1(sK4,X0) != sK1 ),
% 2.10/0.97      inference(cnf_transformation,[],[f56]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1057,plain,
% 2.10/0.97      ( k1_funct_1(sK4,X0) != sK1 | m1_subset_1(X0,sK2) != iProver_top ),
% 2.10/0.97      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1937,plain,
% 2.10/0.97      ( m1_subset_1(sK0(sK1,sK2,sK4),sK2) != iProver_top ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1860,c_1057]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(c_1948,plain,
% 2.10/0.97      ( r2_hidden(sK1,k9_relat_1(sK4,sK2)) != iProver_top ),
% 2.10/0.97      inference(superposition,[status(thm)],[c_1842,c_1937]) ).
% 2.10/0.97  
% 2.10/0.97  cnf(contradiction,plain,
% 2.10/0.97      ( $false ),
% 2.10/0.97      inference(minisat,[status(thm)],[c_1948,c_1535]) ).
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 2.10/0.97  
% 2.10/0.97  ------                               Statistics
% 2.10/0.97  
% 2.10/0.97  ------ General
% 2.10/0.97  
% 2.10/0.97  abstr_ref_over_cycles:                  0
% 2.10/0.97  abstr_ref_under_cycles:                 0
% 2.10/0.97  gc_basic_clause_elim:                   0
% 2.10/0.97  forced_gc_time:                         0
% 2.10/0.97  parsing_time:                           0.014
% 2.10/0.97  unif_index_cands_time:                  0.
% 2.10/0.97  unif_index_add_time:                    0.
% 2.10/0.97  orderings_time:                         0.
% 2.10/0.97  out_proof_time:                         0.013
% 2.10/0.97  total_time:                             0.096
% 2.10/0.97  num_of_symbols:                         52
% 2.10/0.97  num_of_terms:                           1376
% 2.10/0.97  
% 2.10/0.97  ------ Preprocessing
% 2.10/0.97  
% 2.10/0.97  num_of_splits:                          0
% 2.10/0.97  num_of_split_atoms:                     0
% 2.10/0.97  num_of_reused_defs:                     0
% 2.10/0.97  num_eq_ax_congr_red:                    56
% 2.10/0.97  num_of_sem_filtered_clauses:            1
% 2.10/0.97  num_of_subtypes:                        0
% 2.10/0.97  monotx_restored_types:                  0
% 2.10/0.97  sat_num_of_epr_types:                   0
% 2.10/0.97  sat_num_of_non_cyclic_types:            0
% 2.10/0.97  sat_guarded_non_collapsed_types:        0
% 2.10/0.97  num_pure_diseq_elim:                    0
% 2.10/0.97  simp_replaced_by:                       0
% 2.10/0.97  res_preprocessed:                       92
% 2.10/0.97  prep_upred:                             0
% 2.10/0.97  prep_unflattend:                        19
% 2.10/0.97  smt_new_axioms:                         0
% 2.10/0.97  pred_elim_cands:                        3
% 2.10/0.97  pred_elim:                              3
% 2.10/0.97  pred_elim_cl:                           5
% 2.10/0.97  pred_elim_cycles:                       5
% 2.10/0.97  merged_defs:                            2
% 2.10/0.97  merged_defs_ncl:                        0
% 2.10/0.97  bin_hyper_res:                          2
% 2.10/0.97  prep_cycles:                            4
% 2.10/0.97  pred_elim_time:                         0.006
% 2.10/0.97  splitting_time:                         0.
% 2.10/0.97  sem_filter_time:                        0.
% 2.10/0.97  monotx_time:                            0.
% 2.10/0.97  subtype_inf_time:                       0.
% 2.10/0.97  
% 2.10/0.97  ------ Problem properties
% 2.10/0.97  
% 2.10/0.97  clauses:                                16
% 2.10/0.97  conjectures:                            3
% 2.10/0.97  epr:                                    0
% 2.10/0.97  horn:                                   16
% 2.10/0.97  ground:                                 2
% 2.10/0.97  unary:                                  2
% 2.10/0.97  binary:                                 6
% 2.10/0.97  lits:                                   40
% 2.10/0.97  lits_eq:                                5
% 2.10/0.97  fd_pure:                                0
% 2.10/0.97  fd_pseudo:                              0
% 2.10/0.97  fd_cond:                                0
% 2.10/0.97  fd_pseudo_cond:                         1
% 2.10/0.97  ac_symbols:                             0
% 2.10/0.97  
% 2.10/0.97  ------ Propositional Solver
% 2.10/0.97  
% 2.10/0.97  prop_solver_calls:                      26
% 2.10/0.97  prop_fast_solver_calls:                 605
% 2.10/0.97  smt_solver_calls:                       0
% 2.10/0.97  smt_fast_solver_calls:                  0
% 2.10/0.97  prop_num_of_clauses:                    500
% 2.10/0.97  prop_preprocess_simplified:             3075
% 2.10/0.97  prop_fo_subsumed:                       6
% 2.10/0.97  prop_solver_time:                       0.
% 2.10/0.97  smt_solver_time:                        0.
% 2.10/0.97  smt_fast_solver_time:                   0.
% 2.10/0.97  prop_fast_solver_time:                  0.
% 2.10/0.97  prop_unsat_core_time:                   0.
% 2.10/0.97  
% 2.10/0.97  ------ QBF
% 2.10/0.97  
% 2.10/0.97  qbf_q_res:                              0
% 2.10/0.97  qbf_num_tautologies:                    0
% 2.10/0.97  qbf_prep_cycles:                        0
% 2.10/0.97  
% 2.10/0.97  ------ BMC1
% 2.10/0.97  
% 2.10/0.97  bmc1_current_bound:                     -1
% 2.10/0.97  bmc1_last_solved_bound:                 -1
% 2.10/0.97  bmc1_unsat_core_size:                   -1
% 2.10/0.97  bmc1_unsat_core_parents_size:           -1
% 2.10/0.97  bmc1_merge_next_fun:                    0
% 2.10/0.97  bmc1_unsat_core_clauses_time:           0.
% 2.10/0.97  
% 2.10/0.97  ------ Instantiation
% 2.10/0.97  
% 2.10/0.97  inst_num_of_clauses:                    149
% 2.10/0.97  inst_num_in_passive:                    21
% 2.10/0.97  inst_num_in_active:                     123
% 2.10/0.97  inst_num_in_unprocessed:                5
% 2.10/0.97  inst_num_of_loops:                      140
% 2.10/0.97  inst_num_of_learning_restarts:          0
% 2.10/0.97  inst_num_moves_active_passive:          12
% 2.10/0.97  inst_lit_activity:                      0
% 2.10/0.97  inst_lit_activity_moves:                0
% 2.10/0.97  inst_num_tautologies:                   0
% 2.10/0.97  inst_num_prop_implied:                  0
% 2.10/0.97  inst_num_existing_simplified:           0
% 2.10/0.97  inst_num_eq_res_simplified:             0
% 2.10/0.97  inst_num_child_elim:                    0
% 2.10/0.97  inst_num_of_dismatching_blockings:      14
% 2.10/0.97  inst_num_of_non_proper_insts:           122
% 2.10/0.97  inst_num_of_duplicates:                 0
% 2.10/0.97  inst_inst_num_from_inst_to_res:         0
% 2.10/0.97  inst_dismatching_checking_time:         0.
% 2.10/0.97  
% 2.10/0.97  ------ Resolution
% 2.10/0.97  
% 2.10/0.97  res_num_of_clauses:                     0
% 2.10/0.97  res_num_in_passive:                     0
% 2.10/0.97  res_num_in_active:                      0
% 2.10/0.97  res_num_of_loops:                       96
% 2.10/0.97  res_forward_subset_subsumed:            24
% 2.10/0.97  res_backward_subset_subsumed:           0
% 2.10/0.97  res_forward_subsumed:                   0
% 2.10/0.97  res_backward_subsumed:                  0
% 2.10/0.97  res_forward_subsumption_resolution:     0
% 2.10/0.97  res_backward_subsumption_resolution:    0
% 2.10/0.97  res_clause_to_clause_subsumption:       38
% 2.10/0.97  res_orphan_elimination:                 0
% 2.10/0.97  res_tautology_del:                      35
% 2.10/0.97  res_num_eq_res_simplified:              0
% 2.10/0.97  res_num_sel_changes:                    0
% 2.10/0.97  res_moves_from_active_to_pass:          0
% 2.10/0.97  
% 2.10/0.97  ------ Superposition
% 2.10/0.97  
% 2.10/0.97  sup_time_total:                         0.
% 2.10/0.97  sup_time_generating:                    0.
% 2.10/0.97  sup_time_sim_full:                      0.
% 2.10/0.97  sup_time_sim_immed:                     0.
% 2.10/0.97  
% 2.10/0.97  sup_num_of_clauses:                     35
% 2.10/0.97  sup_num_in_active:                      27
% 2.10/0.97  sup_num_in_passive:                     8
% 2.10/0.97  sup_num_of_loops:                       27
% 2.10/0.97  sup_fw_superposition:                   12
% 2.10/0.97  sup_bw_superposition:                   10
% 2.10/0.97  sup_immediate_simplified:               1
% 2.10/0.97  sup_given_eliminated:                   0
% 2.10/0.97  comparisons_done:                       0
% 2.10/0.97  comparisons_avoided:                    0
% 2.10/0.97  
% 2.10/0.97  ------ Simplifications
% 2.10/0.97  
% 2.10/0.97  
% 2.10/0.97  sim_fw_subset_subsumed:                 0
% 2.10/0.97  sim_bw_subset_subsumed:                 0
% 2.10/0.97  sim_fw_subsumed:                        1
% 2.10/0.97  sim_bw_subsumed:                        0
% 2.10/0.97  sim_fw_subsumption_res:                 0
% 2.10/0.97  sim_bw_subsumption_res:                 0
% 2.10/0.97  sim_tautology_del:                      1
% 2.10/0.97  sim_eq_tautology_del:                   1
% 2.10/0.97  sim_eq_res_simp:                        0
% 2.10/0.97  sim_fw_demodulated:                     1
% 2.10/0.97  sim_bw_demodulated:                     1
% 2.10/0.97  sim_light_normalised:                   0
% 2.10/0.97  sim_joinable_taut:                      0
% 2.10/0.97  sim_joinable_simp:                      0
% 2.10/0.97  sim_ac_normalised:                      0
% 2.10/0.97  sim_smt_subsumption:                    0
% 2.10/0.97  
%------------------------------------------------------------------------------
