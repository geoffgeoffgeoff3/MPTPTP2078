%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:56:43 EST 2020

% Result     : Theorem 2.20s
% Output     : CNFRefutation 2.20s
% Verified   : 
% Statistics : Number of formulae       :  152 ( 670 expanded)
%              Number of clauses        :   91 ( 264 expanded)
%              Number of leaves         :   24 ( 172 expanded)
%              Depth                    :   16
%              Number of atoms          :  391 (2395 expanded)
%              Number of equality atoms :  159 ( 636 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f34,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f33])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f34,f35])).

fof(f46,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f51,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f16,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
             => ~ ( ! [X3] :
                      ( m1_subset_1(X3,X1)
                     => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
                  & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
               => ~ ( ! [X3] :
                        ( m1_subset_1(X3,X1)
                       => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
                    & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f31,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ! [X3] :
                  ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
                  | ~ m1_subset_1(X3,X1) )
              & k1_xboole_0 != k2_relset_1(X1,X0,X2)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ! [X3] :
                  ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
                  | ~ m1_subset_1(X3,X1) )
              & k1_xboole_0 != k2_relset_1(X1,X0,X2)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
              | ~ m1_subset_1(X3,X1) )
          & k1_xboole_0 != k2_relset_1(X1,X0,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
     => ( ! [X3] :
            ( ~ r2_hidden(X3,k1_relset_1(X1,X0,sK4))
            | ~ m1_subset_1(X3,X1) )
        & k1_xboole_0 != k2_relset_1(X1,X0,sK4)
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ! [X3] :
                  ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
                  | ~ m1_subset_1(X3,X1) )
              & k1_xboole_0 != k2_relset_1(X1,X0,X2)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
     => ( ? [X2] :
            ( ! [X3] :
                ( ~ r2_hidden(X3,k1_relset_1(sK3,X0,X2))
                | ~ m1_subset_1(X3,sK3) )
            & k1_xboole_0 != k2_relset_1(sK3,X0,X2)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK3,X0))) )
        & ~ v1_xboole_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ! [X3] :
                    ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
                    | ~ m1_subset_1(X3,X1) )
                & k1_xboole_0 != k2_relset_1(X1,X0,X2)
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
            & ~ v1_xboole_0(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ! [X3] :
                  ( ~ r2_hidden(X3,k1_relset_1(X1,sK2,X2))
                  | ~ m1_subset_1(X3,X1) )
              & k1_xboole_0 != k2_relset_1(X1,sK2,X2)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,sK2))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( ! [X3] :
        ( ~ r2_hidden(X3,k1_relset_1(sK3,sK2,sK4))
        | ~ m1_subset_1(X3,sK3) )
    & k1_xboole_0 != k2_relset_1(sK3,sK2,sK4)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    & ~ v1_xboole_0(sK3)
    & ~ v1_xboole_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f32,f43,f42,f41])).

fof(f66,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
    inference(cnf_transformation,[],[f44])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f68,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k1_relset_1(sK3,sK2,sK4))
      | ~ m1_subset_1(X3,sK3) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f37])).

fof(f47,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f67,plain,(
    k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) ),
    inference(cnf_transformation,[],[f44])).

fof(f9,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f9])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f4,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f3,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f45,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
     => ( r1_tarski(k1_relat_1(X3),X1)
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(flattening,[],[f29])).

fof(f63,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => v1_xboole_0(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_xboole_0(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( v1_xboole_0(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_7,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_414,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | v1_xboole_0(X3)
    | X2 != X3
    | sK0(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_7])).

cnf(c_415,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(sK0(X0),X1)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_414])).

cnf(c_5,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_705,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_5])).

cnf(c_738,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(sK0(X0),X1)
    | v1_xboole_0(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_415,c_705])).

cnf(c_1432,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | m1_subset_1(sK0(X0),X1) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_738])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1441,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1444,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2422,plain,
    ( k1_relset_1(sK3,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1441,c_1444])).

cnf(c_19,negated_conjecture,
    ( ~ m1_subset_1(X0,sK3)
    | ~ r2_hidden(X0,k1_relset_1(sK3,sK2,sK4)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_442,plain,
    ( ~ m1_subset_1(X0,sK3)
    | v1_xboole_0(X1)
    | k1_relset_1(sK3,sK2,sK4) != X1
    | sK0(X1) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_19])).

cnf(c_443,plain,
    ( ~ m1_subset_1(sK0(k1_relset_1(sK3,sK2,sK4)),sK3)
    | v1_xboole_0(k1_relset_1(sK3,sK2,sK4)) ),
    inference(unflattening,[status(thm)],[c_442])).

cnf(c_1436,plain,
    ( m1_subset_1(sK0(k1_relset_1(sK3,sK2,sK4)),sK3) != iProver_top
    | v1_xboole_0(k1_relset_1(sK3,sK2,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_443])).

cnf(c_2801,plain,
    ( m1_subset_1(sK0(k1_relat_1(sK4)),sK3) != iProver_top
    | v1_xboole_0(k1_relat_1(sK4)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2422,c_1436])).

cnf(c_2,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_464,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | X2 != X3
    | sK1(X3) != X0
    | k1_xboole_0 = X3 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_7])).

cnf(c_465,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(sK1(X0),X1)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_464])).

cnf(c_739,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(sK1(X0),X1)
    | k1_xboole_0 = X0 ),
    inference(bin_hyper_res,[status(thm)],[c_465,c_705])).

cnf(c_1431,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,X1) != iProver_top
    | m1_subset_1(sK1(X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_739])).

cnf(c_494,plain,
    ( ~ m1_subset_1(X0,sK3)
    | k1_relset_1(sK3,sK2,sK4) != X1
    | sK1(X1) != X0
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_19])).

cnf(c_495,plain,
    ( ~ m1_subset_1(sK1(k1_relset_1(sK3,sK2,sK4)),sK3)
    | k1_xboole_0 = k1_relset_1(sK3,sK2,sK4) ),
    inference(unflattening,[status(thm)],[c_494])).

cnf(c_1433,plain,
    ( k1_xboole_0 = k1_relset_1(sK3,sK2,sK4)
    | m1_subset_1(sK1(k1_relset_1(sK3,sK2,sK4)),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_495])).

cnf(c_1778,plain,
    ( k1_relset_1(sK3,sK2,sK4) = k1_xboole_0
    | r1_tarski(k1_relset_1(sK3,sK2,sK4),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1431,c_1433])).

cnf(c_2800,plain,
    ( k1_relat_1(sK4) = k1_xboole_0
    | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2422,c_1778])).

cnf(c_26,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_14,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_10,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_312,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_14,c_10])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_316,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_312,c_13])).

cnf(c_317,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(renaming,[status(thm)],[c_316])).

cnf(c_1635,plain,
    ( r1_tarski(k1_relat_1(sK4),sK3)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
    inference(instantiation,[status(thm)],[c_317])).

cnf(c_1636,plain,
    ( r1_tarski(k1_relat_1(sK4),sK3) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1635])).

cnf(c_2923,plain,
    ( k1_relat_1(sK4) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2800,c_26,c_1636])).

cnf(c_3379,plain,
    ( m1_subset_1(sK0(k1_xboole_0),sK3) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2801,c_2923])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_11,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_6,plain,
    ( r1_tarski(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_56,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_58,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_56])).

cnf(c_985,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1010,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_985])).

cnf(c_4,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1448,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1461,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1448,c_3])).

cnf(c_1543,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1461])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1664,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | k2_relset_1(sK3,sK2,sK4) = k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_986,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1648,plain,
    ( k2_relset_1(sK3,sK2,sK4) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_986])).

cnf(c_1760,plain,
    ( k2_relset_1(sK3,sK2,sK4) != k2_relat_1(sK4)
    | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4)
    | k1_xboole_0 != k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1648])).

cnf(c_1901,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_985])).

cnf(c_1795,plain,
    ( k2_relat_1(sK4) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_986])).

cnf(c_2091,plain,
    ( k2_relat_1(sK4) != k2_relat_1(X0)
    | k1_xboole_0 != k2_relat_1(X0)
    | k1_xboole_0 = k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1795])).

cnf(c_2093,plain,
    ( k2_relat_1(sK4) != k2_relat_1(k1_xboole_0)
    | k1_xboole_0 = k2_relat_1(sK4)
    | k1_xboole_0 != k2_relat_1(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_2091])).

cnf(c_994,plain,
    ( X0 != X1
    | k2_relat_1(X0) = k2_relat_1(X1) ),
    theory(equality)).

cnf(c_2092,plain,
    ( k2_relat_1(sK4) = k2_relat_1(X0)
    | sK4 != X0 ),
    inference(instantiation,[status(thm)],[c_994])).

cnf(c_2094,plain,
    ( k2_relat_1(sK4) = k2_relat_1(k1_xboole_0)
    | sK4 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2092])).

cnf(c_992,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_1678,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_relat_1(X2),X1)
    | k1_relat_1(X2) != X0 ),
    inference(instantiation,[status(thm)],[c_992])).

cnf(c_2186,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_relat_1(sK4),X1)
    | k1_relat_1(sK4) != X0 ),
    inference(instantiation,[status(thm)],[c_1678])).

