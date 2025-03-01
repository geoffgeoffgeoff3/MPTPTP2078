%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0550+1.002 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n029.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:43:33 EST 2020

% Result     : Theorem 2.58s
% Output     : CNFRefutation 2.58s
% Verified   : 
% Statistics : Number of formulae       :  108 ( 152 expanded)
%              Number of clauses        :   52 (  54 expanded)
%              Number of leaves         :   20 (  36 expanded)
%              Depth                    :   12
%              Number of atoms          :  333 ( 529 expanded)
%              Number of equality atoms :   55 ( 108 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f56,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f34,plain,(
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
    inference(nnf_transformation,[],[f14])).

fof(f35,plain,(
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
    inference(rectify,[],[f34])).

fof(f36,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X4,X0),X2)
          & r2_hidden(X4,k1_relat_1(X2)) )
     => ( r2_hidden(sK5(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(sK5(X0,X1,X2),X0),X2)
        & r2_hidden(sK5(X0,X1,X2),k1_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ( r2_hidden(sK5(X0,X1,X2),X1)
            & r2_hidden(k4_tarski(sK5(X0,X1,X2),X0),X2)
            & r2_hidden(sK5(X0,X1,X2),k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f35,f36])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,k9_relat_1(X2,X1))
      | ~ r2_hidden(X3,X1)
      | ~ r2_hidden(k4_tarski(X3,X0),X2)
      | ~ r2_hidden(X3,k1_relat_1(X2))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f11,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ~ ( k9_relat_1(X1,X0) = k1_xboole_0
          & r1_tarski(X0,k1_relat_1(X1))
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ~ ( k9_relat_1(X1,X0) = k1_xboole_0
            & r1_tarski(X0,k1_relat_1(X1))
            & k1_xboole_0 != X0 ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f20,plain,(
    ? [X0,X1] :
      ( k9_relat_1(X1,X0) = k1_xboole_0
      & r1_tarski(X0,k1_relat_1(X1))
      & k1_xboole_0 != X0
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f21,plain,(
    ? [X0,X1] :
      ( k9_relat_1(X1,X0) = k1_xboole_0
      & r1_tarski(X0,k1_relat_1(X1))
      & k1_xboole_0 != X0
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f20])).

fof(f39,plain,
    ( ? [X0,X1] :
        ( k9_relat_1(X1,X0) = k1_xboole_0
        & r1_tarski(X0,k1_relat_1(X1))
        & k1_xboole_0 != X0
        & v1_relat_1(X1) )
   => ( k9_relat_1(sK7,sK6) = k1_xboole_0
      & r1_tarski(sK6,k1_relat_1(sK7))
      & k1_xboole_0 != sK6
      & v1_relat_1(sK7) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( k9_relat_1(sK7,sK6) = k1_xboole_0
    & r1_tarski(sK6,k1_relat_1(sK7))
    & k1_xboole_0 != sK6
    & v1_relat_1(sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7])],[f21,f39])).

fof(f60,plain,(
    v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f40])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(rectify,[],[f26])).

fof(f30,plain,(
    ! [X5,X0] :
      ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
     => r2_hidden(k4_tarski(X5,sK3(X0,X5)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
     => r2_hidden(k4_tarski(X2,sK2(X0,X1)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK1(X0,X1),X3),X0)
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( ? [X4] : r2_hidden(k4_tarski(sK1(X0,X1),X4),X0)
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK1(X0,X1),X3),X0)
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( r2_hidden(k4_tarski(sK1(X0,X1),sK2(X0,X1)),X0)
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( r2_hidden(k4_tarski(X5,sK3(X0,X5)),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f27,f30,f29,f28])).

fof(f45,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r2_hidden(k4_tarski(X5,X6),X0)
      | k1_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f64,plain,(
    ! [X6,X0,X5] :
      ( r2_hidden(X5,k1_relat_1(X0))
      | ~ r2_hidden(k4_tarski(X5,X6),X0) ) ),
    inference(equality_resolution,[],[f45])).

fof(f44,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,sK3(X0,X5)),X0)
      | ~ r2_hidden(X5,X1)
      | k1_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f65,plain,(
    ! [X0,X5] :
      ( r2_hidden(k4_tarski(X5,sK3(X0,X5)),X0)
      | ~ r2_hidden(X5,k1_relat_1(X0)) ) ),
    inference(equality_resolution,[],[f44])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f22])).

fof(f24,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f24])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f3,axiom,(
    v1_xboole_0(o_0_0_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    v1_xboole_0(o_0_0_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f9,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f58,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f41,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f4,axiom,(
    ! [X0] :
    ? [X1] : m1_subset_1(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ? [X1] : m1_subset_1(X1,X0)
     => m1_subset_1(sK4(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0] : m1_subset_1(sK4(X0),X0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f4,f32])).

fof(f49,plain,(
    ! [X0] : m1_subset_1(sK4(X0),X0) ),
    inference(cnf_transformation,[],[f33])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f16,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f15])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f63,plain,(
    k9_relat_1(sK7,sK6) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f40])).

fof(f62,plain,(
    r1_tarski(sK6,k1_relat_1(sK7)) ),
    inference(cnf_transformation,[],[f40])).

fof(f61,plain,(
    k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_875,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_4197,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k9_relat_1(sK7,sK6),X2)
    | X2 != X1
    | k9_relat_1(sK7,sK6) != X0 ),
    inference(instantiation,[status(thm)],[c_875])).

cnf(c_4199,plain,
    ( r1_tarski(k9_relat_1(sK7,sK6),k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | k9_relat_1(sK7,sK6) != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_4197])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_14,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_169,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_14])).

cnf(c_170,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_169])).

