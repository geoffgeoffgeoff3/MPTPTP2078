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
% DateTime   : Thu Dec  3 12:10:07 EST 2020

% Result     : Theorem 2.20s
% Output     : CNFRefutation 2.20s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 301 expanded)
%              Number of clauses        :   67 (  98 expanded)
%              Number of leaves         :   16 (  61 expanded)
%              Depth                    :   17
%              Number of atoms          :  390 (1385 expanded)
%              Number of equality atoms :  158 ( 396 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f13])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ? [X2] :
                ( ( ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) )
                & ( ? [X3] :
                      ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                  | r2_hidden(X2,X1) ) ) )
          & ( ! [X2] :
                ( ( r2_hidden(X2,X1)
                  | ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) ) )
                & ( ? [X3] :
                      ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ? [X2] :
                ( ( ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) )
                & ( ? [X4] :
                      ( k1_funct_1(X0,X4) = X2
                      & r2_hidden(X4,k1_relat_1(X0)) )
                  | r2_hidden(X2,X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ? [X7] :
                      ( k1_funct_1(X0,X7) = X5
                      & r2_hidden(X7,k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f23])).

fof(f27,plain,(
    ! [X5,X0] :
      ( ? [X7] :
          ( k1_funct_1(X0,X7) = X5
          & r2_hidden(X7,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK2(X0,X5)) = X5
        & r2_hidden(sK2(X0,X5),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( k1_funct_1(X0,X4) = X2
          & r2_hidden(X4,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK1(X0,X1)) = X2
        & r2_hidden(sK1(X0,X1),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] :
                ( k1_funct_1(X0,X3) != X2
                | ~ r2_hidden(X3,k1_relat_1(X0)) )
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] :
                ( k1_funct_1(X0,X4) = X2
                & r2_hidden(X4,k1_relat_1(X0)) )
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] :
              ( k1_funct_1(X0,X3) != sK0(X0,X1)
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( ? [X4] :
              ( k1_funct_1(X0,X4) = sK0(X0,X1)
              & r2_hidden(X4,k1_relat_1(X0)) )
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ( ( ! [X3] :
                    ( k1_funct_1(X0,X3) != sK0(X0,X1)
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                | ~ r2_hidden(sK0(X0,X1),X1) )
              & ( ( k1_funct_1(X0,sK1(X0,X1)) = sK0(X0,X1)
                  & r2_hidden(sK1(X0,X1),k1_relat_1(X0)) )
                | r2_hidden(sK0(X0,X1),X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ( k1_funct_1(X0,sK2(X0,X5)) = X5
                    & r2_hidden(sK2(X0,X5),k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f24,f27,f26,f25])).

fof(f38,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(sK2(X0,X5),k1_relat_1(X0))
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f56,plain,(
    ! [X0,X5] :
      ( r2_hidden(sK2(X0,X5),k1_relat_1(X0))
      | ~ r2_hidden(X5,k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f38])).

fof(f8,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_2(X3,X1,X2)
        & v1_funct_1(X3) )
     => ~ ( ! [X4] :
              ( m1_subset_1(X4,X1)
             => k1_funct_1(X3,X4) != X0 )
          & r2_hidden(X0,k2_relset_1(X1,X2,X3)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ( m1_subset_1(X4,X1)
               => k1_funct_1(X3,X4) != X0 )
            & r2_hidden(X0,k2_relset_1(X1,X2,X3)) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f10,plain,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ( m1_subset_1(X4,X1)
               => k1_funct_1(X3,X4) != X0 )
            & r2_hidden(X0,k2_relset_1(X1,X2,X3)) ) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f19,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X0
          | ~ m1_subset_1(X4,X1) )
      & r2_hidden(X0,k2_relset_1(X1,X2,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f20,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X0
          | ~ m1_subset_1(X4,X1) )
      & r2_hidden(X0,k2_relset_1(X1,X2,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f19])).

fof(f31,plain,
    ( ? [X0,X1,X2,X3] :
        ( ! [X4] :
            ( k1_funct_1(X3,X4) != X0
            | ~ m1_subset_1(X4,X1) )
        & r2_hidden(X0,k2_relset_1(X1,X2,X3))
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X3) )
   => ( ! [X4] :
          ( k1_funct_1(sK6,X4) != sK3
          | ~ m1_subset_1(X4,sK4) )
      & r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
      & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
      & v1_funct_1(sK6) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ! [X4] :
        ( k1_funct_1(sK6,X4) != sK3
        | ~ m1_subset_1(X4,sK4) )
    & r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    & v1_funct_1(sK6) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f20,f31])).

fof(f49,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f32])).

fof(f50,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
    inference(cnf_transformation,[],[f32])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f15])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f29])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(X0,X1),X2)
      | k1_funct_1(X2,X0) != X1
      | ~ r2_hidden(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f57,plain,(
    ! [X2,X0] :
      ( r2_hidden(k4_tarski(X0,k1_funct_1(X2,X0)),X2)
      | ~ r2_hidden(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(equality_resolution,[],[f46])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f22,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(flattening,[],[f21])).

fof(f33,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,X2)
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f37,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f51,plain,(
    r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) ),
    inference(cnf_transformation,[],[f32])).

fof(f39,plain,(
    ! [X0,X5,X1] :
      ( k1_funct_1(X0,sK2(X0,X5)) = X5
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f55,plain,(
    ! [X0,X5] :
      ( k1_funct_1(X0,sK2(X0,X5)) = X5
      | ~ r2_hidden(X5,k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f39])).

fof(f52,plain,(
    ! [X4] :
      ( k1_funct_1(sK6,X4) != sK3
      | ~ m1_subset_1(X4,sK4) ) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_402,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_19])).

cnf(c_403,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK6))
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6))
    | ~ v1_relat_1(sK6) ),
    inference(unflattening,[status(thm)],[c_402])).

cnf(c_1449,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_403])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_21,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_404,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_403])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1614,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_1615,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top
    | v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1614])).

cnf(c_1689,plain,
    ( r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1449,c_21,c_404,c_1615])).

cnf(c_1690,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top ),
    inference(renaming,[status(thm)],[c_1689])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_387,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
    | ~ v1_relat_1(X1)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_19])).

cnf(c_388,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK6))
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6)
    | ~ v1_relat_1(sK6) ),
    inference(unflattening,[status(thm)],[c_387])).

cnf(c_1450,plain,
    ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_388])).

cnf(c_389,plain,
    ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_388])).

cnf(c_2034,plain,
    ( r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK6)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1450,c_21,c_389,c_1615])).

cnf(c_2035,plain,
    ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top ),
    inference(renaming,[status(thm)],[c_2034])).

cnf(c_1454,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1460,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2473,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK4,sK5)) = iProver_top
    | r2_hidden(X0,sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_1454,c_1460])).

cnf(c_2,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_1461,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2829,plain,
    ( r2_hidden(X0,sK4) = iProver_top
    | r2_hidden(k4_tarski(X0,X1),sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_2473,c_1461])).

cnf(c_3575,plain,
    ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
    | r2_hidden(X0,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_2035,c_2829])).

cnf(c_3585,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1690,c_3575])).

cnf(c_4,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1459,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_4352,plain,
    ( m1_subset_1(sK2(sK6,X0),sK4) = iProver_top
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3585,c_1459])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1457,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2580,plain,
    ( k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1454,c_1457])).

cnf(c_17,negated_conjecture,
    ( r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1455,plain,
    ( r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2688,plain,
    ( r2_hidden(sK3,k2_relat_1(sK6)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2580,c_1455])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_funct_1(X1,sK2(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_417,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,sK2(X1,X0)) = X0
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_19])).

cnf(c_418,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK6))
    | ~ v1_relat_1(sK6)
    | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_417])).

cnf(c_1448,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_418])).

cnf(c_419,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_418])).

cnf(c_1643,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1448,c_21,c_419,c_1615])).

cnf(c_1644,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1643])).

cnf(c_2698,plain,
    ( k1_funct_1(sK6,sK2(sK6,sK3)) = sK3 ),
    inference(superposition,[status(thm)],[c_2688,c_1644])).

cnf(c_16,negated_conjecture,
    ( ~ m1_subset_1(X0,sK4)
    | k1_funct_1(sK6,X0) != sK3 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1456,plain,
    ( k1_funct_1(sK6,X0) != sK3
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3121,plain,
    ( m1_subset_1(sK2(sK6,sK3),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2698,c_1456])).

cnf(c_5810,plain,
    ( r2_hidden(sK3,k2_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4352,c_3121])).

cnf(c_1099,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1827,plain,
    ( X0 != X1
    | X0 = k2_relset_1(sK4,sK5,sK6)
    | k2_relset_1(sK4,sK5,sK6) != X1 ),
    inference(instantiation,[status(thm)],[c_1099])).

cnf(c_2058,plain,
    ( X0 = k2_relset_1(sK4,sK5,sK6)
    | X0 != k2_relat_1(sK6)
    | k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_1827])).

cnf(c_2457,plain,
    ( k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6)
    | k2_relat_1(sK6) = k2_relset_1(sK4,sK5,sK6)
    | k2_relat_1(sK6) != k2_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_2058])).

