%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:56:48 EST 2020

% Result     : Theorem 0.35s
% Output     : CNFRefutation 0.35s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 127 expanded)
%              Number of clauses        :   43 (  46 expanded)
%              Number of leaves         :   17 (  36 expanded)
%              Depth                    :   13
%              Number of atoms          :  237 ( 504 expanded)
%              Number of equality atoms :   94 ( 145 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ~ ( ! [X2] :
              ( m1_subset_1(X2,X0)
             => ~ r2_hidden(X2,X1) )
          & k1_xboole_0 != X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( r2_hidden(X2,X1)
          & m1_subset_1(X2,X0) )
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( r2_hidden(X2,X1)
          & m1_subset_1(X2,X0) )
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f13])).

fof(f24,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( r2_hidden(X2,X1)
          & m1_subset_1(X2,X0) )
     => ( r2_hidden(sK0(X0,X1),X1)
        & m1_subset_1(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r2_hidden(sK0(X0,X1),X1)
        & m1_subset_1(sK0(X0,X1),X0) )
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f24])).

fof(f32,plain,(
    ! [X0,X1] :
      ( m1_subset_1(sK0(X0,X1),X0)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f10,conjecture,(
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

fof(f11,negated_conjecture,(
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
    inference(negated_conjecture,[],[f10])).

fof(f22,plain,(
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
    inference(ennf_transformation,[],[f11])).

fof(f23,plain,(
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
    inference(flattening,[],[f22])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
              | ~ m1_subset_1(X3,X1) )
          & k1_xboole_0 != k2_relset_1(X1,X0,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
     => ( ! [X3] :
            ( ~ r2_hidden(X3,k1_relset_1(X1,X0,sK3))
            | ~ m1_subset_1(X3,X1) )
        & k1_xboole_0 != k2_relset_1(X1,X0,sK3)
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
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
                ( ~ r2_hidden(X3,k1_relset_1(sK2,X0,X2))
                | ~ m1_subset_1(X3,sK2) )
            & k1_xboole_0 != k2_relset_1(sK2,X0,X2)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK2,X0))) )
        & ~ v1_xboole_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
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
                  ( ~ r2_hidden(X3,k1_relset_1(X1,sK1,X2))
                  | ~ m1_subset_1(X3,X1) )
              & k1_xboole_0 != k2_relset_1(X1,sK1,X2)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,sK1))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( ! [X3] :
        ( ~ r2_hidden(X3,k1_relset_1(sK2,sK1,sK3))
        | ~ m1_subset_1(X3,sK2) )
    & k1_xboole_0 != k2_relset_1(sK2,sK1,sK3)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    & ~ v1_xboole_0(sK2)
    & ~ v1_xboole_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f23,f28,f27,f26])).

fof(f45,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k1_relset_1(sK2,sK1,sK3))
      | ~ m1_subset_1(X3,sK2) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f43,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f29])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_xboole_0(k2_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( v1_xboole_0(k2_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f34,plain,(
    ! [X0] :
      ( v1_xboole_0(k2_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f31,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f35,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f44,plain,(
    k1_xboole_0 != k2_relset_1(sK2,sK1,sK3) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(sK0(X1,X0),X1)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_622,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(sK0(X1,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r2_hidden(sK0(X1,X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_11,negated_conjecture,
    ( ~ m1_subset_1(X0,sK2)
    | ~ r2_hidden(X0,k1_relset_1(sK2,sK1,sK3)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_175,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,sK2)
    | k1_relset_1(sK2,sK1,sK3) != X0
    | sK0(X1,X0) != X2
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_11])).

cnf(c_176,plain,
    ( ~ m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(X0))
    | ~ m1_subset_1(sK0(X0,k1_relset_1(sK2,sK1,sK3)),sK2)
    | k1_xboole_0 = k1_relset_1(sK2,sK1,sK3) ),
    inference(unflattening,[status(thm)],[c_175])).

cnf(c_611,plain,
    ( k1_xboole_0 = k1_relset_1(sK2,sK1,sK3)
    | m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(sK0(X0,k1_relset_1(sK2,sK1,sK3)),sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_176])).

cnf(c_1374,plain,
    ( k1_relset_1(sK2,sK1,sK3) = k1_xboole_0
    | m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_622,c_611])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_18,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_745,plain,
    ( m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(sK2))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_746,plain,
    ( m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(sK2)) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_745])).

cnf(c_1668,plain,
    ( k1_relset_1(sK2,sK1,sK3) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1374,c_18,c_746])).

cnf(c_614,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_616,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1451,plain,
    ( k1_relset_1(sK2,sK1,sK3) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_614,c_616])).

cnf(c_1671,plain,
    ( k1_relat_1(sK3) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1668,c_1451])).

cnf(c_360,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_970,plain,
    ( X0 != X1
    | sK3 != X1
    | sK3 = X0 ),
    inference(instantiation,[status(thm)],[c_360])).

cnf(c_1289,plain,
    ( X0 != sK3
    | sK3 = X0
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_970])).

cnf(c_1290,plain,
    ( sK3 != sK3
    | sK3 = k1_xboole_0
    | k1_xboole_0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1289])).

cnf(c_4,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_1006,plain,
    ( v1_xboole_0(k2_relat_1(sK3))
    | ~ v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_361,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_852,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(sK3)
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_361])).

cnf(c_854,plain,
    ( v1_xboole_0(sK3)
    | ~ v1_xboole_0(k1_xboole_0)
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_852])).

cnf(c_1,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_830,plain,
    ( ~ v1_xboole_0(k2_relat_1(sK3))
    | k1_xboole_0 = k2_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_359,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_811,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_359])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_795,plain,
    ( ~ v1_relat_1(sK3)
    | k1_relat_1(sK3) != k1_xboole_0
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_743,plain,
    ( k2_relset_1(sK2,sK1,sK3) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k2_relset_1(sK2,sK1,sK3) ),
    inference(instantiation,[status(thm)],[c_360])).

cnf(c_792,plain,
    ( k2_relset_1(sK2,sK1,sK3) != k2_relat_1(sK3)
    | k1_xboole_0 = k2_relset_1(sK2,sK1,sK3)
    | k1_xboole_0 != k2_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_743])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_751,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    | k2_relset_1(sK2,sK1,sK3) = k2_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_725,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_12,negated_conjecture,
    ( k1_xboole_0 != k2_relset_1(sK2,sK1,sK3) ),
    inference(cnf_transformation,[],[f44])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1671,c_1290,c_1006,c_854,c_830,c_811,c_795,c_792,c_751,c_725,c_0,c_12,c_13])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n021.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 21:02:34 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 0.35/1.03  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.35/1.03  