cnf(c_214,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X2)
    | ~ v1_xboole_0(X2) ),
    inference(bin_hyper_res,[status(thm)],[c_16,c_170])).

cnf(c_3134,plain,
    ( ~ r2_hidden(sK3(sK7,sK4(sK6)),k9_relat_1(sK7,sK6))
    | ~ r1_tarski(k9_relat_1(sK7,sK6),X0)
    | ~ v1_xboole_0(X0) ),
    inference(instantiation,[status(thm)],[c_214])).

cnf(c_3141,plain,
    ( ~ r2_hidden(sK3(sK7,sK4(sK6)),k9_relat_1(sK7,sK6))
    | ~ r1_tarski(k9_relat_1(sK7,sK6),k1_xboole_0)
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3134])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(X3,X1))
    | ~ r2_hidden(X0,k1_relat_1(X3))
    | ~ r2_hidden(k4_tarski(X0,X2),X3)
    | ~ v1_relat_1(X3) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_22,negated_conjecture,
    ( v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_337,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(X3,X1))
    | ~ r2_hidden(X0,k1_relat_1(X3))
    | ~ r2_hidden(k4_tarski(X0,X2),X3)
    | sK7 != X3 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_22])).

cnf(c_338,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(sK7,X1))
    | ~ r2_hidden(X0,k1_relat_1(sK7))
    | ~ r2_hidden(k4_tarski(X0,X2),sK7) ),
    inference(unflattening,[status(thm)],[c_337])).

cnf(c_5,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X0,X2),X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_350,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k9_relat_1(sK7,X1))
    | ~ r2_hidden(k4_tarski(X0,X2),sK7) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_338,c_5])).

cnf(c_1405,plain,
    ( r2_hidden(X0,k9_relat_1(sK7,sK6))
    | ~ r2_hidden(k4_tarski(sK4(sK6),X0),sK7)
    | ~ r2_hidden(sK4(sK6),sK6) ),
    inference(instantiation,[status(thm)],[c_350])).

cnf(c_2049,plain,
    ( r2_hidden(sK3(sK7,sK4(sK6)),k9_relat_1(sK7,sK6))
    | ~ r2_hidden(k4_tarski(sK4(sK6),sK3(sK7,sK4(sK6))),sK7)
    | ~ r2_hidden(sK4(sK6),sK6) ),
    inference(instantiation,[status(thm)],[c_1405])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,sK3(X1,X0)),X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1470,plain,
    ( r2_hidden(k4_tarski(sK4(sK6),sK3(X0,sK4(sK6))),X0)
    | ~ r2_hidden(sK4(sK6),k1_relat_1(X0)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1842,plain,
    ( r2_hidden(k4_tarski(sK4(sK6),sK3(sK7,sK4(sK6))),sK7)
    | ~ r2_hidden(sK4(sK6),k1_relat_1(sK7)) ),
    inference(instantiation,[status(thm)],[c_1470])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1233,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1234,plain,
    ( r2_hidden(sK0(X0,X1),X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1794,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1233,c_1234])).

cnf(c_1804,plain,
    ( r1_tarski(X0,X0) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1794])).

cnf(c_1806,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_1804])).

cnf(c_7,plain,
    ( v1_xboole_0(o_0_0_xboole_0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1227,plain,
    ( v1_xboole_0(o_0_0_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_17,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1226,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1677,plain,
    ( k1_xboole_0 = o_0_0_xboole_0 ),
    inference(superposition,[status(thm)],[c_1227,c_1226])).

cnf(c_879,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_1599,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(o_0_0_xboole_0)
    | X0 != o_0_0_xboole_0 ),
    inference(instantiation,[status(thm)],[c_879])).

cnf(c_1601,plain,
    ( v1_xboole_0(k1_xboole_0)
    | ~ v1_xboole_0(o_0_0_xboole_0)
    | k1_xboole_0 != o_0_0_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1599])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1403,plain,
    ( r2_hidden(sK4(sK6),X0)
    | ~ r2_hidden(sK4(sK6),sK6)
    | ~ r1_tarski(sK6,X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1469,plain,
    ( r2_hidden(sK4(sK6),k1_relat_1(X0))
    | ~ r2_hidden(sK4(sK6),sK6)
    | ~ r1_tarski(sK6,k1_relat_1(X0)) ),
    inference(instantiation,[status(thm)],[c_1403])).

cnf(c_1585,plain,
    ( r2_hidden(sK4(sK6),k1_relat_1(sK7))
    | ~ r2_hidden(sK4(sK6),sK6)
    | ~ r1_tarski(sK6,k1_relat_1(sK7)) ),
    inference(instantiation,[status(thm)],[c_1469])).

cnf(c_8,plain,
    ( m1_subset_1(sK4(X0),X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_292,plain,
    ( r2_hidden(X0,X1)
    | v1_xboole_0(X1)
    | X1 != X2
    | sK4(X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_13])).

cnf(c_293,plain,
    ( r2_hidden(sK4(X0),X0)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_292])).

cnf(c_1390,plain,
    ( r2_hidden(sK4(sK6),sK6)
    | v1_xboole_0(sK6) ),
    inference(instantiation,[status(thm)],[c_293])).

cnf(c_1364,plain,
    ( ~ v1_xboole_0(sK6)
    | k1_xboole_0 = sK6 ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_873,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_892,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_19,negated_conjecture,
    ( k9_relat_1(sK7,sK6) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_20,negated_conjecture,
    ( r1_tarski(sK6,k1_relat_1(sK7)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_21,negated_conjecture,
    ( k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f61])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4199,c_3141,c_2049,c_1842,c_1806,c_1677,c_1601,c_1585,c_1390,c_1364,c_892,c_7,c_19,c_20,c_21])).


%------------------------------------------------------------------------------