cnf(c_1102,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1660,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
    | X1 != k2_relset_1(sK4,sK5,sK6)
    | X0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1102])).

cnf(c_1700,plain,
    ( r2_hidden(sK3,X0)
    | ~ r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
    | X0 != k2_relset_1(sK4,sK5,sK6)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1660])).

cnf(c_1836,plain,
    ( ~ r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
    | r2_hidden(sK3,k2_relat_1(sK6))
    | k2_relat_1(sK6) != k2_relset_1(sK4,sK5,sK6)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1700])).

cnf(c_1838,plain,
    ( k2_relat_1(sK6) != k2_relset_1(sK4,sK5,sK6)
    | sK3 != sK3
    | r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) != iProver_top
    | r2_hidden(sK3,k2_relat_1(sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1836])).

cnf(c_1098,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1701,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1098])).

cnf(c_1634,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_1127,plain,
    ( sK6 = sK6 ),
    inference(instantiation,[status(thm)],[c_1098])).

cnf(c_1105,plain,
    ( X0 != X1
    | k2_relat_1(X0) = k2_relat_1(X1) ),
    theory(equality)).

cnf(c_1118,plain,
    ( k2_relat_1(sK6) = k2_relat_1(sK6)
    | sK6 != sK6 ),
    inference(instantiation,[status(thm)],[c_1105])).

cnf(c_22,plain,
    ( r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5810,c_2457,c_1838,c_1701,c_1634,c_1127,c_1118,c_22,c_18])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n019.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 15:41:22 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.20/1.02  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.20/1.02  