% 0.35/1.03  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.35/1.03  
% 0.35/1.03  ------  iProver source info
% 0.35/1.03  
% 0.35/1.03  git: date: 2020-06-30 10:37:57 +0100
% 0.35/1.03  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.35/1.03  git: non_committed_changes: false
% 0.35/1.03  git: last_make_outside_of_git: false
% 0.35/1.03  
% 0.35/1.03  ------ 
% 0.35/1.03  
% 0.35/1.03  ------ Input Options
% 0.35/1.03  
% 0.35/1.03  --out_options                           all
% 0.35/1.03  --tptp_safe_out                         true
% 0.35/1.03  --problem_path                          ""
% 0.35/1.03  --include_path                          ""
% 0.35/1.03  --clausifier                            res/vclausify_rel
% 0.35/1.03  --clausifier_options                    --mode clausify
% 0.35/1.03  --stdin                                 false
% 0.35/1.03  --stats_out                             all
% 0.35/1.03  
% 0.35/1.03  ------ General Options
% 0.35/1.03  
% 0.35/1.03  --fof                                   false
% 0.35/1.03  --time_out_real                         305.
% 0.35/1.03  --time_out_virtual                      -1.
% 0.35/1.03  --symbol_type_check                     false
% 0.35/1.03  --clausify_out                          false
% 0.35/1.03  --sig_cnt_out                           false
% 0.35/1.03  --trig_cnt_out                          false
% 0.35/1.03  --trig_cnt_out_tolerance                1.
% 0.35/1.03  --trig_cnt_out_sk_spl                   false
% 0.35/1.03  --abstr_cl_out                          false
% 0.35/1.03  
% 0.35/1.03  ------ Global Options
% 0.35/1.03  
% 0.35/1.03  --schedule                              default
% 0.35/1.03  --add_important_lit                     false
% 0.35/1.03  --prop_solver_per_cl                    1000
% 0.35/1.03  --min_unsat_core                        false
% 0.35/1.03  --soft_assumptions                      false
% 0.35/1.03  --soft_lemma_size                       3
% 0.35/1.03  --prop_impl_unit_size                   0
% 0.35/1.03  --prop_impl_unit                        []
% 0.35/1.03  --share_sel_clauses                     true
% 0.35/1.03  --reset_solvers                         false
% 0.35/1.03  --bc_imp_inh                            [conj_cone]
% 0.35/1.03  --conj_cone_tolerance                   3.
% 0.35/1.03  --extra_neg_conj                        none
% 0.35/1.03  --large_theory_mode                     true
% 0.35/1.03  --prolific_symb_bound                   200
% 0.35/1.03  --lt_threshold                          2000
% 0.35/1.03  --clause_weak_htbl                      true
% 0.35/1.03  --gc_record_bc_elim                     false
% 0.35/1.03  
% 0.35/1.03  ------ Preprocessing Options
% 0.35/1.03  
% 0.35/1.03  --preprocessing_flag                    true
% 0.35/1.03  --time_out_prep_mult                    0.1
% 0.35/1.03  --splitting_mode                        input
% 0.35/1.03  --splitting_grd                         true
% 0.35/1.03  --splitting_cvd                         false
% 0.35/1.03  --splitting_cvd_svl                     false
% 0.35/1.03  --splitting_nvd                         32
% 0.35/1.03  --sub_typing                            true
% 0.35/1.03  --prep_gs_sim                           true
% 0.35/1.03  --prep_unflatten                        true
% 0.35/1.03  --prep_res_sim                          true
% 0.35/1.03  --prep_upred                            true
% 0.35/1.03  --prep_sem_filter                       exhaustive
% 0.35/1.03  --prep_sem_filter_out                   false
% 0.35/1.03  --pred_elim                             true
% 0.35/1.03  --res_sim_input                         true
% 0.35/1.03  --eq_ax_congr_red                       true
% 0.35/1.03  --pure_diseq_elim                       true
% 0.35/1.03  --brand_transform                       false
% 0.35/1.03  --non_eq_to_eq                          false
% 0.35/1.03  --prep_def_merge                        true
% 0.35/1.03  --prep_def_merge_prop_impl              false
% 0.35/1.03  --prep_def_merge_mbd                    true
% 0.35/1.03  --prep_def_merge_tr_red                 false
% 0.35/1.03  --prep_def_merge_tr_cl                  false
% 0.35/1.03  --smt_preprocessing                     true
% 0.35/1.03  --smt_ac_axioms                         fast
% 0.35/1.03  --preprocessed_out                      false
% 0.35/1.03  --preprocessed_stats                    false
% 0.35/1.03  
% 0.35/1.03  ------ Abstraction refinement Options
% 0.35/1.03  
% 0.35/1.03  --abstr_ref                             []
% 0.35/1.03  --abstr_ref_prep                        false
% 0.35/1.03  --abstr_ref_until_sat                   false
% 0.35/1.03  --abstr_ref_sig_restrict                funpre
% 0.35/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 0.35/1.03  --abstr_ref_under                       []
% 0.35/1.03  
% 0.35/1.03  ------ SAT Options
% 0.35/1.03  
% 0.35/1.03  --sat_mode                              false
% 0.35/1.03  --sat_fm_restart_options                ""
% 0.35/1.03  --sat_gr_def                            false
% 0.35/1.03  --sat_epr_types                         true
% 0.35/1.03  --sat_non_cyclic_types                  false
% 0.35/1.03  --sat_finite_models                     false
% 0.35/1.03  --sat_fm_lemmas                         false
% 0.35/1.03  --sat_fm_prep                           false
% 0.35/1.03  --sat_fm_uc_incr                        true
% 0.35/1.03  --sat_out_model                         small
% 0.35/1.03  --sat_out_clauses                       false
% 0.35/1.03  
% 0.35/1.03  ------ QBF Options
% 0.35/1.03  
% 0.35/1.03  --qbf_mode                              false
% 0.35/1.03  --qbf_elim_univ                         false
% 0.35/1.03  --qbf_dom_inst                          none
% 0.35/1.03  --qbf_dom_pre_inst                      false
% 0.35/1.03  --qbf_sk_in                             false
% 0.35/1.03  --qbf_pred_elim                         true
% 0.35/1.03  --qbf_split                             512
% 0.35/1.03  
% 0.35/1.03  ------ BMC1 Options
% 0.35/1.03  
% 0.35/1.03  --bmc1_incremental                      false
% 0.35/1.03  --bmc1_axioms                           reachable_all
% 0.35/1.03  --bmc1_min_bound                        0
% 0.35/1.03  --bmc1_max_bound                        -1
% 0.35/1.03  --bmc1_max_bound_default                -1
% 0.35/1.03  --bmc1_symbol_reachability              true
% 0.35/1.03  --bmc1_property_lemmas                  false
% 0.35/1.03  --bmc1_k_induction                      false
% 0.35/1.03  --bmc1_non_equiv_states                 false
% 0.35/1.03  --bmc1_deadlock                         false
% 0.35/1.03  --bmc1_ucm                              false
% 0.35/1.03  --bmc1_add_unsat_core                   none
% 0.35/1.03  --bmc1_unsat_core_children              false
% 0.35/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 0.35/1.03  --bmc1_out_stat                         full
% 0.35/1.03  --bmc1_ground_init                      false
% 0.35/1.03  --bmc1_pre_inst_next_state              false
% 0.35/1.03  --bmc1_pre_inst_state                   false
% 0.35/1.03  --bmc1_pre_inst_reach_state             false
% 0.35/1.03  --bmc1_out_unsat_core                   false
% 0.35/1.03  --bmc1_aig_witness_out                  false
% 0.35/1.03  --bmc1_verbose                          false
% 0.35/1.03  --bmc1_dump_clauses_tptp                false
% 0.35/1.03  --bmc1_dump_unsat_core_tptp             false
% 0.35/1.03  --bmc1_dump_file                        -
% 0.35/1.03  --bmc1_ucm_expand_uc_limit              128
% 0.35/1.03  --bmc1_ucm_n_expand_iterations          6
% 0.35/1.03  --bmc1_ucm_extend_mode                  1
% 0.35/1.03  --bmc1_ucm_init_mode                    2
% 0.35/1.03  --bmc1_ucm_cone_mode                    none
% 0.35/1.03  --bmc1_ucm_reduced_relation_type        0
% 0.35/1.03  --bmc1_ucm_relax_model                  4
% 0.35/1.03  --bmc1_ucm_full_tr_after_sat            true
% 0.35/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 0.35/1.03  --bmc1_ucm_layered_model                none
% 0.35/1.03  --bmc1_ucm_max_lemma_size               10
% 0.35/1.03  
% 0.35/1.03  ------ AIG Options
% 0.35/1.03  
% 0.35/1.03  --aig_mode                              false
% 0.35/1.03  
% 0.35/1.03  ------ Instantiation Options
% 0.35/1.03  
% 0.35/1.03  --instantiation_flag                    true
% 0.35/1.03  --inst_sos_flag                         false
% 0.35/1.03  --inst_sos_phase                        true
% 0.35/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.35/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.35/1.03  --inst_lit_sel_side                     num_symb
% 0.35/1.03  --inst_solver_per_active                1400
% 0.35/1.03  --inst_solver_calls_frac                1.
% 0.35/1.03  --inst_passive_queue_type               priority_queues
% 0.35/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.35/1.03  --inst_passive_queues_freq              [25;2]
% 0.35/1.03  --inst_dismatching                      true
% 0.35/1.03  --inst_eager_unprocessed_to_passive     true
% 0.35/1.03  --inst_prop_sim_given                   true
% 0.35/1.03  --inst_prop_sim_new                     false
% 0.35/1.03  --inst_subs_new                         false
% 0.35/1.03  --inst_eq_res_simp                      false
% 0.35/1.03  --inst_subs_given                       false
% 0.35/1.03  --inst_orphan_elimination               true
% 0.35/1.03  --inst_learning_loop_flag               true
% 0.35/1.03  --inst_learning_start                   3000
% 0.35/1.03  --inst_learning_factor                  2
% 0.35/1.03  --inst_start_prop_sim_after_learn       3
% 0.35/1.03  --inst_sel_renew                        solver
% 0.35/1.03  --inst_lit_activity_flag                true
% 0.35/1.03  --inst_restr_to_given                   false
% 0.35/1.03  --inst_activity_threshold               500
% 0.35/1.03  --inst_out_proof                        true
% 0.35/1.03  
% 0.35/1.03  ------ Resolution Options
% 0.35/1.03  
% 0.35/1.03  --resolution_flag                       true
% 0.35/1.03  --res_lit_sel                           adaptive
% 0.35/1.03  --res_lit_sel_side                      none
% 0.35/1.03  --res_ordering                          kbo
% 0.35/1.03  --res_to_prop_solver                    active
% 0.35/1.03  --res_prop_simpl_new                    false
% 0.35/1.03  --res_prop_simpl_given                  true
% 0.35/1.03  --res_passive_queue_type                priority_queues
% 0.35/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.35/1.03  --res_passive_queues_freq               [15;5]
% 0.35/1.03  --res_forward_subs                      full
% 0.35/1.03  --res_backward_subs                     full
% 0.35/1.03  --res_forward_subs_resolution           true
% 0.35/1.03  --res_backward_subs_resolution          true
% 0.35/1.03  --res_orphan_elimination                true
% 0.35/1.03  --res_time_limit                        2.
% 0.35/1.03  --res_out_proof                         true
% 0.35/1.03  
% 0.35/1.03  ------ Superposition Options
% 0.35/1.03  
% 0.35/1.03  --superposition_flag                    true
% 0.35/1.03  --sup_passive_queue_type                priority_queues
% 0.35/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.35/1.03  --sup_passive_queues_freq               [8;1;4]
% 0.35/1.03  --demod_completeness_check              fast
% 0.35/1.03  --demod_use_ground                      true
% 0.35/1.03  --sup_to_prop_solver                    passive
% 0.35/1.03  --sup_prop_simpl_new                    true
% 0.35/1.03  --sup_prop_simpl_given                  true
% 0.35/1.03  --sup_fun_splitting                     false
% 0.35/1.03  --sup_smt_interval                      50000
% 0.35/1.03  
% 0.35/1.03  ------ Superposition Simplification Setup
% 0.35/1.03  
% 0.35/1.03  --sup_indices_passive                   []
% 0.35/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.35/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.35/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.35/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 0.35/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.35/1.03  --sup_full_bw                           [BwDemod]
% 0.35/1.03  --sup_immed_triv                        [TrivRules]
% 0.35/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.35/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.35/1.03  --sup_immed_bw_main                     []
% 0.35/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.35/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 0.35/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.35/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.35/1.03  
% 0.35/1.03  ------ Combination Options
% 0.35/1.03  
% 0.35/1.03  --comb_res_mult                         3
% 0.35/1.03  --comb_sup_mult                         2
% 0.35/1.03  --comb_inst_mult                        10
% 0.35/1.03  
% 0.35/1.03  ------ Debug Options
% 0.35/1.03  
% 0.35/1.03  --dbg_backtrace                         false
% 0.35/1.03  --dbg_dump_prop_clauses                 false
% 0.35/1.03  --dbg_dump_prop_clauses_file            -
% 0.35/1.03  --dbg_out_stat                          false
% 0.35/1.03  ------ Parsing...
% 0.35/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.35/1.03  
% 0.35/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.35/1.03  
% 0.35/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.35/1.03  
% 0.35/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.35/1.03  ------ Proving...
% 0.35/1.03  ------ Problem Properties 
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  clauses                                 15
% 0.35/1.03  conjectures                             4
% 0.35/1.03  EPR                                     4
% 0.35/1.03  Horn                                    14
% 0.35/1.03  unary                                   5
% 0.35/1.03  binary                                  6
% 0.35/1.03  lits                                    29
% 0.35/1.03  lits eq                                 10
% 0.35/1.03  fd_pure                                 0
% 0.35/1.03  fd_pseudo                               0
% 0.35/1.03  fd_cond                                 4
% 0.35/1.03  fd_pseudo_cond                          0
% 0.35/1.03  AC symbols                              0
% 0.35/1.03  
% 0.35/1.03  ------ Schedule dynamic 5 is on 
% 0.35/1.03  
% 0.35/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  ------ 
% 0.35/1.03  Current options:
% 0.35/1.03  ------ 
% 0.35/1.03  
% 0.35/1.03  ------ Input Options
% 0.35/1.03  
% 0.35/1.03  --out_options                           all
% 0.35/1.03  --tptp_safe_out                         true
% 0.35/1.03  --problem_path                          ""
% 0.35/1.03  --include_path                          ""
% 0.35/1.03  --clausifier                            res/vclausify_rel
% 0.35/1.03  --clausifier_options                    --mode clausify
% 0.35/1.03  --stdin                                 false
% 0.35/1.03  --stats_out                             all
% 0.35/1.03  
% 0.35/1.03  ------ General Options
% 0.35/1.03  
% 0.35/1.03  --fof                                   false
% 0.35/1.03  --time_out_real                         305.
% 0.35/1.03  --time_out_virtual                      -1.
% 0.35/1.03  --symbol_type_check                     false
% 0.35/1.03  --clausify_out                          false
% 0.35/1.03  --sig_cnt_out                           false
% 0.35/1.03  --trig_cnt_out                          false
% 0.35/1.03  --trig_cnt_out_tolerance                1.
% 0.35/1.03  --trig_cnt_out_sk_spl                   false
% 0.35/1.03  --abstr_cl_out                          false
% 0.35/1.03  
% 0.35/1.03  ------ Global Options
% 0.35/1.03  
% 0.35/1.03  --schedule                              default
% 0.35/1.03  --add_important_lit                     false
% 0.35/1.03  --prop_solver_per_cl                    1000
% 0.35/1.03  --min_unsat_core                        false
% 0.35/1.03  --soft_assumptions                      false
% 0.35/1.03  --soft_lemma_size                       3
% 0.35/1.03  --prop_impl_unit_size                   0
% 0.35/1.03  --prop_impl_unit                        []
% 0.35/1.03  --share_sel_clauses                     true
% 0.35/1.03  --reset_solvers                         false
% 0.35/1.03  --bc_imp_inh                            [conj_cone]
% 0.35/1.03  --conj_cone_tolerance                   3.
% 0.35/1.03  --extra_neg_conj                        none
% 0.35/1.03  --large_theory_mode                     true
% 0.35/1.03  --prolific_symb_bound                   200
% 0.35/1.03  --lt_threshold                          2000
% 0.35/1.03  --clause_weak_htbl                      true
% 0.35/1.03  --gc_record_bc_elim                     false
% 0.35/1.03  
% 0.35/1.03  ------ Preprocessing Options
% 0.35/1.03  
% 0.35/1.03  --preprocessing_flag                    true
% 0.35/1.03  --time_out_prep_mult                    0.1
% 0.35/1.03  --splitting_mode                        input
% 0.35/1.03  --splitting_grd                         true
% 0.35/1.03  --splitting_cvd                         false
% 0.35/1.03  --splitting_cvd_svl                     false
% 0.35/1.03  --splitting_nvd                         32
% 0.35/1.03  --sub_typing                            true
% 0.35/1.03  --prep_gs_sim                           true
% 0.35/1.03  --prep_unflatten                        true
% 0.35/1.03  --prep_res_sim                          true
% 0.35/1.03  --prep_upred                            true
% 0.35/1.03  --prep_sem_filter                       exhaustive
% 0.35/1.03  --prep_sem_filter_out                   false
% 0.35/1.03  --pred_elim                             true
% 0.35/1.03  --res_sim_input                         true
% 0.35/1.03  --eq_ax_congr_red                       true
% 0.35/1.03  --pure_diseq_elim                       true
% 0.35/1.03  --brand_transform                       false
% 0.35/1.03  --non_eq_to_eq                          false
% 0.35/1.03  --prep_def_merge                        true
% 0.35/1.03  --prep_def_merge_prop_impl              false
% 0.35/1.03  --prep_def_merge_mbd                    true
% 0.35/1.03  --prep_def_merge_tr_red                 false
% 0.35/1.03  --prep_def_merge_tr_cl                  false
% 0.35/1.03  --smt_preprocessing                     true
% 0.35/1.03  --smt_ac_axioms                         fast
% 0.35/1.03  --preprocessed_out                      false
% 0.35/1.03  --preprocessed_stats                    false
% 0.35/1.03  
% 0.35/1.03  ------ Abstraction refinement Options
% 0.35/1.03  
% 0.35/1.03  --abstr_ref                             []
% 0.35/1.03  --abstr_ref_prep                        false
% 0.35/1.03  --abstr_ref_until_sat                   false
% 0.35/1.03  --abstr_ref_sig_restrict                funpre
% 0.35/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 0.35/1.03  --abstr_ref_under                       []
% 0.35/1.03  
% 0.35/1.03  ------ SAT Options
% 0.35/1.03  
% 0.35/1.03  --sat_mode                              false
% 0.35/1.03  --sat_fm_restart_options                ""
% 0.35/1.03  --sat_gr_def                            false
% 0.35/1.03  --sat_epr_types                         true
% 0.35/1.03  --sat_non_cyclic_types                  false
% 0.35/1.03  --sat_finite_models                     false
% 0.35/1.03  --sat_fm_lemmas                         false
% 0.35/1.03  --sat_fm_prep                           false
% 0.35/1.03  --sat_fm_uc_incr                        true
% 0.35/1.03  --sat_out_model                         small
% 0.35/1.03  --sat_out_clauses                       false
% 0.35/1.03  
% 0.35/1.03  ------ QBF Options
% 0.35/1.03  
% 0.35/1.03  --qbf_mode                              false
% 0.35/1.03  --qbf_elim_univ                         false
% 0.35/1.03  --qbf_dom_inst                          none
% 0.35/1.03  --qbf_dom_pre_inst                      false
% 0.35/1.03  --qbf_sk_in                             false
% 0.35/1.03  --qbf_pred_elim                         true
% 0.35/1.03  --qbf_split                             512
% 0.35/1.03  
% 0.35/1.03  ------ BMC1 Options
% 0.35/1.03  
% 0.35/1.03  --bmc1_incremental                      false
% 0.35/1.03  --bmc1_axioms                           reachable_all
% 0.35/1.03  --bmc1_min_bound                        0
% 0.35/1.03  --bmc1_max_bound                        -1
% 0.35/1.03  --bmc1_max_bound_default                -1
% 0.35/1.03  --bmc1_symbol_reachability              true
% 0.35/1.03  --bmc1_property_lemmas                  false
% 0.35/1.03  --bmc1_k_induction                      false
% 0.35/1.03  --bmc1_non_equiv_states                 false
% 0.35/1.03  --bmc1_deadlock                         false
% 0.35/1.03  --bmc1_ucm                              false
% 0.35/1.03  --bmc1_add_unsat_core                   none
% 0.35/1.03  --bmc1_unsat_core_children              false
% 0.35/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 0.35/1.03  --bmc1_out_stat                         full
% 0.35/1.03  --bmc1_ground_init                      false
% 0.35/1.03  --bmc1_pre_inst_next_state              false
% 0.35/1.03  --bmc1_pre_inst_state                   false
% 0.35/1.03  --bmc1_pre_inst_reach_state             false
% 0.35/1.03  --bmc1_out_unsat_core                   false
% 0.35/1.03  --bmc1_aig_witness_out                  false
% 0.35/1.03  --bmc1_verbose                          false
% 0.35/1.03  --bmc1_dump_clauses_tptp                false
% 0.35/1.03  --bmc1_dump_unsat_core_tptp             false
% 0.35/1.03  --bmc1_dump_file                        -
% 0.35/1.03  --bmc1_ucm_expand_uc_limit              128
% 0.35/1.03  --bmc1_ucm_n_expand_iterations          6
% 0.35/1.03  --bmc1_ucm_extend_mode                  1
% 0.35/1.03  --bmc1_ucm_init_mode                    2
% 0.35/1.03  --bmc1_ucm_cone_mode                    none
% 0.35/1.03  --bmc1_ucm_reduced_relation_type        0
% 0.35/1.03  --bmc1_ucm_relax_model                  4
% 0.35/1.03  --bmc1_ucm_full_tr_after_sat            true
% 0.35/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 0.35/1.03  --bmc1_ucm_layered_model                none
% 0.35/1.03  --bmc1_ucm_max_lemma_size               10
% 0.35/1.03  
% 0.35/1.03  ------ AIG Options
% 0.35/1.03  
% 0.35/1.03  --aig_mode                              false
% 0.35/1.03  
% 0.35/1.03  ------ Instantiation Options
% 0.35/1.03  
% 0.35/1.03  --instantiation_flag                    true
% 0.35/1.03  --inst_sos_flag                         false
% 0.35/1.03  --inst_sos_phase                        true
% 0.35/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.35/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.35/1.03  --inst_lit_sel_side                     none
% 0.35/1.03  --inst_solver_per_active                1400
% 0.35/1.03  --inst_solver_calls_frac                1.
% 0.35/1.03  --inst_passive_queue_type               priority_queues
% 0.35/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.35/1.03  --inst_passive_queues_freq              [25;2]
% 0.35/1.03  --inst_dismatching                      true
% 0.35/1.03  --inst_eager_unprocessed_to_passive     true
% 0.35/1.03  --inst_prop_sim_given                   true
% 0.35/1.03  --inst_prop_sim_new                     false
% 0.35/1.03  --inst_subs_new                         false
% 0.35/1.03  --inst_eq_res_simp                      false
% 0.35/1.03  --inst_subs_given                       false
% 0.35/1.03  --inst_orphan_elimination               true
% 0.35/1.03  --inst_learning_loop_flag               true
% 0.35/1.03  --inst_learning_start                   3000
% 0.35/1.03  --inst_learning_factor                  2
% 0.35/1.03  --inst_start_prop_sim_after_learn       3
% 0.35/1.03  --inst_sel_renew                        solver
% 0.35/1.03  --inst_lit_activity_flag                true
% 0.35/1.03  --inst_restr_to_given                   false
% 0.35/1.03  --inst_activity_threshold               500
% 0.35/1.03  --inst_out_proof                        true
% 0.35/1.03  
% 0.35/1.03  ------ Resolution Options
% 0.35/1.03  
% 0.35/1.03  --resolution_flag                       false
% 0.35/1.03  --res_lit_sel                           adaptive
% 0.35/1.03  --res_lit_sel_side                      none
% 0.35/1.03  --res_ordering                          kbo
% 0.35/1.03  --res_to_prop_solver                    active
% 0.35/1.03  --res_prop_simpl_new                    false
% 0.35/1.03  --res_prop_simpl_given                  true
% 0.35/1.03  --res_passive_queue_type                priority_queues
% 0.35/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.35/1.03  --res_passive_queues_freq               [15;5]
% 0.35/1.03  --res_forward_subs                      full
% 0.35/1.03  --res_backward_subs                     full
% 0.35/1.03  --res_forward_subs_resolution           true
% 0.35/1.03  --res_backward_subs_resolution          true
% 0.35/1.03  --res_orphan_elimination                true
% 0.35/1.03  --res_time_limit                        2.
% 0.35/1.03  --res_out_proof                         true
% 0.35/1.03  
% 0.35/1.03  ------ Superposition Options
% 0.35/1.03  
% 0.35/1.03  --superposition_flag                    true
% 0.35/1.03  --sup_passive_queue_type                priority_queues
% 0.35/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.35/1.03  --sup_passive_queues_freq               [8;1;4]
% 0.35/1.03  --demod_completeness_check              fast
% 0.35/1.03  --demod_use_ground                      true
% 0.35/1.03  --sup_to_prop_solver                    passive
% 0.35/1.03  --sup_prop_simpl_new                    true
% 0.35/1.03  --sup_prop_simpl_given                  true
% 0.35/1.03  --sup_fun_splitting                     false
% 0.35/1.03  --sup_smt_interval                      50000
% 0.35/1.03  
% 0.35/1.03  ------ Superposition Simplification Setup
% 0.35/1.03  
% 0.35/1.03  --sup_indices_passive                   []
% 0.35/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.35/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.35/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.35/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 0.35/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.35/1.03  --sup_full_bw                           [BwDemod]
% 0.35/1.03  --sup_immed_triv                        [TrivRules]
% 0.35/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.35/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.35/1.03  --sup_immed_bw_main                     []
% 0.35/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.35/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 0.35/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.35/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.35/1.03  
% 0.35/1.03  ------ Combination Options
% 0.35/1.03  
% 0.35/1.03  --comb_res_mult                         3
% 0.35/1.03  --comb_sup_mult                         2
% 0.35/1.03  --comb_inst_mult                        10
% 0.35/1.03  
% 0.35/1.03  ------ Debug Options
% 0.35/1.03  
% 0.35/1.03  --dbg_backtrace                         false
% 0.35/1.03  --dbg_dump_prop_clauses                 false
% 0.35/1.03  --dbg_dump_prop_clauses_file            -
% 0.35/1.03  --dbg_out_stat                          false
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  ------ Proving...
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  % SZS status Theorem for theBenchmark.p
% 0.35/1.03  
% 0.35/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 0.35/1.03  
% 0.35/1.03  fof(f3,axiom,(
% 0.35/1.03    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ~(! [X2] : (m1_subset_1(X2,X0) => ~r2_hidden(X2,X1)) & k1_xboole_0 != X1))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f13,plain,(
% 0.35/1.03    ! [X0,X1] : ((? [X2] : (r2_hidden(X2,X1) & m1_subset_1(X2,X0)) | k1_xboole_0 = X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.35/1.03    inference(ennf_transformation,[],[f3])).
% 0.35/1.03  
% 0.35/1.03  fof(f14,plain,(
% 0.35/1.03    ! [X0,X1] : (? [X2] : (r2_hidden(X2,X1) & m1_subset_1(X2,X0)) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.35/1.03    inference(flattening,[],[f13])).
% 0.35/1.03  
% 0.35/1.03  fof(f24,plain,(
% 0.35/1.03    ! [X1,X0] : (? [X2] : (r2_hidden(X2,X1) & m1_subset_1(X2,X0)) => (r2_hidden(sK0(X0,X1),X1) & m1_subset_1(sK0(X0,X1),X0)))),
% 0.35/1.03    introduced(choice_axiom,[])).
% 0.35/1.03  
% 0.35/1.03  fof(f25,plain,(
% 0.35/1.03    ! [X0,X1] : ((r2_hidden(sK0(X0,X1),X1) & m1_subset_1(sK0(X0,X1),X0)) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.35/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f24])).
% 0.35/1.03  
% 0.35/1.03  fof(f32,plain,(
% 0.35/1.03    ( ! [X0,X1] : (m1_subset_1(sK0(X0,X1),X0) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.35/1.03    inference(cnf_transformation,[],[f25])).
% 0.35/1.03  
% 0.35/1.03  fof(f33,plain,(
% 0.35/1.03    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X1) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.35/1.03    inference(cnf_transformation,[],[f25])).
% 0.35/1.03  
% 0.35/1.03  fof(f10,conjecture,(
% 0.35/1.03    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f11,negated_conjecture,(
% 0.35/1.03    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 0.35/1.03    inference(negated_conjecture,[],[f10])).
% 0.35/1.03  
% 0.35/1.03  fof(f22,plain,(
% 0.35/1.03    ? [X0] : (? [X1] : (? [X2] : ((! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 0.35/1.03    inference(ennf_transformation,[],[f11])).
% 0.35/1.03  
% 0.35/1.03  fof(f23,plain,(
% 0.35/1.03    ? [X0] : (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 0.35/1.03    inference(flattening,[],[f22])).
% 0.35/1.03  
% 0.35/1.03  fof(f28,plain,(
% 0.35/1.03    ( ! [X0,X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,sK3)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))) )),
% 0.35/1.03    introduced(choice_axiom,[])).
% 0.35/1.03  
% 0.35/1.03  fof(f27,plain,(
% 0.35/1.03    ( ! [X0] : (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) => (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(sK2,X0,X2)) | ~m1_subset_1(X3,sK2)) & k1_xboole_0 != k2_relset_1(sK2,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK2,X0)))) & ~v1_xboole_0(sK2))) )),
% 0.35/1.03    introduced(choice_axiom,[])).
% 0.35/1.03  
% 0.35/1.03  fof(f26,plain,(
% 0.35/1.03    ? [X0] : (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,sK1,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,sK1,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK1))),
% 0.35/1.03    introduced(choice_axiom,[])).
% 0.35/1.03  
% 0.35/1.03  fof(f29,plain,(
% 0.35/1.03    ((! [X3] : (~r2_hidden(X3,k1_relset_1(sK2,sK1,sK3)) | ~m1_subset_1(X3,sK2)) & k1_xboole_0 != k2_relset_1(sK2,sK1,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))) & ~v1_xboole_0(sK2)) & ~v1_xboole_0(sK1)),
% 0.35/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f23,f28,f27,f26])).
% 0.35/1.03  
% 0.35/1.03  fof(f45,plain,(
% 0.35/1.03    ( ! [X3] : (~r2_hidden(X3,k1_relset_1(sK2,sK1,sK3)) | ~m1_subset_1(X3,sK2)) )),
% 0.35/1.03    inference(cnf_transformation,[],[f29])).
% 0.35/1.03  
% 0.35/1.03  fof(f43,plain,(
% 0.35/1.03    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))),
% 0.35/1.03    inference(cnf_transformation,[],[f29])).
% 0.35/1.03  
% 0.35/1.03  fof(f7,axiom,(
% 0.35/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f19,plain,(
% 0.35/1.03    ! [X0,X1,X2] : (m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.35/1.03    inference(ennf_transformation,[],[f7])).
% 0.35/1.03  
% 0.35/1.03  fof(f38,plain,(
% 0.35/1.03    ( ! [X2,X0,X1] : (m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.35/1.03    inference(cnf_transformation,[],[f19])).
% 0.35/1.03  
% 0.35/1.03  fof(f8,axiom,(
% 0.35/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f20,plain,(
% 0.35/1.03    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.35/1.03    inference(ennf_transformation,[],[f8])).
% 0.35/1.03  
% 0.35/1.03  fof(f39,plain,(
% 0.35/1.03    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.35/1.03    inference(cnf_transformation,[],[f20])).
% 0.35/1.03  
% 0.35/1.03  fof(f4,axiom,(
% 0.35/1.03    ! [X0] : (v1_xboole_0(X0) => v1_xboole_0(k2_relat_1(X0)))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f15,plain,(
% 0.35/1.03    ! [X0] : (v1_xboole_0(k2_relat_1(X0)) | ~v1_xboole_0(X0))),
% 0.35/1.03    inference(ennf_transformation,[],[f4])).
% 0.35/1.03  
% 0.35/1.03  fof(f34,plain,(
% 0.35/1.03    ( ! [X0] : (v1_xboole_0(k2_relat_1(X0)) | ~v1_xboole_0(X0)) )),
% 0.35/1.03    inference(cnf_transformation,[],[f15])).
% 0.35/1.03  
% 0.35/1.03  fof(f2,axiom,(
% 0.35/1.03    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f12,plain,(
% 0.35/1.03    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 0.35/1.03    inference(ennf_transformation,[],[f2])).
% 0.35/1.03  
% 0.35/1.03  fof(f31,plain,(
% 0.35/1.03    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 0.35/1.03    inference(cnf_transformation,[],[f12])).
% 0.35/1.03  
% 0.35/1.03  fof(f5,axiom,(
% 0.35/1.03    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f16,plain,(
% 0.35/1.03    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 0.35/1.03    inference(ennf_transformation,[],[f5])).
% 0.35/1.03  
% 0.35/1.03  fof(f17,plain,(
% 0.35/1.03    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 0.35/1.03    inference(flattening,[],[f16])).
% 0.35/1.03  
% 0.35/1.03  fof(f35,plain,(
% 0.35/1.03    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 0.35/1.03    inference(cnf_transformation,[],[f17])).
% 0.35/1.03  
% 0.35/1.03  fof(f9,axiom,(
% 0.35/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f21,plain,(
% 0.35/1.03    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.35/1.03    inference(ennf_transformation,[],[f9])).
% 0.35/1.03  
% 0.35/1.03  fof(f40,plain,(
% 0.35/1.03    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.35/1.03    inference(cnf_transformation,[],[f21])).
% 0.35/1.03  
% 0.35/1.03  fof(f6,axiom,(
% 0.35/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f18,plain,(
% 0.35/1.03    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.35/1.03    inference(ennf_transformation,[],[f6])).
% 0.35/1.03  
% 0.35/1.03  fof(f37,plain,(
% 0.35/1.03    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.35/1.03    inference(cnf_transformation,[],[f18])).
% 0.35/1.03  
% 0.35/1.03  fof(f1,axiom,(
% 0.35/1.03    v1_xboole_0(k1_xboole_0)),
% 0.35/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.35/1.03  
% 0.35/1.03  fof(f30,plain,(
% 0.35/1.03    v1_xboole_0(k1_xboole_0)),
% 0.35/1.03    inference(cnf_transformation,[],[f1])).
% 0.35/1.03  
% 0.35/1.03  fof(f44,plain,(
% 0.35/1.03    k1_xboole_0 != k2_relset_1(sK2,sK1,sK3)),
% 0.35/1.03    inference(cnf_transformation,[],[f29])).
% 0.35/1.03  
% 0.35/1.03  cnf(c_3,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.35/1.03      | m1_subset_1(sK0(X1,X0),X1)
% 0.35/1.03      | k1_xboole_0 = X0 ),
% 0.35/1.03      inference(cnf_transformation,[],[f32]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_622,plain,
% 0.35/1.03      ( k1_xboole_0 = X0
% 0.35/1.03      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 0.35/1.03      | m1_subset_1(sK0(X1,X0),X1) = iProver_top ),
% 0.35/1.03      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_2,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.35/1.03      | r2_hidden(sK0(X1,X0),X0)
% 0.35/1.03      | k1_xboole_0 = X0 ),
% 0.35/1.03      inference(cnf_transformation,[],[f33]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_11,negated_conjecture,
% 0.35/1.03      ( ~ m1_subset_1(X0,sK2)
% 0.35/1.03      | ~ r2_hidden(X0,k1_relset_1(sK2,sK1,sK3)) ),
% 0.35/1.03      inference(cnf_transformation,[],[f45]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_175,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.35/1.03      | ~ m1_subset_1(X2,sK2)
% 0.35/1.03      | k1_relset_1(sK2,sK1,sK3) != X0
% 0.35/1.03      | sK0(X1,X0) != X2
% 0.35/1.03      | k1_xboole_0 = X0 ),
% 0.35/1.03      inference(resolution_lifted,[status(thm)],[c_2,c_11]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_176,plain,
% 0.35/1.03      ( ~ m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(X0))
% 0.35/1.03      | ~ m1_subset_1(sK0(X0,k1_relset_1(sK2,sK1,sK3)),sK2)
% 0.35/1.03      | k1_xboole_0 = k1_relset_1(sK2,sK1,sK3) ),
% 0.35/1.03      inference(unflattening,[status(thm)],[c_175]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_611,plain,
% 0.35/1.03      ( k1_xboole_0 = k1_relset_1(sK2,sK1,sK3)
% 0.35/1.03      | m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(X0)) != iProver_top
% 0.35/1.03      | m1_subset_1(sK0(X0,k1_relset_1(sK2,sK1,sK3)),sK2) != iProver_top ),
% 0.35/1.03      inference(predicate_to_equality,[status(thm)],[c_176]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1374,plain,
% 0.35/1.03      ( k1_relset_1(sK2,sK1,sK3) = k1_xboole_0
% 0.35/1.03      | m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(sK2)) != iProver_top ),
% 0.35/1.03      inference(superposition,[status(thm)],[c_622,c_611]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_13,negated_conjecture,
% 0.35/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
% 0.35/1.03      inference(cnf_transformation,[],[f43]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_18,plain,
% 0.35/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
% 0.35/1.03      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_8,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.35/1.03      | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 0.35/1.03      inference(cnf_transformation,[],[f38]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_745,plain,
% 0.35/1.03      ( m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(sK2))
% 0.35/1.03      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_8]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_746,plain,
% 0.35/1.03      ( m1_subset_1(k1_relset_1(sK2,sK1,sK3),k1_zfmisc_1(sK2)) = iProver_top
% 0.35/1.03      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top ),
% 0.35/1.03      inference(predicate_to_equality,[status(thm)],[c_745]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1668,plain,
% 0.35/1.03      ( k1_relset_1(sK2,sK1,sK3) = k1_xboole_0 ),
% 0.35/1.03      inference(global_propositional_subsumption,
% 0.35/1.03                [status(thm)],
% 0.35/1.03                [c_1374,c_18,c_746]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_614,plain,
% 0.35/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
% 0.35/1.03      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_9,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.35/1.03      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 0.35/1.03      inference(cnf_transformation,[],[f39]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_616,plain,
% 0.35/1.03      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 0.35/1.03      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 0.35/1.03      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1451,plain,
% 0.35/1.03      ( k1_relset_1(sK2,sK1,sK3) = k1_relat_1(sK3) ),
% 0.35/1.03      inference(superposition,[status(thm)],[c_614,c_616]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1671,plain,
% 0.35/1.03      ( k1_relat_1(sK3) = k1_xboole_0 ),
% 0.35/1.03      inference(demodulation,[status(thm)],[c_1668,c_1451]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_360,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_970,plain,
% 0.35/1.03      ( X0 != X1 | sK3 != X1 | sK3 = X0 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_360]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1289,plain,
% 0.35/1.03      ( X0 != sK3 | sK3 = X0 | sK3 != sK3 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_970]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1290,plain,
% 0.35/1.03      ( sK3 != sK3 | sK3 = k1_xboole_0 | k1_xboole_0 != sK3 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_1289]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_4,plain,
% 0.35/1.03      ( ~ v1_xboole_0(X0) | v1_xboole_0(k2_relat_1(X0)) ),
% 0.35/1.03      inference(cnf_transformation,[],[f34]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1006,plain,
% 0.35/1.03      ( v1_xboole_0(k2_relat_1(sK3)) | ~ v1_xboole_0(sK3) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_4]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_361,plain,
% 0.35/1.03      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 0.35/1.03      theory(equality) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_852,plain,
% 0.35/1.03      ( ~ v1_xboole_0(X0) | v1_xboole_0(sK3) | sK3 != X0 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_361]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_854,plain,
% 0.35/1.03      ( v1_xboole_0(sK3)
% 0.35/1.03      | ~ v1_xboole_0(k1_xboole_0)
% 0.35/1.03      | sK3 != k1_xboole_0 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_852]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_1,plain,
% 0.35/1.03      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 0.35/1.03      inference(cnf_transformation,[],[f31]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_830,plain,
% 0.35/1.03      ( ~ v1_xboole_0(k2_relat_1(sK3)) | k1_xboole_0 = k2_relat_1(sK3) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_1]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_359,plain,( X0 = X0 ),theory(equality) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_811,plain,
% 0.35/1.03      ( sK3 = sK3 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_359]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_6,plain,
% 0.35/1.03      ( ~ v1_relat_1(X0)
% 0.35/1.03      | k1_relat_1(X0) != k1_xboole_0
% 0.35/1.03      | k1_xboole_0 = X0 ),
% 0.35/1.03      inference(cnf_transformation,[],[f35]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_795,plain,
% 0.35/1.03      ( ~ v1_relat_1(sK3)
% 0.35/1.03      | k1_relat_1(sK3) != k1_xboole_0
% 0.35/1.03      | k1_xboole_0 = sK3 ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_6]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_743,plain,
% 0.35/1.03      ( k2_relset_1(sK2,sK1,sK3) != X0
% 0.35/1.03      | k1_xboole_0 != X0
% 0.35/1.03      | k1_xboole_0 = k2_relset_1(sK2,sK1,sK3) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_360]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_792,plain,
% 0.35/1.03      ( k2_relset_1(sK2,sK1,sK3) != k2_relat_1(sK3)
% 0.35/1.03      | k1_xboole_0 = k2_relset_1(sK2,sK1,sK3)
% 0.35/1.03      | k1_xboole_0 != k2_relat_1(sK3) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_743]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_10,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.35/1.03      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 0.35/1.03      inference(cnf_transformation,[],[f40]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_751,plain,
% 0.35/1.03      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
% 0.35/1.03      | k2_relset_1(sK2,sK1,sK3) = k2_relat_1(sK3) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_10]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_7,plain,
% 0.35/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.35/1.03      | v1_relat_1(X0) ),
% 0.35/1.03      inference(cnf_transformation,[],[f37]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_725,plain,
% 0.35/1.03      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
% 0.35/1.03      | v1_relat_1(sK3) ),
% 0.35/1.03      inference(instantiation,[status(thm)],[c_7]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_0,plain,
% 0.35/1.03      ( v1_xboole_0(k1_xboole_0) ),
% 0.35/1.03      inference(cnf_transformation,[],[f30]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(c_12,negated_conjecture,
% 0.35/1.03      ( k1_xboole_0 != k2_relset_1(sK2,sK1,sK3) ),
% 0.35/1.03      inference(cnf_transformation,[],[f44]) ).
% 0.35/1.03  
% 0.35/1.03  cnf(contradiction,plain,
% 0.35/1.03      ( $false ),
% 0.35/1.03      inference(minisat,
% 0.35/1.03                [status(thm)],
% 0.35/1.03                [c_1671,c_1290,c_1006,c_854,c_830,c_811,c_795,c_792,
% 0.35/1.03                 c_751,c_725,c_0,c_12,c_13]) ).
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 0.35/1.03  
% 0.35/1.03  ------                               Statistics
% 0.35/1.03  
% 0.35/1.03  ------ General
% 0.35/1.03  
% 0.35/1.03  abstr_ref_over_cycles:                  0
% 0.35/1.03  abstr_ref_under_cycles:                 0
% 0.35/1.03  gc_basic_clause_elim:                   0
% 0.35/1.03  forced_gc_time:                         0
% 0.35/1.03  parsing_time:                           0.016
% 0.35/1.03  unif_index_cands_time:                  0.
% 0.35/1.03  unif_index_add_time:                    0.
% 0.35/1.03  orderings_time:                         0.
% 0.35/1.03  out_proof_time:                         0.009
% 0.35/1.03  total_time:                             0.093
% 0.35/1.03  num_of_symbols:                         46
% 0.35/1.03  num_of_terms:                           1397
% 0.35/1.03  
% 0.35/1.03  ------ Preprocessing
% 0.35/1.03  
% 0.35/1.03  num_of_splits:                          0
% 0.35/1.03  num_of_split_atoms:                     0
% 0.35/1.03  num_of_reused_defs:                     0
% 0.35/1.03  num_eq_ax_congr_red:                    13
% 0.35/1.03  num_of_sem_filtered_clauses:            1
% 0.35/1.03  num_of_subtypes:                        0
% 0.35/1.03  monotx_restored_types:                  0
% 0.35/1.03  sat_num_of_epr_types:                   0
% 0.35/1.03  sat_num_of_non_cyclic_types:            0
% 0.35/1.03  sat_guarded_non_collapsed_types:        0
% 0.35/1.03  num_pure_diseq_elim:                    0
% 0.35/1.03  simp_replaced_by:                       0
% 0.35/1.03  res_preprocessed:                       80
% 0.35/1.03  prep_upred:                             0
% 0.35/1.03  prep_unflattend:                        2
% 0.35/1.03  smt_new_axioms:                         0
% 0.35/1.03  pred_elim_cands:                        3
% 0.35/1.03  pred_elim:                              1
% 0.35/1.03  pred_elim_cl:                           1
% 0.35/1.03  pred_elim_cycles:                       3
% 0.35/1.03  merged_defs:                            0
% 0.35/1.03  merged_defs_ncl:                        0
% 0.35/1.03  bin_hyper_res:                          0
% 0.35/1.03  prep_cycles:                            4
% 0.35/1.03  pred_elim_time:                         0.001
% 0.35/1.03  splitting_time:                         0.
% 0.35/1.03  sem_filter_time:                        0.
% 0.35/1.03  monotx_time:                            0.
% 0.35/1.03  subtype_inf_time:                       0.
% 0.35/1.03  
% 0.35/1.03  ------ Problem properties
% 0.35/1.03  
% 0.35/1.03  clauses:                                15
% 0.35/1.03  conjectures:                            4
% 0.35/1.03  epr:                                    4
% 0.35/1.03  horn:                                   14
% 0.35/1.03  ground:                                 5
% 0.35/1.03  unary:                                  5
% 0.35/1.03  binary:                                 6
% 0.35/1.03  lits:                                   29
% 0.35/1.03  lits_eq:                                10
% 0.35/1.03  fd_pure:                                0
% 0.35/1.03  fd_pseudo:                              0
% 0.35/1.03  fd_cond:                                4
% 0.35/1.03  fd_pseudo_cond:                         0
% 0.35/1.03  ac_symbols:                             0
% 0.35/1.03  
% 0.35/1.03  ------ Propositional Solver
% 0.35/1.03  
% 0.35/1.03  prop_solver_calls:                      27
% 0.35/1.03  prop_fast_solver_calls:                 406
% 0.35/1.03  smt_solver_calls:                       0
% 0.35/1.03  smt_fast_solver_calls:                  0
% 0.35/1.03  prop_num_of_clauses:                    540
% 0.35/1.03  prop_preprocess_simplified:             2551
% 0.35/1.03  prop_fo_subsumed:                       1
% 0.35/1.03  prop_solver_time:                       0.
% 0.35/1.03  smt_solver_time:                        0.
% 0.35/1.03  smt_fast_solver_time:                   0.
% 0.35/1.03  prop_fast_solver_time:                  0.
% 0.35/1.03  prop_unsat_core_time:                   0.
% 0.35/1.03  
% 0.35/1.03  ------ QBF
% 0.35/1.03  
% 0.35/1.03  qbf_q_res:                              0
% 0.35/1.03  qbf_num_tautologies:                    0
% 0.35/1.03  qbf_prep_cycles:                        0
% 0.35/1.03  
% 0.35/1.03  ------ BMC1
% 0.35/1.03  
% 0.35/1.03  bmc1_current_bound:                     -1
% 0.35/1.03  bmc1_last_solved_bound:                 -1
% 0.35/1.03  bmc1_unsat_core_size:                   -1
% 0.35/1.03  bmc1_unsat_core_parents_size:           -1
% 0.35/1.03  bmc1_merge_next_fun:                    0
% 0.35/1.03  bmc1_unsat_core_clauses_time:           0.
% 0.35/1.03  
% 0.35/1.03  ------ Instantiation
% 0.35/1.03  
% 0.35/1.03  inst_num_of_clauses:                    200
% 0.35/1.03  inst_num_in_passive:                    33
% 0.35/1.03  inst_num_in_active:                     131
% 0.35/1.03  inst_num_in_unprocessed:                36
% 0.35/1.03  inst_num_of_loops:                      140
% 0.35/1.03  inst_num_of_learning_restarts:          0
% 0.35/1.03  inst_num_moves_active_passive:          6
% 0.35/1.03  inst_lit_activity:                      0
% 0.35/1.03  inst_lit_activity_moves:                0
% 0.35/1.03  inst_num_tautologies:                   0
% 0.35/1.03  inst_num_prop_implied:                  0
% 0.35/1.03  inst_num_existing_simplified:           0
% 0.35/1.03  inst_num_eq_res_simplified:             0
% 0.35/1.03  inst_num_child_elim:                    0
% 0.35/1.03  inst_num_of_dismatching_blockings:      14
% 0.35/1.03  inst_num_of_non_proper_insts:           136
% 0.35/1.03  inst_num_of_duplicates:                 0
% 0.35/1.03  inst_inst_num_from_inst_to_res:         0
% 0.35/1.03  inst_dismatching_checking_time:         0.
% 0.35/1.03  
% 0.35/1.03  ------ Resolution
% 0.35/1.03  
% 0.35/1.03  res_num_of_clauses:                     0
% 0.35/1.03  res_num_in_passive:                     0
% 0.35/1.03  res_num_in_active:                      0
% 0.35/1.03  res_num_of_loops:                       84
% 0.35/1.03  res_forward_subset_subsumed:            34
% 0.35/1.03  res_backward_subset_subsumed:           0
% 0.35/1.03  res_forward_subsumed:                   0
% 0.35/1.03  res_backward_subsumed:                  0
% 0.35/1.03  res_forward_subsumption_resolution:     0
% 0.35/1.03  res_backward_subsumption_resolution:    0
% 0.35/1.03  res_clause_to_clause_subsumption:       95
% 0.35/1.03  res_orphan_elimination:                 0
% 0.35/1.03  res_tautology_del:                      29
% 0.35/1.03  res_num_eq_res_simplified:              0
% 0.35/1.03  res_num_sel_changes:                    0
% 0.35/1.03  res_moves_from_active_to_pass:          0
% 0.35/1.03  
% 0.35/1.03  ------ Superposition
% 0.35/1.03  
% 0.35/1.03  sup_time_total:                         0.
% 0.35/1.03  sup_time_generating:                    0.
% 0.35/1.03  sup_time_sim_full:                      0.
% 0.35/1.03  sup_time_sim_immed:                     0.
% 0.35/1.03  
% 0.35/1.03  sup_num_of_clauses:                     34
% 0.35/1.03  sup_num_in_active:                      23
% 0.35/1.03  sup_num_in_passive:                     11
% 0.35/1.03  sup_num_of_loops:                       26
% 0.35/1.03  sup_fw_superposition:                   21
% 0.35/1.03  sup_bw_superposition:                   6
% 0.35/1.03  sup_immediate_simplified:               5
% 0.35/1.03  sup_given_eliminated:                   0
% 0.35/1.03  comparisons_done:                       0
% 0.35/1.03  comparisons_avoided:                    0
% 0.35/1.03  
% 0.35/1.03  ------ Simplifications
% 0.35/1.03  
% 0.35/1.03  
% 0.35/1.03  sim_fw_subset_subsumed:                 0
% 0.35/1.03  sim_bw_subset_subsumed:                 1
% 0.35/1.03  sim_fw_subsumed:                        0
% 0.35/1.03  sim_bw_subsumed:                        0
% 0.35/1.03  sim_fw_subsumption_res:                 0
% 0.35/1.03  sim_bw_subsumption_res:                 0
% 0.35/1.03  sim_tautology_del:                      1
% 0.35/1.03  sim_eq_tautology_del:                   7
% 0.35/1.03  sim_eq_res_simp:                        0
% 0.35/1.03  sim_fw_demodulated:                     0
% 0.35/1.03  sim_bw_demodulated:                     3
% 0.35/1.03  sim_light_normalised:                   5
% 0.35/1.03  sim_joinable_taut:                      0
% 0.35/1.03  sim_joinable_simp:                      0
% 0.35/1.03  sim_ac_normalised:                      0
% 0.35/1.03  sim_smt_subsumption:                    0
% 0.35/1.03  
%------------------------------------------------------------------------------