cnf(c_2187,plain,
    ( k1_relat_1(sK4) != X0
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k1_relat_1(sK4),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2186])).

cnf(c_2189,plain,
    ( k1_relat_1(sK4) != k1_xboole_0
    | r1_tarski(k1_relat_1(sK4),k1_xboole_0) = iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2187])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_452,plain,
    ( ~ v1_xboole_0(X0)
    | X1 != X0
    | sK1(X1) != X2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_2])).

cnf(c_453,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_452])).

cnf(c_2343,plain,
    ( ~ v1_xboole_0(sK4)
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_453])).

cnf(c_2344,plain,
    ( k1_xboole_0 = sK4
    | v1_xboole_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2343])).

cnf(c_1903,plain,
    ( X0 != X1
    | sK4 != X1
    | sK4 = X0 ),
    inference(instantiation,[status(thm)],[c_986])).

cnf(c_2370,plain,
    ( X0 != sK4
    | sK4 = X0
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_1903])).

cnf(c_2371,plain,
    ( sK4 != sK4
    | sK4 = k1_xboole_0
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_2370])).

cnf(c_2555,plain,
    ( k2_relat_1(X0) != X1
    | k1_xboole_0 != X1
    | k1_xboole_0 = k2_relat_1(X0) ),
    inference(instantiation,[status(thm)],[c_986])).

cnf(c_2556,plain,
    ( k2_relat_1(k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k2_relat_1(k1_xboole_0)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2555])).

cnf(c_18,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1442,plain,
    ( r1_tarski(k1_relat_1(X0),X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2565,plain,
    ( r1_tarski(k1_relat_1(sK4),X0) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1441,c_1442])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1445,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2822,plain,
    ( r1_tarski(k1_relat_1(sK4),X0) != iProver_top
    | v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_2565,c_1445])).

cnf(c_2849,plain,
    ( r1_tarski(k1_relat_1(sK4),k1_xboole_0) != iProver_top
    | v1_xboole_0(sK4) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2822])).

cnf(c_3383,plain,
    ( m1_subset_1(sK0(k1_xboole_0),sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3379,c_21,c_26,c_20,c_11,c_58,c_1010,c_1543,c_1636,c_1664,c_1760,c_1901,c_2093,c_2094,c_2189,c_2344,c_2371,c_2556,c_2800,c_2849])).

cnf(c_3387,plain,
    ( r1_tarski(k1_xboole_0,sK3) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1432,c_3383])).

cnf(c_1438,plain,
    ( r1_tarski(k1_relat_1(X0),X1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_317])).

cnf(c_2202,plain,
    ( r1_tarski(k1_relat_1(sK4),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1441,c_1438])).

cnf(c_2928,plain,
    ( r1_tarski(k1_xboole_0,sK3) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2923,c_2202])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3387,c_2928,c_2849,c_2800,c_2556,c_2371,c_2344,c_2189,c_2094,c_2093,c_1901,c_1760,c_1664,c_1636,c_1543,c_1010,c_58,c_11,c_20,c_26,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:01:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.20/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.20/0.99  