% 2.20/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.20/1.02  
% 2.20/1.02  ------  iProver source info
% 2.20/1.02  
% 2.20/1.02  git: date: 2020-06-30 10:37:57 +0100
% 2.20/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.20/1.02  git: non_committed_changes: false
% 2.20/1.02  git: last_make_outside_of_git: false
% 2.20/1.02  
% 2.20/1.02  ------ 
% 2.20/1.02  
% 2.20/1.02  ------ Input Options
% 2.20/1.02  
% 2.20/1.02  --out_options                           all
% 2.20/1.02  --tptp_safe_out                         true
% 2.20/1.02  --problem_path                          ""
% 2.20/1.02  --include_path                          ""
% 2.20/1.02  --clausifier                            res/vclausify_rel
% 2.20/1.02  --clausifier_options                    --mode clausify
% 2.20/1.02  --stdin                                 false
% 2.20/1.02  --stats_out                             all
% 2.20/1.02  
% 2.20/1.02  ------ General Options
% 2.20/1.02  
% 2.20/1.02  --fof                                   false
% 2.20/1.02  --time_out_real                         305.
% 2.20/1.02  --time_out_virtual                      -1.
% 2.20/1.02  --symbol_type_check                     false
% 2.20/1.02  --clausify_out                          false
% 2.20/1.02  --sig_cnt_out                           false
% 2.20/1.02  --trig_cnt_out                          false
% 2.20/1.02  --trig_cnt_out_tolerance                1.
% 2.20/1.02  --trig_cnt_out_sk_spl                   false
% 2.20/1.02  --abstr_cl_out                          false
% 2.20/1.02  
% 2.20/1.02  ------ Global Options
% 2.20/1.02  
% 2.20/1.02  --schedule                              default
% 2.20/1.02  --add_important_lit                     false
% 2.20/1.02  --prop_solver_per_cl                    1000
% 2.20/1.02  --min_unsat_core                        false
% 2.20/1.02  --soft_assumptions                      false
% 2.20/1.02  --soft_lemma_size                       3
% 2.20/1.02  --prop_impl_unit_size                   0
% 2.20/1.02  --prop_impl_unit                        []
% 2.20/1.02  --share_sel_clauses                     true
% 2.20/1.02  --reset_solvers                         false
% 2.20/1.02  --bc_imp_inh                            [conj_cone]
% 2.20/1.02  --conj_cone_tolerance                   3.
% 2.20/1.02  --extra_neg_conj                        none
% 2.20/1.02  --large_theory_mode                     true
% 2.20/1.02  --prolific_symb_bound                   200
% 2.20/1.02  --lt_threshold                          2000
% 2.20/1.02  --clause_weak_htbl                      true
% 2.20/1.02  --gc_record_bc_elim                     false
% 2.20/1.02  
% 2.20/1.02  ------ Preprocessing Options
% 2.20/1.02  
% 2.20/1.02  --preprocessing_flag                    true
% 2.20/1.02  --time_out_prep_mult                    0.1
% 2.20/1.02  --splitting_mode                        input
% 2.20/1.02  --splitting_grd                         true
% 2.20/1.02  --splitting_cvd                         false
% 2.20/1.02  --splitting_cvd_svl                     false
% 2.20/1.02  --splitting_nvd                         32
% 2.20/1.02  --sub_typing                            true
% 2.20/1.02  --prep_gs_sim                           true
% 2.20/1.02  --prep_unflatten                        true
% 2.20/1.02  --prep_res_sim                          true
% 2.20/1.02  --prep_upred                            true
% 2.20/1.02  --prep_sem_filter                       exhaustive
% 2.20/1.02  --prep_sem_filter_out                   false
% 2.20/1.02  --pred_elim                             true
% 2.20/1.02  --res_sim_input                         true
% 2.20/1.02  --eq_ax_congr_red                       true
% 2.20/1.02  --pure_diseq_elim                       true
% 2.20/1.02  --brand_transform                       false
% 2.20/1.02  --non_eq_to_eq                          false
% 2.20/1.02  --prep_def_merge                        true
% 2.20/1.02  --prep_def_merge_prop_impl              false
% 2.20/1.02  --prep_def_merge_mbd                    true
% 2.20/1.02  --prep_def_merge_tr_red                 false
% 2.20/1.02  --prep_def_merge_tr_cl                  false
% 2.20/1.02  --smt_preprocessing                     true
% 2.20/1.02  --smt_ac_axioms                         fast
% 2.20/1.02  --preprocessed_out                      false
% 2.20/1.02  --preprocessed_stats                    false
% 2.20/1.02  
% 2.20/1.02  ------ Abstraction refinement Options
% 2.20/1.02  
% 2.20/1.02  --abstr_ref                             []
% 2.20/1.02  --abstr_ref_prep                        false
% 2.20/1.02  --abstr_ref_until_sat                   false
% 2.20/1.02  --abstr_ref_sig_restrict                funpre
% 2.20/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.20/1.02  --abstr_ref_under                       []
% 2.20/1.02  
% 2.20/1.02  ------ SAT Options
% 2.20/1.02  
% 2.20/1.02  --sat_mode                              false
% 2.20/1.02  --sat_fm_restart_options                ""
% 2.20/1.02  --sat_gr_def                            false
% 2.20/1.02  --sat_epr_types                         true
% 2.20/1.02  --sat_non_cyclic_types                  false
% 2.20/1.02  --sat_finite_models                     false
% 2.20/1.02  --sat_fm_lemmas                         false
% 2.20/1.02  --sat_fm_prep                           false
% 2.20/1.02  --sat_fm_uc_incr                        true
% 2.20/1.02  --sat_out_model                         small
% 2.20/1.02  --sat_out_clauses                       false
% 2.20/1.02  
% 2.20/1.02  ------ QBF Options
% 2.20/1.02  
% 2.20/1.02  --qbf_mode                              false
% 2.20/1.02  --qbf_elim_univ                         false
% 2.20/1.02  --qbf_dom_inst                          none
% 2.20/1.02  --qbf_dom_pre_inst                      false
% 2.20/1.02  --qbf_sk_in                             false
% 2.20/1.02  --qbf_pred_elim                         true
% 2.20/1.02  --qbf_split                             512
% 2.20/1.02  
% 2.20/1.02  ------ BMC1 Options
% 2.20/1.02  
% 2.20/1.02  --bmc1_incremental                      false
% 2.20/1.02  --bmc1_axioms                           reachable_all
% 2.20/1.02  --bmc1_min_bound                        0
% 2.20/1.02  --bmc1_max_bound                        -1
% 2.20/1.02  --bmc1_max_bound_default                -1
% 2.20/1.02  --bmc1_symbol_reachability              true
% 2.20/1.02  --bmc1_property_lemmas                  false
% 2.20/1.02  --bmc1_k_induction                      false
% 2.20/1.02  --bmc1_non_equiv_states                 false
% 2.20/1.02  --bmc1_deadlock                         false
% 2.20/1.02  --bmc1_ucm                              false
% 2.20/1.02  --bmc1_add_unsat_core                   none
% 2.20/1.02  --bmc1_unsat_core_children              false
% 2.20/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.20/1.02  --bmc1_out_stat                         full
% 2.20/1.02  --bmc1_ground_init                      false
% 2.20/1.02  --bmc1_pre_inst_next_state              false
% 2.20/1.02  --bmc1_pre_inst_state                   false
% 2.20/1.02  --bmc1_pre_inst_reach_state             false
% 2.20/1.02  --bmc1_out_unsat_core                   false
% 2.20/1.02  --bmc1_aig_witness_out                  false
% 2.20/1.02  --bmc1_verbose                          false
% 2.20/1.02  --bmc1_dump_clauses_tptp                false
% 2.20/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.20/1.02  --bmc1_dump_file                        -
% 2.20/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.20/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.20/1.02  --bmc1_ucm_extend_mode                  1
% 2.20/1.02  --bmc1_ucm_init_mode                    2
% 2.20/1.02  --bmc1_ucm_cone_mode                    none
% 2.20/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.20/1.02  --bmc1_ucm_relax_model                  4
% 2.20/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.20/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.20/1.02  --bmc1_ucm_layered_model                none
% 2.20/1.02  --bmc1_ucm_max_lemma_size               10
% 2.20/1.02  
% 2.20/1.02  ------ AIG Options
% 2.20/1.02  
% 2.20/1.02  --aig_mode                              false
% 2.20/1.02  
% 2.20/1.02  ------ Instantiation Options
% 2.20/1.02  
% 2.20/1.02  --instantiation_flag                    true
% 2.20/1.02  --inst_sos_flag                         false
% 2.20/1.02  --inst_sos_phase                        true
% 2.20/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.20/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.20/1.02  --inst_lit_sel_side                     num_symb
% 2.20/1.02  --inst_solver_per_active                1400
% 2.20/1.02  --inst_solver_calls_frac                1.
% 2.20/1.02  --inst_passive_queue_type               priority_queues
% 2.20/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.20/1.02  --inst_passive_queues_freq              [25;2]
% 2.20/1.02  --inst_dismatching                      true
% 2.20/1.02  --inst_eager_unprocessed_to_passive     true
% 2.20/1.02  --inst_prop_sim_given                   true
% 2.20/1.02  --inst_prop_sim_new                     false
% 2.20/1.02  --inst_subs_new                         false
% 2.20/1.02  --inst_eq_res_simp                      false
% 2.20/1.02  --inst_subs_given                       false
% 2.20/1.02  --inst_orphan_elimination               true
% 2.20/1.02  --inst_learning_loop_flag               true
% 2.20/1.02  --inst_learning_start                   3000
% 2.20/1.02  --inst_learning_factor                  2
% 2.20/1.02  --inst_start_prop_sim_after_learn       3
% 2.20/1.02  --inst_sel_renew                        solver
% 2.20/1.02  --inst_lit_activity_flag                true
% 2.20/1.02  --inst_restr_to_given                   false
% 2.20/1.02  --inst_activity_threshold               500
% 2.20/1.02  --inst_out_proof                        true
% 2.20/1.02  
% 2.20/1.02  ------ Resolution Options
% 2.20/1.02  
% 2.20/1.02  --resolution_flag                       true
% 2.20/1.02  --res_lit_sel                           adaptive
% 2.20/1.02  --res_lit_sel_side                      none
% 2.20/1.02  --res_ordering                          kbo
% 2.20/1.02  --res_to_prop_solver                    active
% 2.20/1.02  --res_prop_simpl_new                    false
% 2.20/1.02  --res_prop_simpl_given                  true
% 2.20/1.02  --res_passive_queue_type                priority_queues
% 2.20/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.20/1.02  --res_passive_queues_freq               [15;5]
% 2.20/1.02  --res_forward_subs                      full
% 2.20/1.02  --res_backward_subs                     full
% 2.20/1.02  --res_forward_subs_resolution           true
% 2.20/1.02  --res_backward_subs_resolution          true
% 2.20/1.02  --res_orphan_elimination                true
% 2.20/1.02  --res_time_limit                        2.
% 2.20/1.02  --res_out_proof                         true
% 2.20/1.02  
% 2.20/1.02  ------ Superposition Options
% 2.20/1.02  
% 2.20/1.02  --superposition_flag                    true
% 2.20/1.02  --sup_passive_queue_type                priority_queues
% 2.20/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.20/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.20/1.02  --demod_completeness_check              fast
% 2.20/1.02  --demod_use_ground                      true
% 2.20/1.02  --sup_to_prop_solver                    passive
% 2.20/1.02  --sup_prop_simpl_new                    true
% 2.20/1.02  --sup_prop_simpl_given                  true
% 2.20/1.02  --sup_fun_splitting                     false
% 2.20/1.02  --sup_smt_interval                      50000
% 2.20/1.02  
% 2.20/1.02  ------ Superposition Simplification Setup
% 2.20/1.02  
% 2.20/1.02  --sup_indices_passive                   []
% 2.20/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.20/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.02  --sup_full_bw                           [BwDemod]
% 2.20/1.02  --sup_immed_triv                        [TrivRules]
% 2.20/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.20/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.02  --sup_immed_bw_main                     []
% 2.20/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.20/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.02  
% 2.20/1.02  ------ Combination Options
% 2.20/1.02  
% 2.20/1.02  --comb_res_mult                         3
% 2.20/1.02  --comb_sup_mult                         2
% 2.20/1.02  --comb_inst_mult                        10
% 2.20/1.02  
% 2.20/1.02  ------ Debug Options
% 2.20/1.02  
% 2.20/1.02  --dbg_backtrace                         false
% 2.20/1.02  --dbg_dump_prop_clauses                 false
% 2.20/1.02  --dbg_dump_prop_clauses_file            -
% 2.20/1.02  --dbg_out_stat                          false
% 2.20/1.02  ------ Parsing...
% 2.20/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.20/1.02  
% 2.20/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.20/1.02  
% 2.20/1.02  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.20/1.02  
% 2.20/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.20/1.02  ------ Proving...
% 2.20/1.02  ------ Problem Properties 
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  clauses                                 19
% 2.20/1.02  conjectures                             3
% 2.20/1.02  EPR                                     1
% 2.20/1.02  Horn                                    17
% 2.20/1.02  unary                                   2
% 2.20/1.02  binary                                  6
% 2.20/1.02  lits                                    51
% 2.20/1.02  lits eq                                 9
% 2.20/1.02  fd_pure                                 0
% 2.20/1.02  fd_pseudo                               0
% 2.20/1.02  fd_cond                                 3
% 2.20/1.02  fd_pseudo_cond                          1
% 2.20/1.02  AC symbols                              0
% 2.20/1.02  
% 2.20/1.02  ------ Schedule dynamic 5 is on 
% 2.20/1.02  
% 2.20/1.02  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  ------ 
% 2.20/1.02  Current options:
% 2.20/1.02  ------ 
% 2.20/1.02  
% 2.20/1.02  ------ Input Options
% 2.20/1.02  
% 2.20/1.02  --out_options                           all
% 2.20/1.02  --tptp_safe_out                         true
% 2.20/1.02  --problem_path                          ""
% 2.20/1.02  --include_path                          ""
% 2.20/1.02  --clausifier                            res/vclausify_rel
% 2.20/1.02  --clausifier_options                    --mode clausify
% 2.20/1.02  --stdin                                 false
% 2.20/1.02  --stats_out                             all
% 2.20/1.02  
% 2.20/1.02  ------ General Options
% 2.20/1.02  
% 2.20/1.02  --fof                                   false
% 2.20/1.02  --time_out_real                         305.
% 2.20/1.02  --time_out_virtual                      -1.
% 2.20/1.02  --symbol_type_check                     false
% 2.20/1.02  --clausify_out                          false
% 2.20/1.02  --sig_cnt_out                           false
% 2.20/1.02  --trig_cnt_out                          false
% 2.20/1.02  --trig_cnt_out_tolerance                1.
% 2.20/1.02  --trig_cnt_out_sk_spl                   false
% 2.20/1.02  --abstr_cl_out                          false
% 2.20/1.02  
% 2.20/1.02  ------ Global Options
% 2.20/1.02  
% 2.20/1.02  --schedule                              default
% 2.20/1.02  --add_important_lit                     false
% 2.20/1.02  --prop_solver_per_cl                    1000
% 2.20/1.02  --min_unsat_core                        false
% 2.20/1.02  --soft_assumptions                      false
% 2.20/1.02  --soft_lemma_size                       3
% 2.20/1.02  --prop_impl_unit_size                   0
% 2.20/1.02  --prop_impl_unit                        []
% 2.20/1.02  --share_sel_clauses                     true
% 2.20/1.02  --reset_solvers                         false
% 2.20/1.02  --bc_imp_inh                            [conj_cone]
% 2.20/1.02  --conj_cone_tolerance                   3.
% 2.20/1.02  --extra_neg_conj                        none
% 2.20/1.02  --large_theory_mode                     true
% 2.20/1.02  --prolific_symb_bound                   200
% 2.20/1.02  --lt_threshold                          2000
% 2.20/1.02  --clause_weak_htbl                      true
% 2.20/1.02  --gc_record_bc_elim                     false
% 2.20/1.02  
% 2.20/1.02  ------ Preprocessing Options
% 2.20/1.02  
% 2.20/1.02  --preprocessing_flag                    true
% 2.20/1.02  --time_out_prep_mult                    0.1
% 2.20/1.02  --splitting_mode                        input
% 2.20/1.02  --splitting_grd                         true
% 2.20/1.02  --splitting_cvd                         false
% 2.20/1.02  --splitting_cvd_svl                     false
% 2.20/1.02  --splitting_nvd                         32
% 2.20/1.02  --sub_typing                            true
% 2.20/1.02  --prep_gs_sim                           true
% 2.20/1.02  --prep_unflatten                        true
% 2.20/1.02  --prep_res_sim                          true
% 2.20/1.02  --prep_upred                            true
% 2.20/1.02  --prep_sem_filter                       exhaustive
% 2.20/1.02  --prep_sem_filter_out                   false
% 2.20/1.02  --pred_elim                             true
% 2.20/1.02  --res_sim_input                         true
% 2.20/1.02  --eq_ax_congr_red                       true
% 2.20/1.02  --pure_diseq_elim                       true
% 2.20/1.02  --brand_transform                       false
% 2.20/1.02  --non_eq_to_eq                          false
% 2.20/1.02  --prep_def_merge                        true
% 2.20/1.02  --prep_def_merge_prop_impl              false
% 2.20/1.02  --prep_def_merge_mbd                    true
% 2.20/1.02  --prep_def_merge_tr_red                 false
% 2.20/1.02  --prep_def_merge_tr_cl                  false
% 2.20/1.02  --smt_preprocessing                     true
% 2.20/1.02  --smt_ac_axioms                         fast
% 2.20/1.02  --preprocessed_out                      false
% 2.20/1.02  --preprocessed_stats                    false
% 2.20/1.02  
% 2.20/1.02  ------ Abstraction refinement Options
% 2.20/1.02  
% 2.20/1.02  --abstr_ref                             []
% 2.20/1.02  --abstr_ref_prep                        false
% 2.20/1.02  --abstr_ref_until_sat                   false
% 2.20/1.02  --abstr_ref_sig_restrict                funpre
% 2.20/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.20/1.02  --abstr_ref_under                       []
% 2.20/1.02  
% 2.20/1.02  ------ SAT Options
% 2.20/1.02  
% 2.20/1.02  --sat_mode                              false
% 2.20/1.02  --sat_fm_restart_options                ""
% 2.20/1.02  --sat_gr_def                            false
% 2.20/1.02  --sat_epr_types                         true
% 2.20/1.02  --sat_non_cyclic_types                  false
% 2.20/1.02  --sat_finite_models                     false
% 2.20/1.02  --sat_fm_lemmas                         false
% 2.20/1.02  --sat_fm_prep                           false
% 2.20/1.02  --sat_fm_uc_incr                        true
% 2.20/1.02  --sat_out_model                         small
% 2.20/1.02  --sat_out_clauses                       false
% 2.20/1.02  
% 2.20/1.02  ------ QBF Options
% 2.20/1.02  
% 2.20/1.02  --qbf_mode                              false
% 2.20/1.02  --qbf_elim_univ                         false
% 2.20/1.02  --qbf_dom_inst                          none
% 2.20/1.02  --qbf_dom_pre_inst                      false
% 2.20/1.02  --qbf_sk_in                             false
% 2.20/1.02  --qbf_pred_elim                         true
% 2.20/1.02  --qbf_split                             512
% 2.20/1.02  
% 2.20/1.02  ------ BMC1 Options
% 2.20/1.02  
% 2.20/1.02  --bmc1_incremental                      false
% 2.20/1.02  --bmc1_axioms                           reachable_all
% 2.20/1.02  --bmc1_min_bound                        0
% 2.20/1.02  --bmc1_max_bound                        -1
% 2.20/1.02  --bmc1_max_bound_default                -1
% 2.20/1.02  --bmc1_symbol_reachability              true
% 2.20/1.02  --bmc1_property_lemmas                  false
% 2.20/1.02  --bmc1_k_induction                      false
% 2.20/1.02  --bmc1_non_equiv_states                 false
% 2.20/1.02  --bmc1_deadlock                         false
% 2.20/1.02  --bmc1_ucm                              false
% 2.20/1.02  --bmc1_add_unsat_core                   none
% 2.20/1.02  --bmc1_unsat_core_children              false
% 2.20/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.20/1.02  --bmc1_out_stat                         full
% 2.20/1.02  --bmc1_ground_init                      false
% 2.20/1.02  --bmc1_pre_inst_next_state              false
% 2.20/1.02  --bmc1_pre_inst_state                   false
% 2.20/1.02  --bmc1_pre_inst_reach_state             false
% 2.20/1.02  --bmc1_out_unsat_core                   false
% 2.20/1.02  --bmc1_aig_witness_out                  false
% 2.20/1.02  --bmc1_verbose                          false
% 2.20/1.02  --bmc1_dump_clauses_tptp                false
% 2.20/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.20/1.02  --bmc1_dump_file                        -
% 2.20/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.20/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.20/1.02  --bmc1_ucm_extend_mode                  1
% 2.20/1.02  --bmc1_ucm_init_mode                    2
% 2.20/1.02  --bmc1_ucm_cone_mode                    none
% 2.20/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.20/1.02  --bmc1_ucm_relax_model                  4
% 2.20/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.20/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.20/1.02  --bmc1_ucm_layered_model                none
% 2.20/1.02  --bmc1_ucm_max_lemma_size               10
% 2.20/1.02  
% 2.20/1.02  ------ AIG Options
% 2.20/1.02  
% 2.20/1.02  --aig_mode                              false
% 2.20/1.02  
% 2.20/1.02  ------ Instantiation Options
% 2.20/1.02  
% 2.20/1.02  --instantiation_flag                    true
% 2.20/1.02  --inst_sos_flag                         false
% 2.20/1.02  --inst_sos_phase                        true
% 2.20/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.20/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.20/1.02  --inst_lit_sel_side                     none
% 2.20/1.02  --inst_solver_per_active                1400
% 2.20/1.02  --inst_solver_calls_frac                1.
% 2.20/1.02  --inst_passive_queue_type               priority_queues
% 2.20/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.20/1.02  --inst_passive_queues_freq              [25;2]
% 2.20/1.02  --inst_dismatching                      true
% 2.20/1.02  --inst_eager_unprocessed_to_passive     true
% 2.20/1.02  --inst_prop_sim_given                   true
% 2.20/1.02  --inst_prop_sim_new                     false
% 2.20/1.02  --inst_subs_new                         false
% 2.20/1.02  --inst_eq_res_simp                      false
% 2.20/1.02  --inst_subs_given                       false
% 2.20/1.02  --inst_orphan_elimination               true
% 2.20/1.02  --inst_learning_loop_flag               true
% 2.20/1.02  --inst_learning_start                   3000
% 2.20/1.02  --inst_learning_factor                  2
% 2.20/1.02  --inst_start_prop_sim_after_learn       3
% 2.20/1.02  --inst_sel_renew                        solver
% 2.20/1.02  --inst_lit_activity_flag                true
% 2.20/1.02  --inst_restr_to_given                   false
% 2.20/1.02  --inst_activity_threshold               500
% 2.20/1.02  --inst_out_proof                        true
% 2.20/1.02  
% 2.20/1.02  ------ Resolution Options
% 2.20/1.02  
% 2.20/1.02  --resolution_flag                       false
% 2.20/1.02  --res_lit_sel                           adaptive
% 2.20/1.02  --res_lit_sel_side                      none
% 2.20/1.02  --res_ordering                          kbo
% 2.20/1.02  --res_to_prop_solver                    active
% 2.20/1.02  --res_prop_simpl_new                    false
% 2.20/1.02  --res_prop_simpl_given                  true
% 2.20/1.02  --res_passive_queue_type                priority_queues
% 2.20/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.20/1.02  --res_passive_queues_freq               [15;5]
% 2.20/1.02  --res_forward_subs                      full
% 2.20/1.02  --res_backward_subs                     full
% 2.20/1.02  --res_forward_subs_resolution           true
% 2.20/1.02  --res_backward_subs_resolution          true
% 2.20/1.02  --res_orphan_elimination                true
% 2.20/1.02  --res_time_limit                        2.
% 2.20/1.02  --res_out_proof                         true
% 2.20/1.02  
% 2.20/1.02  ------ Superposition Options
% 2.20/1.02  
% 2.20/1.02  --superposition_flag                    true
% 2.20/1.02  --sup_passive_queue_type                priority_queues
% 2.20/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.20/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.20/1.02  --demod_completeness_check              fast
% 2.20/1.02  --demod_use_ground                      true
% 2.20/1.02  --sup_to_prop_solver                    passive
% 2.20/1.02  --sup_prop_simpl_new                    true
% 2.20/1.02  --sup_prop_simpl_given                  true
% 2.20/1.02  --sup_fun_splitting                     false
% 2.20/1.02  --sup_smt_interval                      50000
% 2.20/1.02  
% 2.20/1.02  ------ Superposition Simplification Setup
% 2.20/1.02  
% 2.20/1.02  --sup_indices_passive                   []
% 2.20/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.20/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.02  --sup_full_bw                           [BwDemod]
% 2.20/1.02  --sup_immed_triv                        [TrivRules]
% 2.20/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.20/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.02  --sup_immed_bw_main                     []
% 2.20/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.20/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.02  
% 2.20/1.02  ------ Combination Options
% 2.20/1.02  
% 2.20/1.02  --comb_res_mult                         3
% 2.20/1.02  --comb_sup_mult                         2
% 2.20/1.02  --comb_inst_mult                        10
% 2.20/1.02  
% 2.20/1.02  ------ Debug Options
% 2.20/1.02  
% 2.20/1.02  --dbg_backtrace                         false
% 2.20/1.02  --dbg_dump_prop_clauses                 false
% 2.20/1.02  --dbg_dump_prop_clauses_file            -
% 2.20/1.02  --dbg_out_stat                          false
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  ------ Proving...
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  % SZS status Theorem for theBenchmark.p
% 2.20/1.02  
% 2.20/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 2.20/1.02  
% 2.20/1.02  fof(f4,axiom,(
% 2.20/1.02    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f13,plain,(
% 2.20/1.02    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.20/1.02    inference(ennf_transformation,[],[f4])).
% 2.20/1.02  
% 2.20/1.02  fof(f14,plain,(
% 2.20/1.02    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.20/1.02    inference(flattening,[],[f13])).
% 2.20/1.02  
% 2.20/1.02  fof(f23,plain,(
% 2.20/1.02    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0)))) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.20/1.02    inference(nnf_transformation,[],[f14])).
% 2.20/1.02  
% 2.20/1.02  fof(f24,plain,(
% 2.20/1.02    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.20/1.02    inference(rectify,[],[f23])).
% 2.20/1.02  
% 2.20/1.02  fof(f27,plain,(
% 2.20/1.02    ! [X5,X0] : (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) => (k1_funct_1(X0,sK2(X0,X5)) = X5 & r2_hidden(sK2(X0,X5),k1_relat_1(X0))))),
% 2.20/1.02    introduced(choice_axiom,[])).
% 2.20/1.02  
% 2.20/1.02  fof(f26,plain,(
% 2.20/1.02    ( ! [X2] : (! [X1,X0] : (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) => (k1_funct_1(X0,sK1(X0,X1)) = X2 & r2_hidden(sK1(X0,X1),k1_relat_1(X0))))) )),
% 2.20/1.02    introduced(choice_axiom,[])).
% 2.20/1.02  
% 2.20/1.02  fof(f25,plain,(
% 2.20/1.02    ! [X1,X0] : (? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1))) => ((! [X3] : (k1_funct_1(X0,X3) != sK0(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK0(X0,X1),X1)) & (? [X4] : (k1_funct_1(X0,X4) = sK0(X0,X1) & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(sK0(X0,X1),X1))))),
% 2.20/1.02    introduced(choice_axiom,[])).
% 2.20/1.02  
% 2.20/1.02  fof(f28,plain,(
% 2.20/1.02    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ((! [X3] : (k1_funct_1(X0,X3) != sK0(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK0(X0,X1),X1)) & ((k1_funct_1(X0,sK1(X0,X1)) = sK0(X0,X1) & r2_hidden(sK1(X0,X1),k1_relat_1(X0))) | r2_hidden(sK0(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & ((k1_funct_1(X0,sK2(X0,X5)) = X5 & r2_hidden(sK2(X0,X5),k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.20/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f24,f27,f26,f25])).
% 2.20/1.02  
% 2.20/1.02  fof(f38,plain,(
% 2.20/1.02    ( ! [X0,X5,X1] : (r2_hidden(sK2(X0,X5),k1_relat_1(X0)) | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.20/1.02    inference(cnf_transformation,[],[f28])).
% 2.20/1.02  
% 2.20/1.02  fof(f56,plain,(
% 2.20/1.02    ( ! [X0,X5] : (r2_hidden(sK2(X0,X5),k1_relat_1(X0)) | ~r2_hidden(X5,k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.20/1.02    inference(equality_resolution,[],[f38])).
% 2.20/1.02  
% 2.20/1.02  fof(f8,conjecture,(
% 2.20/1.02    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ~(! [X4] : (m1_subset_1(X4,X1) => k1_funct_1(X3,X4) != X0) & r2_hidden(X0,k2_relset_1(X1,X2,X3))))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f9,negated_conjecture,(
% 2.20/1.02    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ~(! [X4] : (m1_subset_1(X4,X1) => k1_funct_1(X3,X4) != X0) & r2_hidden(X0,k2_relset_1(X1,X2,X3))))),
% 2.20/1.02    inference(negated_conjecture,[],[f8])).
% 2.20/1.02  
% 2.20/1.02  fof(f10,plain,(
% 2.20/1.02    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3)) => ~(! [X4] : (m1_subset_1(X4,X1) => k1_funct_1(X3,X4) != X0) & r2_hidden(X0,k2_relset_1(X1,X2,X3))))),
% 2.20/1.02    inference(pure_predicate_removal,[],[f9])).
% 2.20/1.02  
% 2.20/1.02  fof(f19,plain,(
% 2.20/1.02    ? [X0,X1,X2,X3] : ((! [X4] : (k1_funct_1(X3,X4) != X0 | ~m1_subset_1(X4,X1)) & r2_hidden(X0,k2_relset_1(X1,X2,X3))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3)))),
% 2.20/1.02    inference(ennf_transformation,[],[f10])).
% 2.20/1.02  
% 2.20/1.02  fof(f20,plain,(
% 2.20/1.02    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X0 | ~m1_subset_1(X4,X1)) & r2_hidden(X0,k2_relset_1(X1,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3))),
% 2.20/1.02    inference(flattening,[],[f19])).
% 2.20/1.02  
% 2.20/1.02  fof(f31,plain,(
% 2.20/1.02    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X0 | ~m1_subset_1(X4,X1)) & r2_hidden(X0,k2_relset_1(X1,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X3)) => (! [X4] : (k1_funct_1(sK6,X4) != sK3 | ~m1_subset_1(X4,sK4)) & r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) & v1_funct_1(sK6))),
% 2.20/1.02    introduced(choice_axiom,[])).
% 2.20/1.02  
% 2.20/1.02  fof(f32,plain,(
% 2.20/1.02    ! [X4] : (k1_funct_1(sK6,X4) != sK3 | ~m1_subset_1(X4,sK4)) & r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) & v1_funct_1(sK6)),
% 2.20/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f20,f31])).
% 2.20/1.02  
% 2.20/1.02  fof(f49,plain,(
% 2.20/1.02    v1_funct_1(sK6)),
% 2.20/1.02    inference(cnf_transformation,[],[f32])).
% 2.20/1.02  
% 2.20/1.02  fof(f50,plain,(
% 2.20/1.02    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))),
% 2.20/1.02    inference(cnf_transformation,[],[f32])).
% 2.20/1.02  
% 2.20/1.02  fof(f6,axiom,(
% 2.20/1.02    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f17,plain,(
% 2.20/1.02    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/1.02    inference(ennf_transformation,[],[f6])).
% 2.20/1.02  
% 2.20/1.02  fof(f47,plain,(
% 2.20/1.02    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/1.02    inference(cnf_transformation,[],[f17])).
% 2.20/1.02  
% 2.20/1.02  fof(f5,axiom,(
% 2.20/1.02    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f15,plain,(
% 2.20/1.02    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2)))),
% 2.20/1.02    inference(ennf_transformation,[],[f5])).
% 2.20/1.02  
% 2.20/1.02  fof(f16,plain,(
% 2.20/1.02    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.20/1.02    inference(flattening,[],[f15])).
% 2.20/1.02  
% 2.20/1.02  fof(f29,plain,(
% 2.20/1.02    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | (k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2)))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.20/1.02    inference(nnf_transformation,[],[f16])).
% 2.20/1.02  
% 2.20/1.02  fof(f30,plain,(
% 2.20/1.02    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.20/1.02    inference(flattening,[],[f29])).
% 2.20/1.02  
% 2.20/1.02  fof(f46,plain,(
% 2.20/1.02    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(X0,X1),X2) | k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 2.20/1.02    inference(cnf_transformation,[],[f30])).
% 2.20/1.02  
% 2.20/1.02  fof(f57,plain,(
% 2.20/1.02    ( ! [X2,X0] : (r2_hidden(k4_tarski(X0,k1_funct_1(X2,X0)),X2) | ~r2_hidden(X0,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 2.20/1.02    inference(equality_resolution,[],[f46])).
% 2.20/1.02  
% 2.20/1.02  fof(f2,axiom,(
% 2.20/1.02    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f11,plain,(
% 2.20/1.02    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.20/1.02    inference(ennf_transformation,[],[f2])).
% 2.20/1.02  
% 2.20/1.02  fof(f36,plain,(
% 2.20/1.02    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.20/1.02    inference(cnf_transformation,[],[f11])).
% 2.20/1.02  
% 2.20/1.02  fof(f1,axiom,(
% 2.20/1.02    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) <=> (r2_hidden(X1,X3) & r2_hidden(X0,X2)))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f21,plain,(
% 2.20/1.02    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | (~r2_hidden(X1,X3) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.20/1.02    inference(nnf_transformation,[],[f1])).
% 2.20/1.02  
% 2.20/1.02  fof(f22,plain,(
% 2.20/1.02    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.20/1.02    inference(flattening,[],[f21])).
% 2.20/1.02  
% 2.20/1.02  fof(f33,plain,(
% 2.20/1.02    ( ! [X2,X0,X3,X1] : (r2_hidden(X0,X2) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))) )),
% 2.20/1.02    inference(cnf_transformation,[],[f22])).
% 2.20/1.02  
% 2.20/1.02  fof(f3,axiom,(
% 2.20/1.02    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f12,plain,(
% 2.20/1.02    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 2.20/1.02    inference(ennf_transformation,[],[f3])).
% 2.20/1.02  
% 2.20/1.02  fof(f37,plain,(
% 2.20/1.02    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 2.20/1.02    inference(cnf_transformation,[],[f12])).
% 2.20/1.02  
% 2.20/1.02  fof(f7,axiom,(
% 2.20/1.02    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.20/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/1.02  
% 2.20/1.02  fof(f18,plain,(
% 2.20/1.02    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/1.02    inference(ennf_transformation,[],[f7])).
% 2.20/1.02  
% 2.20/1.02  fof(f48,plain,(
% 2.20/1.02    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/1.02    inference(cnf_transformation,[],[f18])).
% 2.20/1.02  
% 2.20/1.02  fof(f51,plain,(
% 2.20/1.02    r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))),
% 2.20/1.02    inference(cnf_transformation,[],[f32])).
% 2.20/1.02  
% 2.20/1.02  fof(f39,plain,(
% 2.20/1.02    ( ! [X0,X5,X1] : (k1_funct_1(X0,sK2(X0,X5)) = X5 | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.20/1.02    inference(cnf_transformation,[],[f28])).
% 2.20/1.02  
% 2.20/1.02  fof(f55,plain,(
% 2.20/1.02    ( ! [X0,X5] : (k1_funct_1(X0,sK2(X0,X5)) = X5 | ~r2_hidden(X5,k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.20/1.02    inference(equality_resolution,[],[f39])).
% 2.20/1.02  
% 2.20/1.02  fof(f52,plain,(
% 2.20/1.02    ( ! [X4] : (k1_funct_1(sK6,X4) != sK3 | ~m1_subset_1(X4,sK4)) )),
% 2.20/1.02    inference(cnf_transformation,[],[f32])).
% 2.20/1.02  
% 2.20/1.02  cnf(c_10,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.20/1.02      | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
% 2.20/1.02      | ~ v1_relat_1(X1)
% 2.20/1.02      | ~ v1_funct_1(X1) ),
% 2.20/1.02      inference(cnf_transformation,[],[f56]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_19,negated_conjecture,
% 2.20/1.02      ( v1_funct_1(sK6) ),
% 2.20/1.02      inference(cnf_transformation,[],[f49]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_402,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.20/1.02      | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
% 2.20/1.02      | ~ v1_relat_1(X1)
% 2.20/1.02      | sK6 != X1 ),
% 2.20/1.02      inference(resolution_lifted,[status(thm)],[c_10,c_19]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_403,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k2_relat_1(sK6))
% 2.20/1.02      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6))
% 2.20/1.02      | ~ v1_relat_1(sK6) ),
% 2.20/1.02      inference(unflattening,[status(thm)],[c_402]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1449,plain,
% 2.20/1.02      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
% 2.20/1.02      | v1_relat_1(sK6) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_403]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_18,negated_conjecture,
% 2.20/1.02      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
% 2.20/1.02      inference(cnf_transformation,[],[f50]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_21,plain,
% 2.20/1.02      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_404,plain,
% 2.20/1.02      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
% 2.20/1.02      | v1_relat_1(sK6) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_403]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_14,plain,
% 2.20/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.02      | v1_relat_1(X0) ),
% 2.20/1.02      inference(cnf_transformation,[],[f47]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1614,plain,
% 2.20/1.02      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 2.20/1.02      | v1_relat_1(sK6) ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_14]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1615,plain,
% 2.20/1.02      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top
% 2.20/1.02      | v1_relat_1(sK6) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_1614]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1689,plain,
% 2.20/1.02      ( r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
% 2.20/1.02      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
% 2.20/1.02      inference(global_propositional_subsumption,
% 2.20/1.02                [status(thm)],
% 2.20/1.02                [c_1449,c_21,c_404,c_1615]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1690,plain,
% 2.20/1.02      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top ),
% 2.20/1.02      inference(renaming,[status(thm)],[c_1689]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_11,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.20/1.02      | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
% 2.20/1.02      | ~ v1_relat_1(X1)
% 2.20/1.02      | ~ v1_funct_1(X1) ),
% 2.20/1.02      inference(cnf_transformation,[],[f57]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_387,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.20/1.02      | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
% 2.20/1.02      | ~ v1_relat_1(X1)
% 2.20/1.02      | sK6 != X1 ),
% 2.20/1.02      inference(resolution_lifted,[status(thm)],[c_11,c_19]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_388,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k1_relat_1(sK6))
% 2.20/1.02      | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6)
% 2.20/1.02      | ~ v1_relat_1(sK6) ),
% 2.20/1.02      inference(unflattening,[status(thm)],[c_387]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1450,plain,
% 2.20/1.02      ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top
% 2.20/1.02      | v1_relat_1(sK6) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_388]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_389,plain,
% 2.20/1.02      ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top
% 2.20/1.02      | v1_relat_1(sK6) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_388]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2034,plain,
% 2.20/1.02      ( r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top
% 2.20/1.02      | r2_hidden(X0,k1_relat_1(sK6)) != iProver_top ),
% 2.20/1.02      inference(global_propositional_subsumption,
% 2.20/1.02                [status(thm)],
% 2.20/1.02                [c_1450,c_21,c_389,c_1615]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2035,plain,
% 2.20/1.02      ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(k4_tarski(X0,k1_funct_1(sK6,X0)),sK6) = iProver_top ),
% 2.20/1.02      inference(renaming,[status(thm)],[c_2034]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1454,plain,
% 2.20/1.02      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_3,plain,
% 2.20/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.20/1.02      | ~ r2_hidden(X2,X0)
% 2.20/1.02      | r2_hidden(X2,X1) ),
% 2.20/1.02      inference(cnf_transformation,[],[f36]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1460,plain,
% 2.20/1.02      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.20/1.02      | r2_hidden(X2,X0) != iProver_top
% 2.20/1.02      | r2_hidden(X2,X1) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2473,plain,
% 2.20/1.02      ( r2_hidden(X0,k2_zfmisc_1(sK4,sK5)) = iProver_top
% 2.20/1.02      | r2_hidden(X0,sK6) != iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_1454,c_1460]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2,plain,
% 2.20/1.02      ( r2_hidden(X0,X1)
% 2.20/1.02      | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
% 2.20/1.02      inference(cnf_transformation,[],[f33]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1461,plain,
% 2.20/1.02      ( r2_hidden(X0,X1) = iProver_top
% 2.20/1.02      | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2829,plain,
% 2.20/1.02      ( r2_hidden(X0,sK4) = iProver_top
% 2.20/1.02      | r2_hidden(k4_tarski(X0,X1),sK6) != iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_2473,c_1461]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_3575,plain,
% 2.20/1.02      ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(X0,sK4) = iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_2035,c_2829]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_3585,plain,
% 2.20/1.02      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(sK2(sK6,X0),sK4) = iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_1690,c_3575]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_4,plain,
% 2.20/1.02      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 2.20/1.02      inference(cnf_transformation,[],[f37]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1459,plain,
% 2.20/1.02      ( m1_subset_1(X0,X1) = iProver_top
% 2.20/1.02      | r2_hidden(X0,X1) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_4352,plain,
% 2.20/1.02      ( m1_subset_1(sK2(sK6,X0),sK4) = iProver_top
% 2.20/1.02      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_3585,c_1459]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_15,plain,
% 2.20/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.02      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.20/1.02      inference(cnf_transformation,[],[f48]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1457,plain,
% 2.20/1.02      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.20/1.02      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2580,plain,
% 2.20/1.02      ( k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_1454,c_1457]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_17,negated_conjecture,
% 2.20/1.02      ( r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) ),
% 2.20/1.02      inference(cnf_transformation,[],[f51]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1455,plain,
% 2.20/1.02      ( r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2688,plain,
% 2.20/1.02      ( r2_hidden(sK3,k2_relat_1(sK6)) = iProver_top ),
% 2.20/1.02      inference(demodulation,[status(thm)],[c_2580,c_1455]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_9,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.20/1.02      | ~ v1_relat_1(X1)
% 2.20/1.02      | ~ v1_funct_1(X1)
% 2.20/1.02      | k1_funct_1(X1,sK2(X1,X0)) = X0 ),
% 2.20/1.02      inference(cnf_transformation,[],[f55]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_417,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.20/1.02      | ~ v1_relat_1(X1)
% 2.20/1.02      | k1_funct_1(X1,sK2(X1,X0)) = X0
% 2.20/1.02      | sK6 != X1 ),
% 2.20/1.02      inference(resolution_lifted,[status(thm)],[c_9,c_19]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_418,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,k2_relat_1(sK6))
% 2.20/1.02      | ~ v1_relat_1(sK6)
% 2.20/1.02      | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
% 2.20/1.02      inference(unflattening,[status(thm)],[c_417]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1448,plain,
% 2.20/1.02      ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
% 2.20/1.02      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | v1_relat_1(sK6) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_418]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_419,plain,
% 2.20/1.02      ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
% 2.20/1.02      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | v1_relat_1(sK6) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_418]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1643,plain,
% 2.20/1.02      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.20/1.02      | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
% 2.20/1.02      inference(global_propositional_subsumption,
% 2.20/1.02                [status(thm)],
% 2.20/1.02                [c_1448,c_21,c_419,c_1615]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1644,plain,
% 2.20/1.02      ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
% 2.20/1.02      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
% 2.20/1.02      inference(renaming,[status(thm)],[c_1643]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2698,plain,
% 2.20/1.02      ( k1_funct_1(sK6,sK2(sK6,sK3)) = sK3 ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_2688,c_1644]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_16,negated_conjecture,
% 2.20/1.02      ( ~ m1_subset_1(X0,sK4) | k1_funct_1(sK6,X0) != sK3 ),
% 2.20/1.02      inference(cnf_transformation,[],[f52]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1456,plain,
% 2.20/1.02      ( k1_funct_1(sK6,X0) != sK3 | m1_subset_1(X0,sK4) != iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_3121,plain,
% 2.20/1.02      ( m1_subset_1(sK2(sK6,sK3),sK4) != iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_2698,c_1456]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_5810,plain,
% 2.20/1.02      ( r2_hidden(sK3,k2_relat_1(sK6)) != iProver_top ),
% 2.20/1.02      inference(superposition,[status(thm)],[c_4352,c_3121]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1099,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1827,plain,
% 2.20/1.02      ( X0 != X1
% 2.20/1.02      | X0 = k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | k2_relset_1(sK4,sK5,sK6) != X1 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1099]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2058,plain,
% 2.20/1.02      ( X0 = k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | X0 != k2_relat_1(sK6)
% 2.20/1.02      | k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6) ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1827]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_2457,plain,
% 2.20/1.02      ( k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6)
% 2.20/1.02      | k2_relat_1(sK6) = k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | k2_relat_1(sK6) != k2_relat_1(sK6) ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_2058]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1102,plain,
% 2.20/1.02      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.20/1.02      theory(equality) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1660,plain,
% 2.20/1.02      ( r2_hidden(X0,X1)
% 2.20/1.02      | ~ r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
% 2.20/1.02      | X1 != k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | X0 != sK3 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1102]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1700,plain,
% 2.20/1.02      ( r2_hidden(sK3,X0)
% 2.20/1.02      | ~ r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
% 2.20/1.02      | X0 != k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | sK3 != sK3 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1660]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1836,plain,
% 2.20/1.02      ( ~ r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6))
% 2.20/1.02      | r2_hidden(sK3,k2_relat_1(sK6))
% 2.20/1.02      | k2_relat_1(sK6) != k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | sK3 != sK3 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1700]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1838,plain,
% 2.20/1.02      ( k2_relat_1(sK6) != k2_relset_1(sK4,sK5,sK6)
% 2.20/1.02      | sK3 != sK3
% 2.20/1.02      | r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) != iProver_top
% 2.20/1.02      | r2_hidden(sK3,k2_relat_1(sK6)) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_1836]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1098,plain,( X0 = X0 ),theory(equality) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1701,plain,
% 2.20/1.02      ( sK3 = sK3 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1098]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1634,plain,
% 2.20/1.02      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 2.20/1.02      | k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_15]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1127,plain,
% 2.20/1.02      ( sK6 = sK6 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1098]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1105,plain,
% 2.20/1.02      ( X0 != X1 | k2_relat_1(X0) = k2_relat_1(X1) ),
% 2.20/1.02      theory(equality) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_1118,plain,
% 2.20/1.02      ( k2_relat_1(sK6) = k2_relat_1(sK6) | sK6 != sK6 ),
% 2.20/1.02      inference(instantiation,[status(thm)],[c_1105]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(c_22,plain,
% 2.20/1.02      ( r2_hidden(sK3,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
% 2.20/1.02      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.20/1.02  
% 2.20/1.02  cnf(contradiction,plain,
% 2.20/1.02      ( $false ),
% 2.20/1.02      inference(minisat,
% 2.20/1.02                [status(thm)],
% 2.20/1.02                [c_5810,c_2457,c_1838,c_1701,c_1634,c_1127,c_1118,c_22,
% 2.20/1.02                 c_18]) ).
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 2.20/1.02  
% 2.20/1.02  ------                               Statistics
% 2.20/1.02  
% 2.20/1.02  ------ General
% 2.20/1.02  
% 2.20/1.02  abstr_ref_over_cycles:                  0
% 2.20/1.02  abstr_ref_under_cycles:                 0
% 2.20/1.02  gc_basic_clause_elim:                   0
% 2.20/1.02  forced_gc_time:                         0
% 2.20/1.02  parsing_time:                           0.009
% 2.20/1.02  unif_index_cands_time:                  0.
% 2.20/1.02  unif_index_add_time:                    0.
% 2.20/1.02  orderings_time:                         0.
% 2.20/1.02  out_proof_time:                         0.008
% 2.20/1.02  total_time:                             0.219
% 2.20/1.02  num_of_symbols:                         49
% 2.20/1.02  num_of_terms:                           5983
% 2.20/1.02  
% 2.20/1.02  ------ Preprocessing
% 2.20/1.02  
% 2.20/1.02  num_of_splits:                          0
% 2.20/1.02  num_of_split_atoms:                     0
% 2.20/1.02  num_of_reused_defs:                     0
% 2.20/1.02  num_eq_ax_congr_red:                    18
% 2.20/1.02  num_of_sem_filtered_clauses:            1
% 2.20/1.02  num_of_subtypes:                        0
% 2.20/1.02  monotx_restored_types:                  0
% 2.20/1.02  sat_num_of_epr_types:                   0
% 2.20/1.02  sat_num_of_non_cyclic_types:            0
% 2.20/1.02  sat_guarded_non_collapsed_types:        0
% 2.20/1.02  num_pure_diseq_elim:                    0
% 2.20/1.02  simp_replaced_by:                       0
% 2.20/1.02  res_preprocessed:                       108
% 2.20/1.02  prep_upred:                             0
% 2.20/1.02  prep_unflattend:                        51
% 2.20/1.02  smt_new_axioms:                         0
% 2.20/1.02  pred_elim_cands:                        3
% 2.20/1.02  pred_elim:                              1
% 2.20/1.02  pred_elim_cl:                           1
% 2.20/1.02  pred_elim_cycles:                       5
% 2.20/1.02  merged_defs:                            0
% 2.20/1.02  merged_defs_ncl:                        0
% 2.20/1.02  bin_hyper_res:                          0
% 2.20/1.02  prep_cycles:                            4
% 2.20/1.02  pred_elim_time:                         0.012
% 2.20/1.02  splitting_time:                         0.
% 2.20/1.02  sem_filter_time:                        0.
% 2.20/1.02  monotx_time:                            0.
% 2.20/1.02  subtype_inf_time:                       0.
% 2.20/1.02  
% 2.20/1.02  ------ Problem properties
% 2.20/1.02  
% 2.20/1.02  clauses:                                19
% 2.20/1.02  conjectures:                            3
% 2.20/1.02  epr:                                    1
% 2.20/1.02  horn:                                   17
% 2.20/1.02  ground:                                 2
% 2.20/1.02  unary:                                  2
% 2.20/1.02  binary:                                 6
% 2.20/1.02  lits:                                   51
% 2.20/1.02  lits_eq:                                9
% 2.20/1.02  fd_pure:                                0
% 2.20/1.02  fd_pseudo:                              0
% 2.20/1.02  fd_cond:                                3
% 2.20/1.02  fd_pseudo_cond:                         1
% 2.20/1.02  ac_symbols:                             0
% 2.20/1.02  
% 2.20/1.02  ------ Propositional Solver
% 2.20/1.02  
% 2.20/1.02  prop_solver_calls:                      28
% 2.20/1.02  prop_fast_solver_calls:                 855
% 2.20/1.02  smt_solver_calls:                       0
% 2.20/1.02  smt_fast_solver_calls:                  0
% 2.20/1.02  prop_num_of_clauses:                    2425
% 2.20/1.02  prop_preprocess_simplified:             6595
% 2.20/1.02  prop_fo_subsumed:                       11
% 2.20/1.02  prop_solver_time:                       0.
% 2.20/1.02  smt_solver_time:                        0.
% 2.20/1.02  smt_fast_solver_time:                   0.
% 2.20/1.02  prop_fast_solver_time:                  0.
% 2.20/1.02  prop_unsat_core_time:                   0.
% 2.20/1.02  
% 2.20/1.02  ------ QBF
% 2.20/1.02  
% 2.20/1.02  qbf_q_res:                              0
% 2.20/1.02  qbf_num_tautologies:                    0
% 2.20/1.02  qbf_prep_cycles:                        0
% 2.20/1.02  
% 2.20/1.02  ------ BMC1
% 2.20/1.02  
% 2.20/1.02  bmc1_current_bound:                     -1
% 2.20/1.02  bmc1_last_solved_bound:                 -1
% 2.20/1.02  bmc1_unsat_core_size:                   -1
% 2.20/1.02  bmc1_unsat_core_parents_size:           -1
% 2.20/1.02  bmc1_merge_next_fun:                    0
% 2.20/1.02  bmc1_unsat_core_clauses_time:           0.
% 2.20/1.02  
% 2.20/1.02  ------ Instantiation
% 2.20/1.02  
% 2.20/1.02  inst_num_of_clauses:                    795
% 2.20/1.02  inst_num_in_passive:                    373
% 2.20/1.02  inst_num_in_active:                     210
% 2.20/1.02  inst_num_in_unprocessed:                212
% 2.20/1.02  inst_num_of_loops:                      260
% 2.20/1.02  inst_num_of_learning_restarts:          0
% 2.20/1.02  inst_num_moves_active_passive:          47
% 2.20/1.02  inst_lit_activity:                      0
% 2.20/1.02  inst_lit_activity_moves:                1
% 2.20/1.02  inst_num_tautologies:                   0
% 2.20/1.02  inst_num_prop_implied:                  0
% 2.20/1.02  inst_num_existing_simplified:           0
% 2.20/1.02  inst_num_eq_res_simplified:             0
% 2.20/1.02  inst_num_child_elim:                    0
% 2.20/1.02  inst_num_of_dismatching_blockings:      18
% 2.20/1.02  inst_num_of_non_proper_insts:           455
% 2.20/1.02  inst_num_of_duplicates:                 0
% 2.20/1.02  inst_inst_num_from_inst_to_res:         0
% 2.20/1.02  inst_dismatching_checking_time:         0.
% 2.20/1.02  
% 2.20/1.02  ------ Resolution
% 2.20/1.02  
% 2.20/1.02  res_num_of_clauses:                     0
% 2.20/1.02  res_num_in_passive:                     0
% 2.20/1.02  res_num_in_active:                      0
% 2.20/1.02  res_num_of_loops:                       112
% 2.20/1.02  res_forward_subset_subsumed:            56
% 2.20/1.02  res_backward_subset_subsumed:           0
% 2.20/1.02  res_forward_subsumed:                   0
% 2.20/1.02  res_backward_subsumed:                  0
% 2.20/1.02  res_forward_subsumption_resolution:     0
% 2.20/1.02  res_backward_subsumption_resolution:    0
% 2.20/1.02  res_clause_to_clause_subsumption:       157
% 2.20/1.02  res_orphan_elimination:                 0
% 2.20/1.02  res_tautology_del:                      16
% 2.20/1.02  res_num_eq_res_simplified:              0
% 2.20/1.02  res_num_sel_changes:                    0
% 2.20/1.02  res_moves_from_active_to_pass:          0
% 2.20/1.02  
% 2.20/1.02  ------ Superposition
% 2.20/1.02  
% 2.20/1.02  sup_time_total:                         0.
% 2.20/1.02  sup_time_generating:                    0.
% 2.20/1.02  sup_time_sim_full:                      0.
% 2.20/1.02  sup_time_sim_immed:                     0.
% 2.20/1.02  
% 2.20/1.02  sup_num_of_clauses:                     80
% 2.20/1.02  sup_num_in_active:                      50
% 2.20/1.02  sup_num_in_passive:                     30
% 2.20/1.02  sup_num_of_loops:                       51
% 2.20/1.02  sup_fw_superposition:                   35
% 2.20/1.02  sup_bw_superposition:                   50
% 2.20/1.02  sup_immediate_simplified:               4
% 2.20/1.02  sup_given_eliminated:                   0
% 2.20/1.02  comparisons_done:                       0
% 2.20/1.02  comparisons_avoided:                    4
% 2.20/1.02  
% 2.20/1.02  ------ Simplifications
% 2.20/1.02  
% 2.20/1.02  
% 2.20/1.02  sim_fw_subset_subsumed:                 2
% 2.20/1.02  sim_bw_subset_subsumed:                 1
% 2.20/1.02  sim_fw_subsumed:                        0
% 2.20/1.02  sim_bw_subsumed:                        0
% 2.20/1.02  sim_fw_subsumption_res:                 0
% 2.20/1.02  sim_bw_subsumption_res:                 0
% 2.20/1.02  sim_tautology_del:                      3
% 2.20/1.02  sim_eq_tautology_del:                   12
% 2.20/1.02  sim_eq_res_simp:                        0
% 2.20/1.02  sim_fw_demodulated:                     0
% 2.20/1.02  sim_bw_demodulated:                     2
% 2.20/1.02  sim_light_normalised:                   2
% 2.20/1.02  sim_joinable_taut:                      0
% 2.20/1.02  sim_joinable_simp:                      0
% 2.20/1.02  sim_ac_normalised:                      0
% 2.20/1.02  sim_smt_subsumption:                    0
% 2.20/1.02  
%------------------------------------------------------------------------------