% 2.20/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.20/0.99  
% 2.20/0.99  ------  iProver source info
% 2.20/0.99  
% 2.20/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.20/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.20/0.99  git: non_committed_changes: false
% 2.20/0.99  git: last_make_outside_of_git: false
% 2.20/0.99  
% 2.20/0.99  ------ 
% 2.20/0.99  
% 2.20/0.99  ------ Input Options
% 2.20/0.99  
% 2.20/0.99  --out_options                           all
% 2.20/0.99  --tptp_safe_out                         true
% 2.20/0.99  --problem_path                          ""
% 2.20/0.99  --include_path                          ""
% 2.20/0.99  --clausifier                            res/vclausify_rel
% 2.20/0.99  --clausifier_options                    --mode clausify
% 2.20/0.99  --stdin                                 false
% 2.20/0.99  --stats_out                             all
% 2.20/0.99  
% 2.20/0.99  ------ General Options
% 2.20/0.99  
% 2.20/0.99  --fof                                   false
% 2.20/0.99  --time_out_real                         305.
% 2.20/0.99  --time_out_virtual                      -1.
% 2.20/0.99  --symbol_type_check                     false
% 2.20/0.99  --clausify_out                          false
% 2.20/0.99  --sig_cnt_out                           false
% 2.20/0.99  --trig_cnt_out                          false
% 2.20/0.99  --trig_cnt_out_tolerance                1.
% 2.20/0.99  --trig_cnt_out_sk_spl                   false
% 2.20/0.99  --abstr_cl_out                          false
% 2.20/0.99  
% 2.20/0.99  ------ Global Options
% 2.20/0.99  
% 2.20/0.99  --schedule                              default
% 2.20/0.99  --add_important_lit                     false
% 2.20/0.99  --prop_solver_per_cl                    1000
% 2.20/0.99  --min_unsat_core                        false
% 2.20/0.99  --soft_assumptions                      false
% 2.20/0.99  --soft_lemma_size                       3
% 2.20/0.99  --prop_impl_unit_size                   0
% 2.20/0.99  --prop_impl_unit                        []
% 2.20/0.99  --share_sel_clauses                     true
% 2.20/0.99  --reset_solvers                         false
% 2.20/0.99  --bc_imp_inh                            [conj_cone]
% 2.20/0.99  --conj_cone_tolerance                   3.
% 2.20/0.99  --extra_neg_conj                        none
% 2.20/0.99  --large_theory_mode                     true
% 2.20/0.99  --prolific_symb_bound                   200
% 2.20/0.99  --lt_threshold                          2000
% 2.20/0.99  --clause_weak_htbl                      true
% 2.20/0.99  --gc_record_bc_elim                     false
% 2.20/0.99  
% 2.20/0.99  ------ Preprocessing Options
% 2.20/0.99  
% 2.20/0.99  --preprocessing_flag                    true
% 2.20/0.99  --time_out_prep_mult                    0.1
% 2.20/0.99  --splitting_mode                        input
% 2.20/0.99  --splitting_grd                         true
% 2.20/0.99  --splitting_cvd                         false
% 2.20/0.99  --splitting_cvd_svl                     false
% 2.20/0.99  --splitting_nvd                         32
% 2.20/0.99  --sub_typing                            true
% 2.20/0.99  --prep_gs_sim                           true
% 2.20/0.99  --prep_unflatten                        true
% 2.20/0.99  --prep_res_sim                          true
% 2.20/0.99  --prep_upred                            true
% 2.20/0.99  --prep_sem_filter                       exhaustive
% 2.20/0.99  --prep_sem_filter_out                   false
% 2.20/0.99  --pred_elim                             true
% 2.20/0.99  --res_sim_input                         true
% 2.20/0.99  --eq_ax_congr_red                       true
% 2.20/0.99  --pure_diseq_elim                       true
% 2.20/0.99  --brand_transform                       false
% 2.20/0.99  --non_eq_to_eq                          false
% 2.20/0.99  --prep_def_merge                        true
% 2.20/0.99  --prep_def_merge_prop_impl              false
% 2.20/0.99  --prep_def_merge_mbd                    true
% 2.20/0.99  --prep_def_merge_tr_red                 false
% 2.20/0.99  --prep_def_merge_tr_cl                  false
% 2.20/0.99  --smt_preprocessing                     true
% 2.20/0.99  --smt_ac_axioms                         fast
% 2.20/0.99  --preprocessed_out                      false
% 2.20/0.99  --preprocessed_stats                    false
% 2.20/0.99  
% 2.20/0.99  ------ Abstraction refinement Options
% 2.20/0.99  
% 2.20/0.99  --abstr_ref                             []
% 2.20/0.99  --abstr_ref_prep                        false
% 2.20/0.99  --abstr_ref_until_sat                   false
% 2.20/0.99  --abstr_ref_sig_restrict                funpre
% 2.20/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.20/0.99  --abstr_ref_under                       []
% 2.20/0.99  
% 2.20/0.99  ------ SAT Options
% 2.20/0.99  
% 2.20/0.99  --sat_mode                              false
% 2.20/0.99  --sat_fm_restart_options                ""
% 2.20/0.99  --sat_gr_def                            false
% 2.20/0.99  --sat_epr_types                         true
% 2.20/0.99  --sat_non_cyclic_types                  false
% 2.20/0.99  --sat_finite_models                     false
% 2.20/0.99  --sat_fm_lemmas                         false
% 2.20/0.99  --sat_fm_prep                           false
% 2.20/0.99  --sat_fm_uc_incr                        true
% 2.20/0.99  --sat_out_model                         small
% 2.20/0.99  --sat_out_clauses                       false
% 2.20/0.99  
% 2.20/0.99  ------ QBF Options
% 2.20/0.99  
% 2.20/0.99  --qbf_mode                              false
% 2.20/0.99  --qbf_elim_univ                         false
% 2.20/0.99  --qbf_dom_inst                          none
% 2.20/0.99  --qbf_dom_pre_inst                      false
% 2.20/0.99  --qbf_sk_in                             false
% 2.20/0.99  --qbf_pred_elim                         true
% 2.20/0.99  --qbf_split                             512
% 2.20/0.99  
% 2.20/0.99  ------ BMC1 Options
% 2.20/0.99  
% 2.20/0.99  --bmc1_incremental                      false
% 2.20/0.99  --bmc1_axioms                           reachable_all
% 2.20/0.99  --bmc1_min_bound                        0
% 2.20/0.99  --bmc1_max_bound                        -1
% 2.20/0.99  --bmc1_max_bound_default                -1
% 2.20/0.99  --bmc1_symbol_reachability              true
% 2.20/0.99  --bmc1_property_lemmas                  false
% 2.20/0.99  --bmc1_k_induction                      false
% 2.20/0.99  --bmc1_non_equiv_states                 false
% 2.20/0.99  --bmc1_deadlock                         false
% 2.20/0.99  --bmc1_ucm                              false
% 2.20/0.99  --bmc1_add_unsat_core                   none
% 2.20/0.99  --bmc1_unsat_core_children              false
% 2.20/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.20/0.99  --bmc1_out_stat                         full
% 2.20/0.99  --bmc1_ground_init                      false
% 2.20/0.99  --bmc1_pre_inst_next_state              false
% 2.20/0.99  --bmc1_pre_inst_state                   false
% 2.20/0.99  --bmc1_pre_inst_reach_state             false
% 2.20/0.99  --bmc1_out_unsat_core                   false
% 2.20/0.99  --bmc1_aig_witness_out                  false
% 2.20/0.99  --bmc1_verbose                          false
% 2.20/0.99  --bmc1_dump_clauses_tptp                false
% 2.20/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.20/0.99  --bmc1_dump_file                        -
% 2.20/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.20/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.20/0.99  --bmc1_ucm_extend_mode                  1
% 2.20/0.99  --bmc1_ucm_init_mode                    2
% 2.20/0.99  --bmc1_ucm_cone_mode                    none
% 2.20/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.20/0.99  --bmc1_ucm_relax_model                  4
% 2.20/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.20/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.20/0.99  --bmc1_ucm_layered_model                none
% 2.20/0.99  --bmc1_ucm_max_lemma_size               10
% 2.20/0.99  
% 2.20/0.99  ------ AIG Options
% 2.20/0.99  
% 2.20/0.99  --aig_mode                              false
% 2.20/0.99  
% 2.20/0.99  ------ Instantiation Options
% 2.20/0.99  
% 2.20/0.99  --instantiation_flag                    true
% 2.20/0.99  --inst_sos_flag                         false
% 2.20/0.99  --inst_sos_phase                        true
% 2.20/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.20/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.20/0.99  --inst_lit_sel_side                     num_symb
% 2.20/0.99  --inst_solver_per_active                1400
% 2.20/0.99  --inst_solver_calls_frac                1.
% 2.20/0.99  --inst_passive_queue_type               priority_queues
% 2.20/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.20/0.99  --inst_passive_queues_freq              [25;2]
% 2.20/0.99  --inst_dismatching                      true
% 2.20/0.99  --inst_eager_unprocessed_to_passive     true
% 2.20/0.99  --inst_prop_sim_given                   true
% 2.20/0.99  --inst_prop_sim_new                     false
% 2.20/0.99  --inst_subs_new                         false
% 2.20/0.99  --inst_eq_res_simp                      false
% 2.20/0.99  --inst_subs_given                       false
% 2.20/0.99  --inst_orphan_elimination               true
% 2.20/0.99  --inst_learning_loop_flag               true
% 2.20/0.99  --inst_learning_start                   3000
% 2.20/0.99  --inst_learning_factor                  2
% 2.20/0.99  --inst_start_prop_sim_after_learn       3
% 2.20/0.99  --inst_sel_renew                        solver
% 2.20/0.99  --inst_lit_activity_flag                true
% 2.20/0.99  --inst_restr_to_given                   false
% 2.20/0.99  --inst_activity_threshold               500
% 2.20/0.99  --inst_out_proof                        true
% 2.20/0.99  
% 2.20/0.99  ------ Resolution Options
% 2.20/0.99  
% 2.20/0.99  --resolution_flag                       true
% 2.20/0.99  --res_lit_sel                           adaptive
% 2.20/0.99  --res_lit_sel_side                      none
% 2.20/0.99  --res_ordering                          kbo
% 2.20/0.99  --res_to_prop_solver                    active
% 2.20/0.99  --res_prop_simpl_new                    false
% 2.20/0.99  --res_prop_simpl_given                  true
% 2.20/0.99  --res_passive_queue_type                priority_queues
% 2.20/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.20/0.99  --res_passive_queues_freq               [15;5]
% 2.20/0.99  --res_forward_subs                      full
% 2.20/0.99  --res_backward_subs                     full
% 2.20/0.99  --res_forward_subs_resolution           true
% 2.20/0.99  --res_backward_subs_resolution          true
% 2.20/0.99  --res_orphan_elimination                true
% 2.20/0.99  --res_time_limit                        2.
% 2.20/0.99  --res_out_proof                         true
% 2.20/0.99  
% 2.20/0.99  ------ Superposition Options
% 2.20/0.99  
% 2.20/0.99  --superposition_flag                    true
% 2.20/0.99  --sup_passive_queue_type                priority_queues
% 2.20/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.20/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.20/0.99  --demod_completeness_check              fast
% 2.20/0.99  --demod_use_ground                      true
% 2.20/0.99  --sup_to_prop_solver                    passive
% 2.20/0.99  --sup_prop_simpl_new                    true
% 2.20/0.99  --sup_prop_simpl_given                  true
% 2.20/0.99  --sup_fun_splitting                     false
% 2.20/0.99  --sup_smt_interval                      50000
% 2.20/0.99  
% 2.20/0.99  ------ Superposition Simplification Setup
% 2.20/0.99  
% 2.20/0.99  --sup_indices_passive                   []
% 2.20/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.20/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/0.99  --sup_full_bw                           [BwDemod]
% 2.20/0.99  --sup_immed_triv                        [TrivRules]
% 2.20/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.20/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/0.99  --sup_immed_bw_main                     []
% 2.20/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.20/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/0.99  
% 2.20/0.99  ------ Combination Options
% 2.20/0.99  
% 2.20/0.99  --comb_res_mult                         3
% 2.20/0.99  --comb_sup_mult                         2
% 2.20/0.99  --comb_inst_mult                        10
% 2.20/0.99  
% 2.20/0.99  ------ Debug Options
% 2.20/0.99  
% 2.20/0.99  --dbg_backtrace                         false
% 2.20/0.99  --dbg_dump_prop_clauses                 false
% 2.20/0.99  --dbg_dump_prop_clauses_file            -
% 2.20/0.99  --dbg_out_stat                          false
% 2.20/0.99  ------ Parsing...
% 2.20/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.20/0.99  
% 2.20/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.20/0.99  
% 2.20/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.20/0.99  
% 2.20/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.20/0.99  ------ Proving...
% 2.20/0.99  ------ Problem Properties 
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  clauses                                 22
% 2.20/0.99  conjectures                             4
% 2.20/0.99  EPR                                     5
% 2.20/0.99  Horn                                    20
% 2.20/0.99  unary                                   8
% 2.20/0.99  binary                                  8
% 2.20/0.99  lits                                    42
% 2.20/0.99  lits eq                                 10
% 2.20/0.99  fd_pure                                 0
% 2.20/0.99  fd_pseudo                               0
% 2.20/0.99  fd_cond                                 3
% 2.20/0.99  fd_pseudo_cond                          0
% 2.20/0.99  AC symbols                              0
% 2.20/0.99  
% 2.20/0.99  ------ Schedule dynamic 5 is on 
% 2.20/0.99  
% 2.20/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  ------ 
% 2.20/0.99  Current options:
% 2.20/0.99  ------ 
% 2.20/0.99  
% 2.20/0.99  ------ Input Options
% 2.20/0.99  
% 2.20/0.99  --out_options                           all
% 2.20/0.99  --tptp_safe_out                         true
% 2.20/0.99  --problem_path                          ""
% 2.20/0.99  --include_path                          ""
% 2.20/0.99  --clausifier                            res/vclausify_rel
% 2.20/0.99  --clausifier_options                    --mode clausify
% 2.20/0.99  --stdin                                 false
% 2.20/0.99  --stats_out                             all
% 2.20/0.99  
% 2.20/0.99  ------ General Options
% 2.20/0.99  
% 2.20/0.99  --fof                                   false
% 2.20/0.99  --time_out_real                         305.
% 2.20/0.99  --time_out_virtual                      -1.
% 2.20/0.99  --symbol_type_check                     false
% 2.20/0.99  --clausify_out                          false
% 2.20/0.99  --sig_cnt_out                           false
% 2.20/0.99  --trig_cnt_out                          false
% 2.20/0.99  --trig_cnt_out_tolerance                1.
% 2.20/0.99  --trig_cnt_out_sk_spl                   false
% 2.20/0.99  --abstr_cl_out                          false
% 2.20/0.99  
% 2.20/0.99  ------ Global Options
% 2.20/0.99  
% 2.20/0.99  --schedule                              default
% 2.20/0.99  --add_important_lit                     false
% 2.20/0.99  --prop_solver_per_cl                    1000
% 2.20/0.99  --min_unsat_core                        false
% 2.20/0.99  --soft_assumptions                      false
% 2.20/0.99  --soft_lemma_size                       3
% 2.20/0.99  --prop_impl_unit_size                   0
% 2.20/0.99  --prop_impl_unit                        []
% 2.20/0.99  --share_sel_clauses                     true
% 2.20/0.99  --reset_solvers                         false
% 2.20/0.99  --bc_imp_inh                            [conj_cone]
% 2.20/0.99  --conj_cone_tolerance                   3.
% 2.20/0.99  --extra_neg_conj                        none
% 2.20/0.99  --large_theory_mode                     true
% 2.20/0.99  --prolific_symb_bound                   200
% 2.20/0.99  --lt_threshold                          2000
% 2.20/0.99  --clause_weak_htbl                      true
% 2.20/0.99  --gc_record_bc_elim                     false
% 2.20/0.99  
% 2.20/0.99  ------ Preprocessing Options
% 2.20/0.99  
% 2.20/0.99  --preprocessing_flag                    true
% 2.20/0.99  --time_out_prep_mult                    0.1
% 2.20/0.99  --splitting_mode                        input
% 2.20/0.99  --splitting_grd                         true
% 2.20/0.99  --splitting_cvd                         false
% 2.20/0.99  --splitting_cvd_svl                     false
% 2.20/0.99  --splitting_nvd                         32
% 2.20/0.99  --sub_typing                            true
% 2.20/0.99  --prep_gs_sim                           true
% 2.20/0.99  --prep_unflatten                        true
% 2.20/0.99  --prep_res_sim                          true
% 2.20/0.99  --prep_upred                            true
% 2.20/0.99  --prep_sem_filter                       exhaustive
% 2.20/0.99  --prep_sem_filter_out                   false
% 2.20/0.99  --pred_elim                             true
% 2.20/0.99  --res_sim_input                         true
% 2.20/0.99  --eq_ax_congr_red                       true
% 2.20/0.99  --pure_diseq_elim                       true
% 2.20/0.99  --brand_transform                       false
% 2.20/0.99  --non_eq_to_eq                          false
% 2.20/0.99  --prep_def_merge                        true
% 2.20/0.99  --prep_def_merge_prop_impl              false
% 2.20/0.99  --prep_def_merge_mbd                    true
% 2.20/0.99  --prep_def_merge_tr_red                 false
% 2.20/0.99  --prep_def_merge_tr_cl                  false
% 2.20/0.99  --smt_preprocessing                     true
% 2.20/0.99  --smt_ac_axioms                         fast
% 2.20/0.99  --preprocessed_out                      false
% 2.20/0.99  --preprocessed_stats                    false
% 2.20/0.99  
% 2.20/0.99  ------ Abstraction refinement Options
% 2.20/0.99  
% 2.20/0.99  --abstr_ref                             []
% 2.20/0.99  --abstr_ref_prep                        false
% 2.20/0.99  --abstr_ref_until_sat                   false
% 2.20/0.99  --abstr_ref_sig_restrict                funpre
% 2.20/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.20/0.99  --abstr_ref_under                       []
% 2.20/0.99  
% 2.20/0.99  ------ SAT Options
% 2.20/0.99  
% 2.20/0.99  --sat_mode                              false
% 2.20/0.99  --sat_fm_restart_options                ""
% 2.20/0.99  --sat_gr_def                            false
% 2.20/0.99  --sat_epr_types                         true
% 2.20/0.99  --sat_non_cyclic_types                  false
% 2.20/0.99  --sat_finite_models                     false
% 2.20/0.99  --sat_fm_lemmas                         false
% 2.20/0.99  --sat_fm_prep                           false
% 2.20/0.99  --sat_fm_uc_incr                        true
% 2.20/0.99  --sat_out_model                         small
% 2.20/0.99  --sat_out_clauses                       false
% 2.20/0.99  
% 2.20/0.99  ------ QBF Options
% 2.20/0.99  
% 2.20/0.99  --qbf_mode                              false
% 2.20/0.99  --qbf_elim_univ                         false
% 2.20/0.99  --qbf_dom_inst                          none
% 2.20/0.99  --qbf_dom_pre_inst                      false
% 2.20/0.99  --qbf_sk_in                             false
% 2.20/0.99  --qbf_pred_elim                         true
% 2.20/0.99  --qbf_split                             512
% 2.20/0.99  
% 2.20/0.99  ------ BMC1 Options
% 2.20/0.99  
% 2.20/0.99  --bmc1_incremental                      false
% 2.20/0.99  --bmc1_axioms                           reachable_all
% 2.20/0.99  --bmc1_min_bound                        0
% 2.20/0.99  --bmc1_max_bound                        -1
% 2.20/0.99  --bmc1_max_bound_default                -1
% 2.20/0.99  --bmc1_symbol_reachability              true
% 2.20/0.99  --bmc1_property_lemmas                  false
% 2.20/0.99  --bmc1_k_induction                      false
% 2.20/0.99  --bmc1_non_equiv_states                 false
% 2.20/0.99  --bmc1_deadlock                         false
% 2.20/0.99  --bmc1_ucm                              false
% 2.20/0.99  --bmc1_add_unsat_core                   none
% 2.20/0.99  --bmc1_unsat_core_children              false
% 2.20/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.20/0.99  --bmc1_out_stat                         full
% 2.20/0.99  --bmc1_ground_init                      false
% 2.20/0.99  --bmc1_pre_inst_next_state              false
% 2.20/0.99  --bmc1_pre_inst_state                   false
% 2.20/0.99  --bmc1_pre_inst_reach_state             false
% 2.20/0.99  --bmc1_out_unsat_core                   false
% 2.20/0.99  --bmc1_aig_witness_out                  false
% 2.20/0.99  --bmc1_verbose                          false
% 2.20/0.99  --bmc1_dump_clauses_tptp                false
% 2.20/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.20/0.99  --bmc1_dump_file                        -
% 2.20/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.20/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.20/0.99  --bmc1_ucm_extend_mode                  1
% 2.20/0.99  --bmc1_ucm_init_mode                    2
% 2.20/0.99  --bmc1_ucm_cone_mode                    none
% 2.20/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.20/0.99  --bmc1_ucm_relax_model                  4
% 2.20/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.20/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.20/0.99  --bmc1_ucm_layered_model                none
% 2.20/0.99  --bmc1_ucm_max_lemma_size               10
% 2.20/0.99  
% 2.20/0.99  ------ AIG Options
% 2.20/0.99  
% 2.20/0.99  --aig_mode                              false
% 2.20/0.99  
% 2.20/0.99  ------ Instantiation Options
% 2.20/0.99  
% 2.20/0.99  --instantiation_flag                    true
% 2.20/0.99  --inst_sos_flag                         false
% 2.20/0.99  --inst_sos_phase                        true
% 2.20/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.20/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.20/0.99  --inst_lit_sel_side                     none
% 2.20/0.99  --inst_solver_per_active                1400
% 2.20/0.99  --inst_solver_calls_frac                1.
% 2.20/0.99  --inst_passive_queue_type               priority_queues
% 2.20/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.20/0.99  --inst_passive_queues_freq              [25;2]
% 2.20/0.99  --inst_dismatching                      true
% 2.20/0.99  --inst_eager_unprocessed_to_passive     true
% 2.20/0.99  --inst_prop_sim_given                   true
% 2.20/0.99  --inst_prop_sim_new                     false
% 2.20/0.99  --inst_subs_new                         false
% 2.20/0.99  --inst_eq_res_simp                      false
% 2.20/0.99  --inst_subs_given                       false
% 2.20/0.99  --inst_orphan_elimination               true
% 2.20/0.99  --inst_learning_loop_flag               true
% 2.20/0.99  --inst_learning_start                   3000
% 2.20/0.99  --inst_learning_factor                  2
% 2.20/0.99  --inst_start_prop_sim_after_learn       3
% 2.20/0.99  --inst_sel_renew                        solver
% 2.20/0.99  --inst_lit_activity_flag                true
% 2.20/0.99  --inst_restr_to_given                   false
% 2.20/0.99  --inst_activity_threshold               500
% 2.20/0.99  --inst_out_proof                        true
% 2.20/0.99  
% 2.20/0.99  ------ Resolution Options
% 2.20/0.99  
% 2.20/0.99  --resolution_flag                       false
% 2.20/0.99  --res_lit_sel                           adaptive
% 2.20/0.99  --res_lit_sel_side                      none
% 2.20/0.99  --res_ordering                          kbo
% 2.20/0.99  --res_to_prop_solver                    active
% 2.20/0.99  --res_prop_simpl_new                    false
% 2.20/0.99  --res_prop_simpl_given                  true
% 2.20/0.99  --res_passive_queue_type                priority_queues
% 2.20/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.20/0.99  --res_passive_queues_freq               [15;5]
% 2.20/0.99  --res_forward_subs                      full
% 2.20/0.99  --res_backward_subs                     full
% 2.20/0.99  --res_forward_subs_resolution           true
% 2.20/0.99  --res_backward_subs_resolution          true
% 2.20/0.99  --res_orphan_elimination                true
% 2.20/0.99  --res_time_limit                        2.
% 2.20/0.99  --res_out_proof                         true
% 2.20/0.99  
% 2.20/0.99  ------ Superposition Options
% 2.20/0.99  
% 2.20/0.99  --superposition_flag                    true
% 2.20/0.99  --sup_passive_queue_type                priority_queues
% 2.20/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.20/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.20/0.99  --demod_completeness_check              fast
% 2.20/0.99  --demod_use_ground                      true
% 2.20/0.99  --sup_to_prop_solver                    passive
% 2.20/0.99  --sup_prop_simpl_new                    true
% 2.20/0.99  --sup_prop_simpl_given                  true
% 2.20/0.99  --sup_fun_splitting                     false
% 2.20/0.99  --sup_smt_interval                      50000
% 2.20/0.99  
% 2.20/0.99  ------ Superposition Simplification Setup
% 2.20/0.99  
% 2.20/0.99  --sup_indices_passive                   []
% 2.20/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.20/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/0.99  --sup_full_bw                           [BwDemod]
% 2.20/0.99  --sup_immed_triv                        [TrivRules]
% 2.20/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.20/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/0.99  --sup_immed_bw_main                     []
% 2.20/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.20/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/0.99  
% 2.20/0.99  ------ Combination Options
% 2.20/0.99  
% 2.20/0.99  --comb_res_mult                         3
% 2.20/0.99  --comb_sup_mult                         2
% 2.20/0.99  --comb_inst_mult                        10
% 2.20/0.99  
% 2.20/0.99  ------ Debug Options
% 2.20/0.99  
% 2.20/0.99  --dbg_backtrace                         false
% 2.20/0.99  --dbg_dump_prop_clauses                 false
% 2.20/0.99  --dbg_dump_prop_clauses_file            -
% 2.20/0.99  --dbg_out_stat                          false
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  ------ Proving...
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  % SZS status Theorem for theBenchmark.p
% 2.20/0.99  
% 2.20/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.20/0.99  
% 2.20/0.99  fof(f1,axiom,(
% 2.20/0.99    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f33,plain,(
% 2.20/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.20/0.99    inference(nnf_transformation,[],[f1])).
% 2.20/0.99  
% 2.20/0.99  fof(f34,plain,(
% 2.20/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.20/0.99    inference(rectify,[],[f33])).
% 2.20/0.99  
% 2.20/0.99  fof(f35,plain,(
% 2.20/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.20/0.99    introduced(choice_axiom,[])).
% 2.20/0.99  
% 2.20/0.99  fof(f36,plain,(
% 2.20/0.99    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.20/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f34,f35])).
% 2.20/0.99  
% 2.20/0.99  fof(f46,plain,(
% 2.20/0.99    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f36])).
% 2.20/0.99  
% 2.20/0.99  fof(f6,axiom,(
% 2.20/0.99    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f20,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 2.20/0.99    inference(ennf_transformation,[],[f6])).
% 2.20/0.99  
% 2.20/0.99  fof(f21,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.20/0.99    inference(flattening,[],[f20])).
% 2.20/0.99  
% 2.20/0.99  fof(f52,plain,(
% 2.20/0.99    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f21])).
% 2.20/0.99  
% 2.20/0.99  fof(f5,axiom,(
% 2.20/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f39,plain,(
% 2.20/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.20/0.99    inference(nnf_transformation,[],[f5])).
% 2.20/0.99  
% 2.20/0.99  fof(f51,plain,(
% 2.20/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f39])).
% 2.20/0.99  
% 2.20/0.99  fof(f16,conjecture,(
% 2.20/0.99    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f17,negated_conjecture,(
% 2.20/0.99    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 2.20/0.99    inference(negated_conjecture,[],[f16])).
% 2.20/0.99  
% 2.20/0.99  fof(f31,plain,(
% 2.20/0.99    ? [X0] : (? [X1] : (? [X2] : ((! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.20/0.99    inference(ennf_transformation,[],[f17])).
% 2.20/0.99  
% 2.20/0.99  fof(f32,plain,(
% 2.20/0.99    ? [X0] : (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.20/0.99    inference(flattening,[],[f31])).
% 2.20/0.99  
% 2.20/0.99  fof(f43,plain,(
% 2.20/0.99    ( ! [X0,X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,sK4)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))) )),
% 2.20/0.99    introduced(choice_axiom,[])).
% 2.20/0.99  
% 2.20/0.99  fof(f42,plain,(
% 2.20/0.99    ( ! [X0] : (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) => (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(sK3,X0,X2)) | ~m1_subset_1(X3,sK3)) & k1_xboole_0 != k2_relset_1(sK3,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK3,X0)))) & ~v1_xboole_0(sK3))) )),
% 2.20/0.99    introduced(choice_axiom,[])).
% 2.20/0.99  
% 2.20/0.99  fof(f41,plain,(
% 2.20/0.99    ? [X0] : (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,sK2,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,sK2,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,sK2)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK2))),
% 2.20/0.99    introduced(choice_axiom,[])).
% 2.20/0.99  
% 2.20/0.99  fof(f44,plain,(
% 2.20/0.99    ((! [X3] : (~r2_hidden(X3,k1_relset_1(sK3,sK2,sK4)) | ~m1_subset_1(X3,sK3)) & k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))) & ~v1_xboole_0(sK3)) & ~v1_xboole_0(sK2)),
% 2.20/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f32,f43,f42,f41])).
% 2.20/0.99  
% 2.20/0.99  fof(f66,plain,(
% 2.20/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))),
% 2.20/0.99    inference(cnf_transformation,[],[f44])).
% 2.20/0.99  
% 2.20/0.99  fof(f13,axiom,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f27,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/0.99    inference(ennf_transformation,[],[f13])).
% 2.20/0.99  
% 2.20/0.99  fof(f61,plain,(
% 2.20/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f27])).
% 2.20/0.99  
% 2.20/0.99  fof(f68,plain,(
% 2.20/0.99    ( ! [X3] : (~r2_hidden(X3,k1_relset_1(sK3,sK2,sK4)) | ~m1_subset_1(X3,sK3)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f44])).
% 2.20/0.99  
% 2.20/0.99  fof(f2,axiom,(
% 2.20/0.99    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f19,plain,(
% 2.20/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 2.20/0.99    inference(ennf_transformation,[],[f2])).
% 2.20/0.99  
% 2.20/0.99  fof(f37,plain,(
% 2.20/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 2.20/0.99    introduced(choice_axiom,[])).
% 2.20/0.99  
% 2.20/0.99  fof(f38,plain,(
% 2.20/0.99    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 2.20/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f37])).
% 2.20/0.99  
% 2.20/0.99  fof(f47,plain,(
% 2.20/0.99    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.20/0.99    inference(cnf_transformation,[],[f38])).
% 2.20/0.99  
% 2.20/0.99  fof(f11,axiom,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f18,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 2.20/0.99    inference(pure_predicate_removal,[],[f11])).
% 2.20/0.99  
% 2.20/0.99  fof(f25,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/0.99    inference(ennf_transformation,[],[f18])).
% 2.20/0.99  
% 2.20/0.99  fof(f59,plain,(
% 2.20/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f25])).
% 2.20/0.99  
% 2.20/0.99  fof(f8,axiom,(
% 2.20/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f23,plain,(
% 2.20/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.20/0.99    inference(ennf_transformation,[],[f8])).
% 2.20/0.99  
% 2.20/0.99  fof(f40,plain,(
% 2.20/0.99    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.20/0.99    inference(nnf_transformation,[],[f23])).
% 2.20/0.99  
% 2.20/0.99  fof(f54,plain,(
% 2.20/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f40])).
% 2.20/0.99  
% 2.20/0.99  fof(f10,axiom,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f24,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/0.99    inference(ennf_transformation,[],[f10])).
% 2.20/0.99  
% 2.20/0.99  fof(f58,plain,(
% 2.20/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f24])).
% 2.20/0.99  
% 2.20/0.99  fof(f67,plain,(
% 2.20/0.99    k1_xboole_0 != k2_relset_1(sK3,sK2,sK4)),
% 2.20/0.99    inference(cnf_transformation,[],[f44])).
% 2.20/0.99  
% 2.20/0.99  fof(f9,axiom,(
% 2.20/0.99    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f57,plain,(
% 2.20/0.99    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 2.20/0.99    inference(cnf_transformation,[],[f9])).
% 2.20/0.99  
% 2.20/0.99  fof(f50,plain,(
% 2.20/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f39])).
% 2.20/0.99  
% 2.20/0.99  fof(f4,axiom,(
% 2.20/0.99    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f49,plain,(
% 2.20/0.99    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f4])).
% 2.20/0.99  
% 2.20/0.99  fof(f3,axiom,(
% 2.20/0.99    ! [X0] : k2_subset_1(X0) = X0),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f48,plain,(
% 2.20/0.99    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 2.20/0.99    inference(cnf_transformation,[],[f3])).
% 2.20/0.99  
% 2.20/0.99  fof(f14,axiom,(
% 2.20/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f28,plain,(
% 2.20/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/0.99    inference(ennf_transformation,[],[f14])).
% 2.20/0.99  
% 2.20/0.99  fof(f62,plain,(
% 2.20/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f28])).
% 2.20/0.99  
% 2.20/0.99  fof(f45,plain,(
% 2.20/0.99    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f36])).
% 2.20/0.99  
% 2.20/0.99  fof(f15,axiom,(
% 2.20/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) => (r1_tarski(k1_relat_1(X3),X1) => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f29,plain,(
% 2.20/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))),
% 2.20/0.99    inference(ennf_transformation,[],[f15])).
% 2.20/0.99  
% 2.20/0.99  fof(f30,plain,(
% 2.20/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))),
% 2.20/0.99    inference(flattening,[],[f29])).
% 2.20/0.99  
% 2.20/0.99  fof(f63,plain,(
% 2.20/0.99    ( ! [X2,X0,X3,X1] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) )),
% 2.20/0.99    inference(cnf_transformation,[],[f30])).
% 2.20/0.99  
% 2.20/0.99  fof(f12,axiom,(
% 2.20/0.99    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_xboole_0(X2)))),
% 2.20/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.20/0.99  
% 2.20/0.99  fof(f26,plain,(
% 2.20/0.99    ! [X0,X1] : (! [X2] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | ~v1_xboole_0(X0))),
% 2.20/0.99    inference(ennf_transformation,[],[f12])).
% 2.20/0.99  
% 2.20/0.99  fof(f60,plain,(
% 2.20/0.99    ( ! [X2,X0,X1] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_xboole_0(X0)) )),
% 2.20/0.99    inference(cnf_transformation,[],[f26])).
% 2.20/0.99  
% 2.20/0.99  cnf(c_0,plain,
% 2.20/0.99      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 2.20/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_7,plain,
% 2.20/0.99      ( m1_subset_1(X0,X1)
% 2.20/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.20/0.99      | ~ r2_hidden(X0,X2) ),
% 2.20/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_414,plain,
% 2.20/0.99      ( m1_subset_1(X0,X1)
% 2.20/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.20/0.99      | v1_xboole_0(X3)
% 2.20/0.99      | X2 != X3
% 2.20/0.99      | sK0(X3) != X0 ),
% 2.20/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_7]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_415,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.20/0.99      | m1_subset_1(sK0(X0),X1)
% 2.20/0.99      | v1_xboole_0(X0) ),
% 2.20/0.99      inference(unflattening,[status(thm)],[c_414]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_5,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.20/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_705,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.20/0.99      inference(prop_impl,[status(thm)],[c_5]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_738,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(sK0(X0),X1) | v1_xboole_0(X0) ),
% 2.20/0.99      inference(bin_hyper_res,[status(thm)],[c_415,c_705]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1432,plain,
% 2.20/0.99      ( r1_tarski(X0,X1) != iProver_top
% 2.20/0.99      | m1_subset_1(sK0(X0),X1) = iProver_top
% 2.20/0.99      | v1_xboole_0(X0) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_738]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_21,negated_conjecture,
% 2.20/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
% 2.20/0.99      inference(cnf_transformation,[],[f66]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1441,plain,
% 2.20/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_16,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.20/0.99      inference(cnf_transformation,[],[f61]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1444,plain,
% 2.20/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.20/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2422,plain,
% 2.20/0.99      ( k1_relset_1(sK3,sK2,sK4) = k1_relat_1(sK4) ),
% 2.20/0.99      inference(superposition,[status(thm)],[c_1441,c_1444]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_19,negated_conjecture,
% 2.20/0.99      ( ~ m1_subset_1(X0,sK3)
% 2.20/0.99      | ~ r2_hidden(X0,k1_relset_1(sK3,sK2,sK4)) ),
% 2.20/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_442,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,sK3)
% 2.20/0.99      | v1_xboole_0(X1)
% 2.20/0.99      | k1_relset_1(sK3,sK2,sK4) != X1
% 2.20/0.99      | sK0(X1) != X0 ),
% 2.20/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_19]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_443,plain,
% 2.20/0.99      ( ~ m1_subset_1(sK0(k1_relset_1(sK3,sK2,sK4)),sK3)
% 2.20/0.99      | v1_xboole_0(k1_relset_1(sK3,sK2,sK4)) ),
% 2.20/0.99      inference(unflattening,[status(thm)],[c_442]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1436,plain,
% 2.20/0.99      ( m1_subset_1(sK0(k1_relset_1(sK3,sK2,sK4)),sK3) != iProver_top
% 2.20/0.99      | v1_xboole_0(k1_relset_1(sK3,sK2,sK4)) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_443]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2801,plain,
% 2.20/0.99      ( m1_subset_1(sK0(k1_relat_1(sK4)),sK3) != iProver_top
% 2.20/0.99      | v1_xboole_0(k1_relat_1(sK4)) = iProver_top ),
% 2.20/0.99      inference(demodulation,[status(thm)],[c_2422,c_1436]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2,plain,
% 2.20/0.99      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.20/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_464,plain,
% 2.20/0.99      ( m1_subset_1(X0,X1)
% 2.20/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.20/0.99      | X2 != X3
% 2.20/0.99      | sK1(X3) != X0
% 2.20/0.99      | k1_xboole_0 = X3 ),
% 2.20/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_7]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_465,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.20/0.99      | m1_subset_1(sK1(X0),X1)
% 2.20/0.99      | k1_xboole_0 = X0 ),
% 2.20/0.99      inference(unflattening,[status(thm)],[c_464]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_739,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(sK1(X0),X1) | k1_xboole_0 = X0 ),
% 2.20/0.99      inference(bin_hyper_res,[status(thm)],[c_465,c_705]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1431,plain,
% 2.20/0.99      ( k1_xboole_0 = X0
% 2.20/0.99      | r1_tarski(X0,X1) != iProver_top
% 2.20/0.99      | m1_subset_1(sK1(X0),X1) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_739]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_494,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,sK3)
% 2.20/0.99      | k1_relset_1(sK3,sK2,sK4) != X1
% 2.20/0.99      | sK1(X1) != X0
% 2.20/0.99      | k1_xboole_0 = X1 ),
% 2.20/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_19]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_495,plain,
% 2.20/0.99      ( ~ m1_subset_1(sK1(k1_relset_1(sK3,sK2,sK4)),sK3)
% 2.20/0.99      | k1_xboole_0 = k1_relset_1(sK3,sK2,sK4) ),
% 2.20/0.99      inference(unflattening,[status(thm)],[c_494]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1433,plain,
% 2.20/0.99      ( k1_xboole_0 = k1_relset_1(sK3,sK2,sK4)
% 2.20/0.99      | m1_subset_1(sK1(k1_relset_1(sK3,sK2,sK4)),sK3) != iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_495]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1778,plain,
% 2.20/0.99      ( k1_relset_1(sK3,sK2,sK4) = k1_xboole_0
% 2.20/0.99      | r1_tarski(k1_relset_1(sK3,sK2,sK4),sK3) != iProver_top ),
% 2.20/0.99      inference(superposition,[status(thm)],[c_1431,c_1433]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2800,plain,
% 2.20/0.99      ( k1_relat_1(sK4) = k1_xboole_0
% 2.20/0.99      | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
% 2.20/0.99      inference(demodulation,[status(thm)],[c_2422,c_1778]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_26,plain,
% 2.20/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_14,plain,
% 2.20/0.99      ( v4_relat_1(X0,X1)
% 2.20/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.20/0.99      inference(cnf_transformation,[],[f59]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_10,plain,
% 2.20/0.99      ( ~ v4_relat_1(X0,X1)
% 2.20/0.99      | r1_tarski(k1_relat_1(X0),X1)
% 2.20/0.99      | ~ v1_relat_1(X0) ),
% 2.20/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_312,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(X0),X1)
% 2.20/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/0.99      | ~ v1_relat_1(X0) ),
% 2.20/0.99      inference(resolution,[status(thm)],[c_14,c_10]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_13,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/0.99      | v1_relat_1(X0) ),
% 2.20/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_316,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/0.99      | r1_tarski(k1_relat_1(X0),X1) ),
% 2.20/0.99      inference(global_propositional_subsumption,
% 2.20/0.99                [status(thm)],
% 2.20/0.99                [c_312,c_13]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_317,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(X0),X1)
% 2.20/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.20/0.99      inference(renaming,[status(thm)],[c_316]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1635,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(sK4),sK3)
% 2.20/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_317]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1636,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(sK4),sK3) = iProver_top
% 2.20/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_1635]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2923,plain,
% 2.20/0.99      ( k1_relat_1(sK4) = k1_xboole_0 ),
% 2.20/0.99      inference(global_propositional_subsumption,
% 2.20/0.99                [status(thm)],
% 2.20/0.99                [c_2800,c_26,c_1636]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_3379,plain,
% 2.20/0.99      ( m1_subset_1(sK0(k1_xboole_0),sK3) != iProver_top
% 2.20/0.99      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.20/0.99      inference(light_normalisation,[status(thm)],[c_2801,c_2923]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_20,negated_conjecture,
% 2.20/0.99      ( k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) ),
% 2.20/0.99      inference(cnf_transformation,[],[f67]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_11,plain,
% 2.20/0.99      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 2.20/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_6,plain,
% 2.20/0.99      ( r1_tarski(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.20/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_56,plain,
% 2.20/0.99      ( r1_tarski(X0,X1) = iProver_top
% 2.20/0.99      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_58,plain,
% 2.20/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top
% 2.20/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_56]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_985,plain,( X0 = X0 ),theory(equality) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1010,plain,
% 2.20/0.99      ( k1_xboole_0 = k1_xboole_0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_985]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_4,plain,
% 2.20/0.99      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 2.20/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1448,plain,
% 2.20/0.99      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_3,plain,
% 2.20/0.99      ( k2_subset_1(X0) = X0 ),
% 2.20/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1461,plain,
% 2.20/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.20/0.99      inference(light_normalisation,[status(thm)],[c_1448,c_3]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1543,plain,
% 2.20/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_1461]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_17,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.20/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1664,plain,
% 2.20/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 2.20/0.99      | k2_relset_1(sK3,sK2,sK4) = k2_relat_1(sK4) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_17]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_986,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1648,plain,
% 2.20/0.99      ( k2_relset_1(sK3,sK2,sK4) != X0
% 2.20/0.99      | k1_xboole_0 != X0
% 2.20/0.99      | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_986]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1760,plain,
% 2.20/0.99      ( k2_relset_1(sK3,sK2,sK4) != k2_relat_1(sK4)
% 2.20/0.99      | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4)
% 2.20/0.99      | k1_xboole_0 != k2_relat_1(sK4) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_1648]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1901,plain,
% 2.20/0.99      ( sK4 = sK4 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_985]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1795,plain,
% 2.20/0.99      ( k2_relat_1(sK4) != X0
% 2.20/0.99      | k1_xboole_0 != X0
% 2.20/0.99      | k1_xboole_0 = k2_relat_1(sK4) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_986]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2091,plain,
% 2.20/0.99      ( k2_relat_1(sK4) != k2_relat_1(X0)
% 2.20/0.99      | k1_xboole_0 != k2_relat_1(X0)
% 2.20/0.99      | k1_xboole_0 = k2_relat_1(sK4) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_1795]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2093,plain,
% 2.20/0.99      ( k2_relat_1(sK4) != k2_relat_1(k1_xboole_0)
% 2.20/0.99      | k1_xboole_0 = k2_relat_1(sK4)
% 2.20/0.99      | k1_xboole_0 != k2_relat_1(k1_xboole_0) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_2091]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_994,plain,
% 2.20/0.99      ( X0 != X1 | k2_relat_1(X0) = k2_relat_1(X1) ),
% 2.20/0.99      theory(equality) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2092,plain,
% 2.20/0.99      ( k2_relat_1(sK4) = k2_relat_1(X0) | sK4 != X0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_994]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2094,plain,
% 2.20/0.99      ( k2_relat_1(sK4) = k2_relat_1(k1_xboole_0) | sK4 != k1_xboole_0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_2092]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_992,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 2.20/0.99      theory(equality) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1678,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1)
% 2.20/0.99      | r1_tarski(k1_relat_1(X2),X1)
% 2.20/0.99      | k1_relat_1(X2) != X0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_992]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2186,plain,
% 2.20/0.99      ( ~ r1_tarski(X0,X1)
% 2.20/0.99      | r1_tarski(k1_relat_1(sK4),X1)
% 2.20/0.99      | k1_relat_1(sK4) != X0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_1678]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2187,plain,
% 2.20/0.99      ( k1_relat_1(sK4) != X0
% 2.20/0.99      | r1_tarski(X0,X1) != iProver_top
% 2.20/0.99      | r1_tarski(k1_relat_1(sK4),X1) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_2186]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2189,plain,
% 2.20/0.99      ( k1_relat_1(sK4) != k1_xboole_0
% 2.20/0.99      | r1_tarski(k1_relat_1(sK4),k1_xboole_0) = iProver_top
% 2.20/0.99      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_2187]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1,plain,
% 2.20/0.99      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.20/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_452,plain,
% 2.20/0.99      ( ~ v1_xboole_0(X0) | X1 != X0 | sK1(X1) != X2 | k1_xboole_0 = X1 ),
% 2.20/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_2]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_453,plain,
% 2.20/0.99      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.20/0.99      inference(unflattening,[status(thm)],[c_452]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2343,plain,
% 2.20/0.99      ( ~ v1_xboole_0(sK4) | k1_xboole_0 = sK4 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_453]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2344,plain,
% 2.20/0.99      ( k1_xboole_0 = sK4 | v1_xboole_0(sK4) != iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_2343]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1903,plain,
% 2.20/0.99      ( X0 != X1 | sK4 != X1 | sK4 = X0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_986]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2370,plain,
% 2.20/0.99      ( X0 != sK4 | sK4 = X0 | sK4 != sK4 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_1903]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2371,plain,
% 2.20/0.99      ( sK4 != sK4 | sK4 = k1_xboole_0 | k1_xboole_0 != sK4 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_2370]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2555,plain,
% 2.20/0.99      ( k2_relat_1(X0) != X1
% 2.20/0.99      | k1_xboole_0 != X1
% 2.20/0.99      | k1_xboole_0 = k2_relat_1(X0) ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_986]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2556,plain,
% 2.20/0.99      ( k2_relat_1(k1_xboole_0) != k1_xboole_0
% 2.20/0.99      | k1_xboole_0 = k2_relat_1(k1_xboole_0)
% 2.20/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_2555]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_18,plain,
% 2.20/0.99      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 2.20/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.20/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
% 2.20/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1442,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(X0),X1) != iProver_top
% 2.20/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 2.20/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2565,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(sK4),X0) != iProver_top
% 2.20/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,sK2))) = iProver_top ),
% 2.20/0.99      inference(superposition,[status(thm)],[c_1441,c_1442]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_15,plain,
% 2.20/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/0.99      | ~ v1_xboole_0(X1)
% 2.20/0.99      | v1_xboole_0(X0) ),
% 2.20/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1445,plain,
% 2.20/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.20/0.99      | v1_xboole_0(X1) != iProver_top
% 2.20/0.99      | v1_xboole_0(X0) = iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2822,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(sK4),X0) != iProver_top
% 2.20/0.99      | v1_xboole_0(X0) != iProver_top
% 2.20/0.99      | v1_xboole_0(sK4) = iProver_top ),
% 2.20/0.99      inference(superposition,[status(thm)],[c_2565,c_1445]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2849,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(sK4),k1_xboole_0) != iProver_top
% 2.20/0.99      | v1_xboole_0(sK4) = iProver_top
% 2.20/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.20/0.99      inference(instantiation,[status(thm)],[c_2822]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_3383,plain,
% 2.20/0.99      ( m1_subset_1(sK0(k1_xboole_0),sK3) != iProver_top ),
% 2.20/0.99      inference(global_propositional_subsumption,
% 2.20/0.99                [status(thm)],
% 2.20/0.99                [c_3379,c_21,c_26,c_20,c_11,c_58,c_1010,c_1543,c_1636,
% 2.20/0.99                 c_1664,c_1760,c_1901,c_2093,c_2094,c_2189,c_2344,c_2371,
% 2.20/0.99                 c_2556,c_2800,c_2849]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_3387,plain,
% 2.20/0.99      ( r1_tarski(k1_xboole_0,sK3) != iProver_top
% 2.20/0.99      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.20/0.99      inference(superposition,[status(thm)],[c_1432,c_3383]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_1438,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(X0),X1) = iProver_top
% 2.20/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top ),
% 2.20/0.99      inference(predicate_to_equality,[status(thm)],[c_317]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2202,plain,
% 2.20/0.99      ( r1_tarski(k1_relat_1(sK4),sK3) = iProver_top ),
% 2.20/0.99      inference(superposition,[status(thm)],[c_1441,c_1438]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(c_2928,plain,
% 2.20/0.99      ( r1_tarski(k1_xboole_0,sK3) = iProver_top ),
% 2.20/0.99      inference(demodulation,[status(thm)],[c_2923,c_2202]) ).
% 2.20/0.99  
% 2.20/0.99  cnf(contradiction,plain,
% 2.20/0.99      ( $false ),
% 2.20/0.99      inference(minisat,
% 2.20/0.99                [status(thm)],
% 2.20/0.99                [c_3387,c_2928,c_2849,c_2800,c_2556,c_2371,c_2344,c_2189,
% 2.20/0.99                 c_2094,c_2093,c_1901,c_1760,c_1664,c_1636,c_1543,c_1010,
% 2.20/0.99                 c_58,c_11,c_20,c_26,c_21]) ).
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.20/0.99  
% 2.20/0.99  ------                               Statistics
% 2.20/0.99  
% 2.20/0.99  ------ General
% 2.20/0.99  
% 2.20/0.99  abstr_ref_over_cycles:                  0
% 2.20/0.99  abstr_ref_under_cycles:                 0
% 2.20/0.99  gc_basic_clause_elim:                   0
% 2.20/0.99  forced_gc_time:                         0
% 2.20/0.99  parsing_time:                           0.01
% 2.20/0.99  unif_index_cands_time:                  0.
% 2.20/0.99  unif_index_add_time:                    0.
% 2.20/0.99  orderings_time:                         0.
% 2.20/0.99  out_proof_time:                         0.01
% 2.20/0.99  total_time:                             0.124
% 2.20/0.99  num_of_symbols:                         50
% 2.20/0.99  num_of_terms:                           2382
% 2.20/0.99  
% 2.20/0.99  ------ Preprocessing
% 2.20/0.99  
% 2.20/0.99  num_of_splits:                          0
% 2.20/0.99  num_of_split_atoms:                     0
% 2.20/0.99  num_of_reused_defs:                     0
% 2.20/0.99  num_eq_ax_congr_red:                    11
% 2.20/0.99  num_of_sem_filtered_clauses:            1
% 2.20/0.99  num_of_subtypes:                        0
% 2.20/0.99  monotx_restored_types:                  0
% 2.20/0.99  sat_num_of_epr_types:                   0
% 2.20/0.99  sat_num_of_non_cyclic_types:            0
% 2.20/0.99  sat_guarded_non_collapsed_types:        0
% 2.20/0.99  num_pure_diseq_elim:                    0
% 2.20/0.99  simp_replaced_by:                       0
% 2.20/0.99  res_preprocessed:                       117
% 2.20/0.99  prep_upred:                             0
% 2.20/0.99  prep_unflattend:                        42
% 2.20/0.99  smt_new_axioms:                         0
% 2.20/0.99  pred_elim_cands:                        3
% 2.20/0.99  pred_elim:                              3
% 2.20/0.99  pred_elim_cl:                           2
% 2.20/0.99  pred_elim_cycles:                       7
% 2.20/0.99  merged_defs:                            8
% 2.20/0.99  merged_defs_ncl:                        0
% 2.20/0.99  bin_hyper_res:                          11
% 2.20/0.99  prep_cycles:                            4
% 2.20/0.99  pred_elim_time:                         0.008
% 2.20/0.99  splitting_time:                         0.
% 2.20/0.99  sem_filter_time:                        0.
% 2.20/0.99  monotx_time:                            0.001
% 2.20/0.99  subtype_inf_time:                       0.
% 2.20/0.99  
% 2.20/0.99  ------ Problem properties
% 2.20/0.99  
% 2.20/0.99  clauses:                                22
% 2.20/0.99  conjectures:                            4
% 2.20/0.99  epr:                                    5
% 2.20/0.99  horn:                                   20
% 2.20/0.99  ground:                                 8
% 2.20/0.99  unary:                                  8
% 2.20/0.99  binary:                                 8
% 2.20/0.99  lits:                                   42
% 2.20/0.99  lits_eq:                                10
% 2.20/0.99  fd_pure:                                0
% 2.20/0.99  fd_pseudo:                              0
% 2.20/0.99  fd_cond:                                3
% 2.20/0.99  fd_pseudo_cond:                         0
% 2.20/0.99  ac_symbols:                             0
% 2.20/0.99  
% 2.20/0.99  ------ Propositional Solver
% 2.20/0.99  
% 2.20/0.99  prop_solver_calls:                      28
% 2.20/0.99  prop_fast_solver_calls:                 653
% 2.20/0.99  smt_solver_calls:                       0
% 2.20/0.99  smt_fast_solver_calls:                  0
% 2.20/0.99  prop_num_of_clauses:                    1091
% 2.20/0.99  prop_preprocess_simplified:             4228
% 2.20/0.99  prop_fo_subsumed:                       4
% 2.20/0.99  prop_solver_time:                       0.
% 2.20/0.99  smt_solver_time:                        0.
% 2.20/0.99  smt_fast_solver_time:                   0.
% 2.20/0.99  prop_fast_solver_time:                  0.
% 2.20/0.99  prop_unsat_core_time:                   0.
% 2.20/0.99  
% 2.20/0.99  ------ QBF
% 2.20/0.99  
% 2.20/0.99  qbf_q_res:                              0
% 2.20/0.99  qbf_num_tautologies:                    0
% 2.20/0.99  qbf_prep_cycles:                        0
% 2.20/0.99  
% 2.20/0.99  ------ BMC1
% 2.20/0.99  
% 2.20/0.99  bmc1_current_bound:                     -1
% 2.20/0.99  bmc1_last_solved_bound:                 -1
% 2.20/0.99  bmc1_unsat_core_size:                   -1
% 2.20/0.99  bmc1_unsat_core_parents_size:           -1
% 2.20/0.99  bmc1_merge_next_fun:                    0
% 2.20/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.20/0.99  
% 2.20/0.99  ------ Instantiation
% 2.20/0.99  
% 2.20/0.99  inst_num_of_clauses:                    308
% 2.20/0.99  inst_num_in_passive:                    119
% 2.20/0.99  inst_num_in_active:                     186
% 2.20/0.99  inst_num_in_unprocessed:                4
% 2.20/0.99  inst_num_of_loops:                      200
% 2.20/0.99  inst_num_of_learning_restarts:          0
% 2.20/0.99  inst_num_moves_active_passive:          11
% 2.20/0.99  inst_lit_activity:                      0
% 2.20/0.99  inst_lit_activity_moves:                0
% 2.20/0.99  inst_num_tautologies:                   0
% 2.20/0.99  inst_num_prop_implied:                  0
% 2.20/0.99  inst_num_existing_simplified:           0
% 2.20/0.99  inst_num_eq_res_simplified:             0
% 2.20/0.99  inst_num_child_elim:                    0
% 2.20/0.99  inst_num_of_dismatching_blockings:      51
% 2.20/0.99  inst_num_of_non_proper_insts:           299
% 2.20/0.99  inst_num_of_duplicates:                 0
% 2.20/0.99  inst_inst_num_from_inst_to_res:         0
% 2.20/0.99  inst_dismatching_checking_time:         0.
% 2.20/0.99  
% 2.20/0.99  ------ Resolution
% 2.20/0.99  
% 2.20/0.99  res_num_of_clauses:                     0
% 2.20/0.99  res_num_in_passive:                     0
% 2.20/0.99  res_num_in_active:                      0
% 2.20/0.99  res_num_of_loops:                       121
% 2.20/0.99  res_forward_subset_subsumed:            29
% 2.20/0.99  res_backward_subset_subsumed:           2
% 2.20/0.99  res_forward_subsumed:                   0
% 2.20/0.99  res_backward_subsumed:                  0
% 2.20/0.99  res_forward_subsumption_resolution:     0
% 2.20/0.99  res_backward_subsumption_resolution:    0
% 2.20/0.99  res_clause_to_clause_subsumption:       212
% 2.20/0.99  res_orphan_elimination:                 0
% 2.20/0.99  res_tautology_del:                      50
% 2.20/0.99  res_num_eq_res_simplified:              0
% 2.20/0.99  res_num_sel_changes:                    0
% 2.20/0.99  res_moves_from_active_to_pass:          0
% 2.20/0.99  
% 2.20/0.99  ------ Superposition
% 2.20/0.99  
% 2.20/0.99  sup_time_total:                         0.
% 2.20/0.99  sup_time_generating:                    0.
% 2.20/0.99  sup_time_sim_full:                      0.
% 2.20/0.99  sup_time_sim_immed:                     0.
% 2.20/0.99  
% 2.20/0.99  sup_num_of_clauses:                     62
% 2.20/0.99  sup_num_in_active:                      33
% 2.20/0.99  sup_num_in_passive:                     29
% 2.20/0.99  sup_num_of_loops:                       39
% 2.20/0.99  sup_fw_superposition:                   34
% 2.20/0.99  sup_bw_superposition:                   17
% 2.20/0.99  sup_immediate_simplified:               6
% 2.20/0.99  sup_given_eliminated:                   0
% 2.20/0.99  comparisons_done:                       0
% 2.20/0.99  comparisons_avoided:                    0
% 2.20/0.99  
% 2.20/0.99  ------ Simplifications
% 2.20/0.99  
% 2.20/0.99  
% 2.20/0.99  sim_fw_subset_subsumed:                 5
% 2.20/0.99  sim_bw_subset_subsumed:                 1
% 2.20/0.99  sim_fw_subsumed:                        1
% 2.20/0.99  sim_bw_subsumed:                        0
% 2.20/0.99  sim_fw_subsumption_res:                 0
% 2.20/0.99  sim_bw_subsumption_res:                 0
% 2.20/0.99  sim_tautology_del:                      3
% 2.20/0.99  sim_eq_tautology_del:                   0
% 2.20/0.99  sim_eq_res_simp:                        0
% 2.20/0.99  sim_fw_demodulated:                     0
% 2.20/0.99  sim_bw_demodulated:                     7
% 2.20/0.99  sim_light_normalised:                   2
% 2.20/0.99  sim_joinable_taut:                      0
% 2.20/0.99  sim_joinable_simp:                      0
% 2.20/0.99  sim_ac_normalised:                      0
% 2.20/0.99  sim_smt_subsumption:                    0
% 2.20/0.99  
%------------------------------------------------------------------------------
