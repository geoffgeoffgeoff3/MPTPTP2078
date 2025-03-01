%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:36 EST 2020

% Result     : Theorem 3.79s
% Output     : CNFRefutation 3.79s
% Verified   : 
% Statistics : Number of formulae       :  139 ( 274 expanded)
%              Number of clauses        :   72 ( 115 expanded)
%              Number of leaves         :   23 (  54 expanded)
%              Depth                    :   16
%              Number of atoms          :  320 ( 657 expanded)
%              Number of equality atoms :  112 ( 225 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,axiom,(
    ! [X0] : r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f98,plain,(
    ! [X0] : r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f89,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f10])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f92,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f6,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f85,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f9,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f88,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f12,axiom,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f91,plain,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f12])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f75,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f93,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f67])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f59,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f60,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f59])).

fof(f61,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f62,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f60,f61])).

fof(f76,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f62])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f69,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f42])).

fof(f100,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f69])).

fof(f20,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f104,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f20])).

fof(f30,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f30])).

fof(f117,plain,(
    ! [X0,X1] :
      ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f56])).

fof(f31,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)) ) ),
    inference(negated_conjecture,[],[f31])).

fof(f57,plain,(
    ? [X0] :
      ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f32])).

fof(f58,plain,(
    ? [X0] :
      ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f57])).

fof(f73,plain,
    ( ? [X0] :
        ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4))
      & l1_pre_topc(sK4)
      & v2_pre_topc(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f74,plain,
    ( k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4))
    & l1_pre_topc(sK4)
    & v2_pre_topc(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f58,f73])).

fof(f119,plain,(
    l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f74])).

fof(f23,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f108,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f23])).

fof(f25,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v1_xboole_0(X1)
           => v4_pre_topc(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f25])).

fof(f49,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f48])).

fof(f110,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(X1,X0)
      | ~ v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f118,plain,(
    v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f74])).

fof(f29,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f29])).

fof(f55,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f54])).

fof(f115,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f3,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f79,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f103,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f21,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f105,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f120,plain,(
    k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f74])).

fof(f27,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f27])).

fof(f112,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f26,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => u1_struct_0(X0) = k2_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] :
      ( u1_struct_0(X0) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f26])).

fof(f111,plain,(
    ! [X0] :
      ( u1_struct_0(X0) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_22,plain,
    ( r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_1976,plain,
    ( r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_13,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1982,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_16,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0 ),
    inference(cnf_transformation,[],[f92])).

cnf(c_1979,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_4134,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k1_xboole_0),k1_xboole_0) = X0 ),
    inference(superposition,[status(thm)],[c_1982,c_1979])).

cnf(c_10,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_4138,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_4134,c_10])).

cnf(c_12,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f88])).

cnf(c_15,plain,
    ( r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1980,plain,
    ( r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_3575,plain,
    ( r1_xboole_0(k1_xboole_0,k4_xboole_0(X0,k1_xboole_0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_12,c_1980])).

cnf(c_4136,plain,
    ( k4_xboole_0(k2_xboole_0(k1_xboole_0,k4_xboole_0(X0,k1_xboole_0)),k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3575,c_1979])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_2523,plain,
    ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_10,c_0])).

cnf(c_4137,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k1_xboole_0),k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4136,c_2523])).

cnf(c_4139,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4138,c_4137])).

cnf(c_18,plain,
    ( r2_hidden(X0,X1)
    | k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1977,plain,
    ( k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0
    | r2_hidden(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4615,plain,
    ( r2_hidden(X0,k1_tarski(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4139,c_1977])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1990,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_7116,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r1_tarski(k1_tarski(X0),X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_4615,c_1990])).

cnf(c_13661,plain,
    ( r2_hidden(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1976,c_7116])).

cnf(c_25,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_1973,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_14051,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_13661,c_1973])).

cnf(c_28,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_86,plain,
    ( v1_xboole_0(k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_14117,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_14051,c_86])).

cnf(c_41,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f117])).

cnf(c_43,negated_conjecture,
    ( l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f119])).

cnf(c_611,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_41,c_43])).

cnf(c_612,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | k3_subset_1(u1_struct_0(sK4),k2_pre_topc(sK4,k3_subset_1(u1_struct_0(sK4),X0))) = k1_tops_1(sK4,X0) ),
    inference(unflattening,[status(thm)],[c_611])).

cnf(c_1963,plain,
    ( k3_subset_1(u1_struct_0(sK4),k2_pre_topc(sK4,k3_subset_1(u1_struct_0(sK4),X0))) = k1_tops_1(sK4,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_612])).

cnf(c_14128,plain,
    ( k3_subset_1(u1_struct_0(sK4),k2_pre_topc(sK4,k3_subset_1(u1_struct_0(sK4),u1_struct_0(sK4)))) = k1_tops_1(sK4,u1_struct_0(sK4)) ),
    inference(superposition,[status(thm)],[c_14117,c_1963])).

cnf(c_32,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f108])).

cnf(c_1966,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_34,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f110])).

cnf(c_44,negated_conjecture,
    ( v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f118])).

cnf(c_573,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ v1_xboole_0(X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_34,c_44])).

cnf(c_574,plain,
    ( v4_pre_topc(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ l1_pre_topc(sK4)
    | ~ v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_573])).

cnf(c_578,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | v4_pre_topc(X0,sK4)
    | ~ v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_574,c_43])).

cnf(c_579,plain,
    ( v4_pre_topc(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v1_xboole_0(X0) ),
    inference(renaming,[status(thm)],[c_578])).

cnf(c_40,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f115])).

cnf(c_623,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_pre_topc(X1,X0) = X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_40,c_43])).

cnf(c_624,plain,
    ( ~ v4_pre_topc(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | k2_pre_topc(sK4,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_623])).

cnf(c_646,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v1_xboole_0(X0)
    | k2_pre_topc(sK4,X0) = X0 ),
    inference(resolution,[status(thm)],[c_579,c_624])).

cnf(c_1962,plain,
    ( k2_pre_topc(sK4,X0) = X0
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_646])).

cnf(c_2798,plain,
    ( k2_pre_topc(sK4,k1_xboole_0) = k1_xboole_0
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1966,c_1962])).

cnf(c_4,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_648,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v1_xboole_0(k1_xboole_0)
    | k2_pre_topc(sK4,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_646])).

cnf(c_2128,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(instantiation,[status(thm)],[c_32])).

cnf(c_2919,plain,
    ( k2_pre_topc(sK4,k1_xboole_0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2798,c_4,c_648,c_2128])).

cnf(c_27,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f103])).

cnf(c_1971,plain,
    ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_5308,plain,
    ( k3_subset_1(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_1966,c_1971])).

cnf(c_5310,plain,
    ( k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_5308,c_4138])).

cnf(c_29,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f105])).

cnf(c_1969,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_4739,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1966,c_1969])).

cnf(c_10896,plain,
    ( k3_subset_1(X0,X0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5310,c_4739])).

cnf(c_14135,plain,
    ( k1_tops_1(sK4,u1_struct_0(sK4)) = u1_struct_0(sK4) ),
    inference(demodulation,[status(thm)],[c_14128,c_2919,c_5310,c_10896])).

cnf(c_42,negated_conjecture,
    ( k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f120])).

cnf(c_36,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f112])).

cnf(c_35,plain,
    ( ~ l1_struct_0(X0)
    | k2_struct_0(X0) = u1_struct_0(X0) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_516,plain,
    ( ~ l1_pre_topc(X0)
    | k2_struct_0(X0) = u1_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_36,c_35])).

cnf(c_606,plain,
    ( k2_struct_0(X0) = u1_struct_0(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_516,c_43])).

cnf(c_607,plain,
    ( k2_struct_0(sK4) = u1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_606])).

cnf(c_1993,plain,
    ( k1_tops_1(sK4,u1_struct_0(sK4)) != u1_struct_0(sK4) ),
    inference(light_normalisation,[status(thm)],[c_42,c_607])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_14135,c_1993])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n007.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:19:21 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.79/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.79/0.98  
% 3.79/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.79/0.98  
% 3.79/0.98  ------  iProver source info
% 3.79/0.98  
% 3.79/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.79/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.79/0.98  git: non_committed_changes: false
% 3.79/0.98  git: last_make_outside_of_git: false
% 3.79/0.98  
% 3.79/0.98  ------ 
% 3.79/0.98  
% 3.79/0.98  ------ Input Options
% 3.79/0.98  
% 3.79/0.98  --out_options                           all
% 3.79/0.98  --tptp_safe_out                         true
% 3.79/0.98  --problem_path                          ""
% 3.79/0.98  --include_path                          ""
% 3.79/0.98  --clausifier                            res/vclausify_rel
% 3.79/0.98  --clausifier_options                    ""
% 3.79/0.98  --stdin                                 false
% 3.79/0.98  --stats_out                             all
% 3.79/0.98  
% 3.79/0.98  ------ General Options
% 3.79/0.98  
% 3.79/0.98  --fof                                   false
% 3.79/0.98  --time_out_real                         305.
% 3.79/0.98  --time_out_virtual                      -1.
% 3.79/0.98  --symbol_type_check                     false
% 3.79/0.98  --clausify_out                          false
% 3.79/0.98  --sig_cnt_out                           false
% 3.79/0.98  --trig_cnt_out                          false
% 3.79/0.98  --trig_cnt_out_tolerance                1.
% 3.79/0.98  --trig_cnt_out_sk_spl                   false
% 3.79/0.98  --abstr_cl_out                          false
% 3.79/0.98  
% 3.79/0.98  ------ Global Options
% 3.79/0.98  
% 3.79/0.98  --schedule                              default
% 3.79/0.98  --add_important_lit                     false
% 3.79/0.98  --prop_solver_per_cl                    1000
% 3.79/0.98  --min_unsat_core                        false
% 3.79/0.98  --soft_assumptions                      false
% 3.79/0.98  --soft_lemma_size                       3
% 3.79/0.98  --prop_impl_unit_size                   0
% 3.79/0.98  --prop_impl_unit                        []
% 3.79/0.98  --share_sel_clauses                     true
% 3.79/0.98  --reset_solvers                         false
% 3.79/0.98  --bc_imp_inh                            [conj_cone]
% 3.79/0.98  --conj_cone_tolerance                   3.
% 3.79/0.98  --extra_neg_conj                        none
% 3.79/0.98  --large_theory_mode                     true
% 3.79/0.98  --prolific_symb_bound                   200
% 3.79/0.98  --lt_threshold                          2000
% 3.79/0.98  --clause_weak_htbl                      true
% 3.79/0.98  --gc_record_bc_elim                     false
% 3.79/0.98  
% 3.79/0.98  ------ Preprocessing Options
% 3.79/0.98  
% 3.79/0.98  --preprocessing_flag                    true
% 3.79/0.98  --time_out_prep_mult                    0.1
% 3.79/0.98  --splitting_mode                        input
% 3.79/0.98  --splitting_grd                         true
% 3.79/0.98  --splitting_cvd                         false
% 3.79/0.98  --splitting_cvd_svl                     false
% 3.79/0.98  --splitting_nvd                         32
% 3.79/0.98  --sub_typing                            true
% 3.79/0.98  --prep_gs_sim                           true
% 3.79/0.98  --prep_unflatten                        true
% 3.79/0.98  --prep_res_sim                          true
% 3.79/0.98  --prep_upred                            true
% 3.79/0.98  --prep_sem_filter                       exhaustive
% 3.79/0.98  --prep_sem_filter_out                   false
% 3.79/0.98  --pred_elim                             true
% 3.79/0.98  --res_sim_input                         true
% 3.79/0.98  --eq_ax_congr_red                       true
% 3.79/0.98  --pure_diseq_elim                       true
% 3.79/0.98  --brand_transform                       false
% 3.79/0.98  --non_eq_to_eq                          false
% 3.79/0.98  --prep_def_merge                        true
% 3.79/0.98  --prep_def_merge_prop_impl              false
% 3.79/0.98  --prep_def_merge_mbd                    true
% 3.79/0.98  --prep_def_merge_tr_red                 false
% 3.79/0.98  --prep_def_merge_tr_cl                  false
% 3.79/0.98  --smt_preprocessing                     true
% 3.79/0.98  --smt_ac_axioms                         fast
% 3.79/0.98  --preprocessed_out                      false
% 3.79/0.98  --preprocessed_stats                    false
% 3.79/0.98  
% 3.79/0.98  ------ Abstraction refinement Options
% 3.79/0.98  
% 3.79/0.98  --abstr_ref                             []
% 3.79/0.98  --abstr_ref_prep                        false
% 3.79/0.98  --abstr_ref_until_sat                   false
% 3.79/0.98  --abstr_ref_sig_restrict                funpre
% 3.79/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.79/0.98  --abstr_ref_under                       []
% 3.79/0.98  
% 3.79/0.98  ------ SAT Options
% 3.79/0.98  
% 3.79/0.98  --sat_mode                              false
% 3.79/0.98  --sat_fm_restart_options                ""
% 3.79/0.98  --sat_gr_def                            false
% 3.79/0.98  --sat_epr_types                         true
% 3.79/0.98  --sat_non_cyclic_types                  false
% 3.79/0.98  --sat_finite_models                     false
% 3.79/0.98  --sat_fm_lemmas                         false
% 3.79/0.98  --sat_fm_prep                           false
% 3.79/0.98  --sat_fm_uc_incr                        true
% 3.79/0.98  --sat_out_model                         small
% 3.79/0.98  --sat_out_clauses                       false
% 3.79/0.98  
% 3.79/0.98  ------ QBF Options
% 3.79/0.98  
% 3.79/0.98  --qbf_mode                              false
% 3.79/0.98  --qbf_elim_univ                         false
% 3.79/0.98  --qbf_dom_inst                          none
% 3.79/0.98  --qbf_dom_pre_inst                      false
% 3.79/0.98  --qbf_sk_in                             false
% 3.79/0.98  --qbf_pred_elim                         true
% 3.79/0.98  --qbf_split                             512
% 3.79/0.98  
% 3.79/0.98  ------ BMC1 Options
% 3.79/0.98  
% 3.79/0.98  --bmc1_incremental                      false
% 3.79/0.98  --bmc1_axioms                           reachable_all
% 3.79/0.98  --bmc1_min_bound                        0
% 3.79/0.98  --bmc1_max_bound                        -1
% 3.79/0.98  --bmc1_max_bound_default                -1
% 3.79/0.98  --bmc1_symbol_reachability              true
% 3.79/0.98  --bmc1_property_lemmas                  false
% 3.79/0.98  --bmc1_k_induction                      false
% 3.79/0.98  --bmc1_non_equiv_states                 false
% 3.79/0.98  --bmc1_deadlock                         false
% 3.79/0.98  --bmc1_ucm                              false
% 3.79/0.98  --bmc1_add_unsat_core                   none
% 3.79/0.98  --bmc1_unsat_core_children              false
% 3.79/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.79/0.98  --bmc1_out_stat                         full
% 3.79/0.98  --bmc1_ground_init                      false
% 3.79/0.98  --bmc1_pre_inst_next_state              false
% 3.79/0.98  --bmc1_pre_inst_state                   false
% 3.79/0.98  --bmc1_pre_inst_reach_state             false
% 3.79/0.98  --bmc1_out_unsat_core                   false
% 3.79/0.98  --bmc1_aig_witness_out                  false
% 3.79/0.98  --bmc1_verbose                          false
% 3.79/0.98  --bmc1_dump_clauses_tptp                false
% 3.79/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.79/0.98  --bmc1_dump_file                        -
% 3.79/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.79/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.79/0.98  --bmc1_ucm_extend_mode                  1
% 3.79/0.98  --bmc1_ucm_init_mode                    2
% 3.79/0.98  --bmc1_ucm_cone_mode                    none
% 3.79/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.79/0.98  --bmc1_ucm_relax_model                  4
% 3.79/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.79/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.79/0.98  --bmc1_ucm_layered_model                none
% 3.79/0.98  --bmc1_ucm_max_lemma_size               10
% 3.79/0.98  
% 3.79/0.98  ------ AIG Options
% 3.79/0.98  
% 3.79/0.98  --aig_mode                              false
% 3.79/0.98  
% 3.79/0.98  ------ Instantiation Options
% 3.79/0.98  
% 3.79/0.98  --instantiation_flag                    true
% 3.79/0.98  --inst_sos_flag                         true
% 3.79/0.98  --inst_sos_phase                        true
% 3.79/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.79/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.79/0.98  --inst_lit_sel_side                     num_symb
% 3.79/0.98  --inst_solver_per_active                1400
% 3.79/0.98  --inst_solver_calls_frac                1.
% 3.79/0.98  --inst_passive_queue_type               priority_queues
% 3.79/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.79/0.98  --inst_passive_queues_freq              [25;2]
% 3.79/0.98  --inst_dismatching                      true
% 3.79/0.98  --inst_eager_unprocessed_to_passive     true
% 3.79/0.98  --inst_prop_sim_given                   true
% 3.79/0.98  --inst_prop_sim_new                     false
% 3.79/0.98  --inst_subs_new                         false
% 3.79/0.98  --inst_eq_res_simp                      false
% 3.79/0.98  --inst_subs_given                       false
% 3.79/0.98  --inst_orphan_elimination               true
% 3.79/0.98  --inst_learning_loop_flag               true
% 3.79/0.98  --inst_learning_start                   3000
% 3.79/0.98  --inst_learning_factor                  2
% 3.79/0.98  --inst_start_prop_sim_after_learn       3
% 3.79/0.98  --inst_sel_renew                        solver
% 3.79/0.98  --inst_lit_activity_flag                true
% 3.79/0.98  --inst_restr_to_given                   false
% 3.79/0.98  --inst_activity_threshold               500
% 3.79/0.98  --inst_out_proof                        true
% 3.79/0.98  
% 3.79/0.98  ------ Resolution Options
% 3.79/0.98  
% 3.79/0.98  --resolution_flag                       true
% 3.79/0.98  --res_lit_sel                           adaptive
% 3.79/0.98  --res_lit_sel_side                      none
% 3.79/0.98  --res_ordering                          kbo
% 3.79/0.98  --res_to_prop_solver                    active
% 3.79/0.98  --res_prop_simpl_new                    false
% 3.79/0.98  --res_prop_simpl_given                  true
% 3.79/0.98  --res_passive_queue_type                priority_queues
% 3.79/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.79/0.98  --res_passive_queues_freq               [15;5]
% 3.79/0.98  --res_forward_subs                      full
% 3.79/0.98  --res_backward_subs                     full
% 3.79/0.98  --res_forward_subs_resolution           true
% 3.79/0.98  --res_backward_subs_resolution          true
% 3.79/0.98  --res_orphan_elimination                true
% 3.79/0.98  --res_time_limit                        2.
% 3.79/0.98  --res_out_proof                         true
% 3.79/0.98  
% 3.79/0.98  ------ Superposition Options
% 3.79/0.98  
% 3.79/0.98  --superposition_flag                    true
% 3.79/0.98  --sup_passive_queue_type                priority_queues
% 3.79/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.79/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.79/0.98  --demod_completeness_check              fast
% 3.79/0.98  --demod_use_ground                      true
% 3.79/0.98  --sup_to_prop_solver                    passive
% 3.79/0.98  --sup_prop_simpl_new                    true
% 3.79/0.98  --sup_prop_simpl_given                  true
% 3.79/0.98  --sup_fun_splitting                     true
% 3.79/0.98  --sup_smt_interval                      50000
% 3.79/0.98  
% 3.79/0.98  ------ Superposition Simplification Setup
% 3.79/0.98  
% 3.79/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.79/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.79/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.79/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.79/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.79/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.79/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.79/0.98  --sup_immed_triv                        [TrivRules]
% 3.79/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.79/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.79/0.98  --sup_immed_bw_main                     []
% 3.79/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.79/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.79/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.79/0.98  --sup_input_bw                          []
% 3.79/0.98  
% 3.79/0.98  ------ Combination Options
% 3.79/0.98  
% 3.79/0.98  --comb_res_mult                         3
% 3.79/0.98  --comb_sup_mult                         2
% 3.79/0.98  --comb_inst_mult                        10
% 3.79/0.98  
% 3.79/0.98  ------ Debug Options
% 3.79/0.98  
% 3.79/0.98  --dbg_backtrace                         false
% 3.79/0.98  --dbg_dump_prop_clauses                 false
% 3.79/0.98  --dbg_dump_prop_clauses_file            -
% 3.79/0.98  --dbg_out_stat                          false
% 3.79/0.98  ------ Parsing...
% 3.79/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.79/0.98  
% 3.79/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.79/0.98  
% 3.79/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.79/0.98  
% 3.79/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.79/0.98  ------ Proving...
% 3.79/0.98  ------ Problem Properties 
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  clauses                                 40
% 3.79/0.98  conjectures                             1
% 3.79/0.98  EPR                                     9
% 3.79/0.98  Horn                                    33
% 3.79/0.98  unary                                   15
% 3.79/0.98  binary                                  14
% 3.79/0.98  lits                                    79
% 3.79/0.98  lits eq                                 20
% 3.79/0.98  fd_pure                                 0
% 3.79/0.98  fd_pseudo                               0
% 3.79/0.98  fd_cond                                 0
% 3.79/0.98  fd_pseudo_cond                          3
% 3.79/0.98  AC symbols                              0
% 3.79/0.98  
% 3.79/0.98  ------ Schedule dynamic 5 is on 
% 3.79/0.98  
% 3.79/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  ------ 
% 3.79/0.98  Current options:
% 3.79/0.98  ------ 
% 3.79/0.98  
% 3.79/0.98  ------ Input Options
% 3.79/0.98  
% 3.79/0.98  --out_options                           all
% 3.79/0.98  --tptp_safe_out                         true
% 3.79/0.98  --problem_path                          ""
% 3.79/0.98  --include_path                          ""
% 3.79/0.98  --clausifier                            res/vclausify_rel
% 3.79/0.98  --clausifier_options                    ""
% 3.79/0.98  --stdin                                 false
% 3.79/0.98  --stats_out                             all
% 3.79/0.98  
% 3.79/0.98  ------ General Options
% 3.79/0.98  
% 3.79/0.98  --fof                                   false
% 3.79/0.98  --time_out_real                         305.
% 3.79/0.98  --time_out_virtual                      -1.
% 3.79/0.98  --symbol_type_check                     false
% 3.79/0.98  --clausify_out                          false
% 3.79/0.98  --sig_cnt_out                           false
% 3.79/0.98  --trig_cnt_out                          false
% 3.79/0.98  --trig_cnt_out_tolerance                1.
% 3.79/0.98  --trig_cnt_out_sk_spl                   false
% 3.79/0.98  --abstr_cl_out                          false
% 3.79/0.98  
% 3.79/0.98  ------ Global Options
% 3.79/0.98  
% 3.79/0.98  --schedule                              default
% 3.79/0.98  --add_important_lit                     false
% 3.79/0.98  --prop_solver_per_cl                    1000
% 3.79/0.98  --min_unsat_core                        false
% 3.79/0.98  --soft_assumptions                      false
% 3.79/0.98  --soft_lemma_size                       3
% 3.79/0.98  --prop_impl_unit_size                   0
% 3.79/0.98  --prop_impl_unit                        []
% 3.79/0.98  --share_sel_clauses                     true
% 3.79/0.98  --reset_solvers                         false
% 3.79/0.98  --bc_imp_inh                            [conj_cone]
% 3.79/0.98  --conj_cone_tolerance                   3.
% 3.79/0.98  --extra_neg_conj                        none
% 3.79/0.98  --large_theory_mode                     true
% 3.79/0.98  --prolific_symb_bound                   200
% 3.79/0.98  --lt_threshold                          2000
% 3.79/0.98  --clause_weak_htbl                      true
% 3.79/0.98  --gc_record_bc_elim                     false
% 3.79/0.98  
% 3.79/0.98  ------ Preprocessing Options
% 3.79/0.98  
% 3.79/0.98  --preprocessing_flag                    true
% 3.79/0.98  --time_out_prep_mult                    0.1
% 3.79/0.98  --splitting_mode                        input
% 3.79/0.98  --splitting_grd                         true
% 3.79/0.98  --splitting_cvd                         false
% 3.79/0.98  --splitting_cvd_svl                     false
% 3.79/0.98  --splitting_nvd                         32
% 3.79/0.98  --sub_typing                            true
% 3.79/0.98  --prep_gs_sim                           true
% 3.79/0.98  --prep_unflatten                        true
% 3.79/0.98  --prep_res_sim                          true
% 3.79/0.98  --prep_upred                            true
% 3.79/0.98  --prep_sem_filter                       exhaustive
% 3.79/0.98  --prep_sem_filter_out                   false
% 3.79/0.98  --pred_elim                             true
% 3.79/0.98  --res_sim_input                         true
% 3.79/0.98  --eq_ax_congr_red                       true
% 3.79/0.98  --pure_diseq_elim                       true
% 3.79/0.98  --brand_transform                       false
% 3.79/0.98  --non_eq_to_eq                          false
% 3.79/0.98  --prep_def_merge                        true
% 3.79/0.98  --prep_def_merge_prop_impl              false
% 3.79/0.98  --prep_def_merge_mbd                    true
% 3.79/0.98  --prep_def_merge_tr_red                 false
% 3.79/0.98  --prep_def_merge_tr_cl                  false
% 3.79/0.98  --smt_preprocessing                     true
% 3.79/0.98  --smt_ac_axioms                         fast
% 3.79/0.98  --preprocessed_out                      false
% 3.79/0.98  --preprocessed_stats                    false
% 3.79/0.98  
% 3.79/0.98  ------ Abstraction refinement Options
% 3.79/0.98  
% 3.79/0.98  --abstr_ref                             []
% 3.79/0.98  --abstr_ref_prep                        false
% 3.79/0.98  --abstr_ref_until_sat                   false
% 3.79/0.98  --abstr_ref_sig_restrict                funpre
% 3.79/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.79/0.98  --abstr_ref_under                       []
% 3.79/0.98  
% 3.79/0.98  ------ SAT Options
% 3.79/0.98  
% 3.79/0.98  --sat_mode                              false
% 3.79/0.98  --sat_fm_restart_options                ""
% 3.79/0.98  --sat_gr_def                            false
% 3.79/0.98  --sat_epr_types                         true
% 3.79/0.98  --sat_non_cyclic_types                  false
% 3.79/0.98  --sat_finite_models                     false
% 3.79/0.98  --sat_fm_lemmas                         false
% 3.79/0.98  --sat_fm_prep                           false
% 3.79/0.98  --sat_fm_uc_incr                        true
% 3.79/0.98  --sat_out_model                         small
% 3.79/0.98  --sat_out_clauses                       false
% 3.79/0.98  
% 3.79/0.98  ------ QBF Options
% 3.79/0.98  
% 3.79/0.98  --qbf_mode                              false
% 3.79/0.98  --qbf_elim_univ                         false
% 3.79/0.98  --qbf_dom_inst                          none
% 3.79/0.98  --qbf_dom_pre_inst                      false
% 3.79/0.98  --qbf_sk_in                             false
% 3.79/0.98  --qbf_pred_elim                         true
% 3.79/0.98  --qbf_split                             512
% 3.79/0.98  
% 3.79/0.98  ------ BMC1 Options
% 3.79/0.98  
% 3.79/0.98  --bmc1_incremental                      false
% 3.79/0.98  --bmc1_axioms                           reachable_all
% 3.79/0.98  --bmc1_min_bound                        0
% 3.79/0.98  --bmc1_max_bound                        -1
% 3.79/0.98  --bmc1_max_bound_default                -1
% 3.79/0.98  --bmc1_symbol_reachability              true
% 3.79/0.98  --bmc1_property_lemmas                  false
% 3.79/0.98  --bmc1_k_induction                      false
% 3.79/0.98  --bmc1_non_equiv_states                 false
% 3.79/0.98  --bmc1_deadlock                         false
% 3.79/0.98  --bmc1_ucm                              false
% 3.79/0.98  --bmc1_add_unsat_core                   none
% 3.79/0.98  --bmc1_unsat_core_children              false
% 3.79/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.79/0.98  --bmc1_out_stat                         full
% 3.79/0.98  --bmc1_ground_init                      false
% 3.79/0.98  --bmc1_pre_inst_next_state              false
% 3.79/0.98  --bmc1_pre_inst_state                   false
% 3.79/0.98  --bmc1_pre_inst_reach_state             false
% 3.79/0.98  --bmc1_out_unsat_core                   false
% 3.79/0.98  --bmc1_aig_witness_out                  false
% 3.79/0.98  --bmc1_verbose                          false
% 3.79/0.98  --bmc1_dump_clauses_tptp                false
% 3.79/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.79/0.98  --bmc1_dump_file                        -
% 3.79/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.79/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.79/0.98  --bmc1_ucm_extend_mode                  1
% 3.79/0.98  --bmc1_ucm_init_mode                    2
% 3.79/0.98  --bmc1_ucm_cone_mode                    none
% 3.79/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.79/0.98  --bmc1_ucm_relax_model                  4
% 3.79/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.79/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.79/0.98  --bmc1_ucm_layered_model                none
% 3.79/0.98  --bmc1_ucm_max_lemma_size               10
% 3.79/0.98  
% 3.79/0.98  ------ AIG Options
% 3.79/0.98  
% 3.79/0.98  --aig_mode                              false
% 3.79/0.98  
% 3.79/0.98  ------ Instantiation Options
% 3.79/0.98  
% 3.79/0.98  --instantiation_flag                    true
% 3.79/0.98  --inst_sos_flag                         true
% 3.79/0.98  --inst_sos_phase                        true
% 3.79/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.79/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.79/0.98  --inst_lit_sel_side                     none
% 3.79/0.98  --inst_solver_per_active                1400
% 3.79/0.98  --inst_solver_calls_frac                1.
% 3.79/0.98  --inst_passive_queue_type               priority_queues
% 3.79/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.79/0.98  --inst_passive_queues_freq              [25;2]
% 3.79/0.98  --inst_dismatching                      true
% 3.79/0.98  --inst_eager_unprocessed_to_passive     true
% 3.79/0.98  --inst_prop_sim_given                   true
% 3.79/0.98  --inst_prop_sim_new                     false
% 3.79/0.98  --inst_subs_new                         false
% 3.79/0.98  --inst_eq_res_simp                      false
% 3.79/0.98  --inst_subs_given                       false
% 3.79/0.98  --inst_orphan_elimination               true
% 3.79/0.98  --inst_learning_loop_flag               true
% 3.79/0.98  --inst_learning_start                   3000
% 3.79/0.98  --inst_learning_factor                  2
% 3.79/0.98  --inst_start_prop_sim_after_learn       3
% 3.79/0.98  --inst_sel_renew                        solver
% 3.79/0.98  --inst_lit_activity_flag                true
% 3.79/0.98  --inst_restr_to_given                   false
% 3.79/0.98  --inst_activity_threshold               500
% 3.79/0.98  --inst_out_proof                        true
% 3.79/0.98  
% 3.79/0.98  ------ Resolution Options
% 3.79/0.98  
% 3.79/0.98  --resolution_flag                       false
% 3.79/0.98  --res_lit_sel                           adaptive
% 3.79/0.98  --res_lit_sel_side                      none
% 3.79/0.98  --res_ordering                          kbo
% 3.79/0.98  --res_to_prop_solver                    active
% 3.79/0.98  --res_prop_simpl_new                    false
% 3.79/0.98  --res_prop_simpl_given                  true
% 3.79/0.98  --res_passive_queue_type                priority_queues
% 3.79/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.79/0.98  --res_passive_queues_freq               [15;5]
% 3.79/0.98  --res_forward_subs                      full
% 3.79/0.98  --res_backward_subs                     full
% 3.79/0.98  --res_forward_subs_resolution           true
% 3.79/0.98  --res_backward_subs_resolution          true
% 3.79/0.98  --res_orphan_elimination                true
% 3.79/0.98  --res_time_limit                        2.
% 3.79/0.98  --res_out_proof                         true
% 3.79/0.98  
% 3.79/0.98  ------ Superposition Options
% 3.79/0.98  
% 3.79/0.98  --superposition_flag                    true
% 3.79/0.98  --sup_passive_queue_type                priority_queues
% 3.79/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.79/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.79/0.98  --demod_completeness_check              fast
% 3.79/0.98  --demod_use_ground                      true
% 3.79/0.98  --sup_to_prop_solver                    passive
% 3.79/0.98  --sup_prop_simpl_new                    true
% 3.79/0.98  --sup_prop_simpl_given                  true
% 3.79/0.98  --sup_fun_splitting                     true
% 3.79/0.98  --sup_smt_interval                      50000
% 3.79/0.98  
% 3.79/0.98  ------ Superposition Simplification Setup
% 3.79/0.98  
% 3.79/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.79/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.79/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.79/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.79/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.79/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.79/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.79/0.98  --sup_immed_triv                        [TrivRules]
% 3.79/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.79/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.79/0.98  --sup_immed_bw_main                     []
% 3.79/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.79/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.79/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.79/0.98  --sup_input_bw                          []
% 3.79/0.98  
% 3.79/0.98  ------ Combination Options
% 3.79/0.98  
% 3.79/0.98  --comb_res_mult                         3
% 3.79/0.98  --comb_sup_mult                         2
% 3.79/0.98  --comb_inst_mult                        10
% 3.79/0.98  
% 3.79/0.98  ------ Debug Options
% 3.79/0.98  
% 3.79/0.98  --dbg_backtrace                         false
% 3.79/0.98  --dbg_dump_prop_clauses                 false
% 3.79/0.98  --dbg_dump_prop_clauses_file            -
% 3.79/0.98  --dbg_out_stat                          false
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  ------ Proving...
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  % SZS status Theorem for theBenchmark.p
% 3.79/0.98  
% 3.79/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.79/0.98  
% 3.79/0.98  fof(f17,axiom,(
% 3.79/0.98    ! [X0] : r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f98,plain,(
% 3.79/0.98    ( ! [X0] : (r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0))) )),
% 3.79/0.98    inference(cnf_transformation,[],[f17])).
% 3.79/0.98  
% 3.79/0.98  fof(f10,axiom,(
% 3.79/0.98    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f89,plain,(
% 3.79/0.98    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f10])).
% 3.79/0.98  
% 3.79/0.98  fof(f13,axiom,(
% 3.79/0.98    ! [X0,X1] : (r1_xboole_0(X0,X1) => k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0)),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f40,plain,(
% 3.79/0.98    ! [X0,X1] : (k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0 | ~r1_xboole_0(X0,X1))),
% 3.79/0.98    inference(ennf_transformation,[],[f13])).
% 3.79/0.98  
% 3.79/0.98  fof(f92,plain,(
% 3.79/0.98    ( ! [X0,X1] : (k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f40])).
% 3.79/0.98  
% 3.79/0.98  fof(f6,axiom,(
% 3.79/0.98    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f85,plain,(
% 3.79/0.98    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.79/0.98    inference(cnf_transformation,[],[f6])).
% 3.79/0.98  
% 3.79/0.98  fof(f9,axiom,(
% 3.79/0.98    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f88,plain,(
% 3.79/0.98    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f9])).
% 3.79/0.98  
% 3.79/0.98  fof(f12,axiom,(
% 3.79/0.98    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f91,plain,(
% 3.79/0.98    ( ! [X0,X1] : (r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))) )),
% 3.79/0.98    inference(cnf_transformation,[],[f12])).
% 3.79/0.98  
% 3.79/0.98  fof(f1,axiom,(
% 3.79/0.98    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f75,plain,(
% 3.79/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f1])).
% 3.79/0.98  
% 3.79/0.98  fof(f14,axiom,(
% 3.79/0.98    ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f67,plain,(
% 3.79/0.98    ! [X0,X1] : ((k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1)))),
% 3.79/0.98    inference(nnf_transformation,[],[f14])).
% 3.79/0.98  
% 3.79/0.98  fof(f93,plain,(
% 3.79/0.98    ( ! [X0,X1] : (r2_hidden(X0,X1) | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f67])).
% 3.79/0.98  
% 3.79/0.98  fof(f2,axiom,(
% 3.79/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f35,plain,(
% 3.79/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.79/0.98    inference(ennf_transformation,[],[f2])).
% 3.79/0.98  
% 3.79/0.98  fof(f59,plain,(
% 3.79/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.79/0.98    inference(nnf_transformation,[],[f35])).
% 3.79/0.98  
% 3.79/0.98  fof(f60,plain,(
% 3.79/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.79/0.98    inference(rectify,[],[f59])).
% 3.79/0.98  
% 3.79/0.98  fof(f61,plain,(
% 3.79/0.98    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 3.79/0.98    introduced(choice_axiom,[])).
% 3.79/0.98  
% 3.79/0.98  fof(f62,plain,(
% 3.79/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.79/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f60,f61])).
% 3.79/0.98  
% 3.79/0.98  fof(f76,plain,(
% 3.79/0.98    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f62])).
% 3.79/0.98  
% 3.79/0.98  fof(f18,axiom,(
% 3.79/0.98    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f42,plain,(
% 3.79/0.98    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.79/0.98    inference(ennf_transformation,[],[f18])).
% 3.79/0.98  
% 3.79/0.98  fof(f69,plain,(
% 3.79/0.98    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.79/0.98    inference(nnf_transformation,[],[f42])).
% 3.79/0.98  
% 3.79/0.98  fof(f100,plain,(
% 3.79/0.98    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f69])).
% 3.79/0.98  
% 3.79/0.98  fof(f20,axiom,(
% 3.79/0.98    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f104,plain,(
% 3.79/0.98    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 3.79/0.98    inference(cnf_transformation,[],[f20])).
% 3.79/0.98  
% 3.79/0.98  fof(f30,axiom,(
% 3.79/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f56,plain,(
% 3.79/0.98    ! [X0] : (! [X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.79/0.98    inference(ennf_transformation,[],[f30])).
% 3.79/0.98  
% 3.79/0.98  fof(f117,plain,(
% 3.79/0.98    ( ! [X0,X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f56])).
% 3.79/0.98  
% 3.79/0.98  fof(f31,conjecture,(
% 3.79/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f32,negated_conjecture,(
% 3.79/0.98    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)))),
% 3.79/0.98    inference(negated_conjecture,[],[f31])).
% 3.79/0.98  
% 3.79/0.98  fof(f57,plain,(
% 3.79/0.98    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 3.79/0.98    inference(ennf_transformation,[],[f32])).
% 3.79/0.98  
% 3.79/0.98  fof(f58,plain,(
% 3.79/0.98    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 3.79/0.98    inference(flattening,[],[f57])).
% 3.79/0.98  
% 3.79/0.98  fof(f73,plain,(
% 3.79/0.98    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4)) & l1_pre_topc(sK4) & v2_pre_topc(sK4))),
% 3.79/0.98    introduced(choice_axiom,[])).
% 3.79/0.98  
% 3.79/0.98  fof(f74,plain,(
% 3.79/0.98    k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4)) & l1_pre_topc(sK4) & v2_pre_topc(sK4)),
% 3.79/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f58,f73])).
% 3.79/0.98  
% 3.79/0.98  fof(f119,plain,(
% 3.79/0.98    l1_pre_topc(sK4)),
% 3.79/0.98    inference(cnf_transformation,[],[f74])).
% 3.79/0.98  
% 3.79/0.98  fof(f23,axiom,(
% 3.79/0.98    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f108,plain,(
% 3.79/0.98    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 3.79/0.98    inference(cnf_transformation,[],[f23])).
% 3.79/0.98  
% 3.79/0.98  fof(f25,axiom,(
% 3.79/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v1_xboole_0(X1) => v4_pre_topc(X1,X0))))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f48,plain,(
% 3.79/0.98    ! [X0] : (! [X1] : ((v4_pre_topc(X1,X0) | ~v1_xboole_0(X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.79/0.98    inference(ennf_transformation,[],[f25])).
% 3.79/0.98  
% 3.79/0.98  fof(f49,plain,(
% 3.79/0.98    ! [X0] : (! [X1] : (v4_pre_topc(X1,X0) | ~v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.79/0.98    inference(flattening,[],[f48])).
% 3.79/0.98  
% 3.79/0.98  fof(f110,plain,(
% 3.79/0.98    ( ! [X0,X1] : (v4_pre_topc(X1,X0) | ~v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f49])).
% 3.79/0.98  
% 3.79/0.98  fof(f118,plain,(
% 3.79/0.98    v2_pre_topc(sK4)),
% 3.79/0.98    inference(cnf_transformation,[],[f74])).
% 3.79/0.98  
% 3.79/0.98  fof(f29,axiom,(
% 3.79/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f54,plain,(
% 3.79/0.98    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | (k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0))) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.79/0.98    inference(ennf_transformation,[],[f29])).
% 3.79/0.98  
% 3.79/0.98  fof(f55,plain,(
% 3.79/0.98    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0)) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.79/0.98    inference(flattening,[],[f54])).
% 3.79/0.98  
% 3.79/0.98  fof(f115,plain,(
% 3.79/0.98    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f55])).
% 3.79/0.98  
% 3.79/0.98  fof(f3,axiom,(
% 3.79/0.98    v1_xboole_0(k1_xboole_0)),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f79,plain,(
% 3.79/0.98    v1_xboole_0(k1_xboole_0)),
% 3.79/0.98    inference(cnf_transformation,[],[f3])).
% 3.79/0.98  
% 3.79/0.98  fof(f19,axiom,(
% 3.79/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f43,plain,(
% 3.79/0.98    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.79/0.98    inference(ennf_transformation,[],[f19])).
% 3.79/0.98  
% 3.79/0.98  fof(f103,plain,(
% 3.79/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.79/0.98    inference(cnf_transformation,[],[f43])).
% 3.79/0.98  
% 3.79/0.98  fof(f21,axiom,(
% 3.79/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f44,plain,(
% 3.79/0.98    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.79/0.98    inference(ennf_transformation,[],[f21])).
% 3.79/0.98  
% 3.79/0.98  fof(f105,plain,(
% 3.79/0.98    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.79/0.98    inference(cnf_transformation,[],[f44])).
% 3.79/0.98  
% 3.79/0.98  fof(f120,plain,(
% 3.79/0.98    k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4))),
% 3.79/0.98    inference(cnf_transformation,[],[f74])).
% 3.79/0.98  
% 3.79/0.98  fof(f27,axiom,(
% 3.79/0.98    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f51,plain,(
% 3.79/0.98    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.79/0.98    inference(ennf_transformation,[],[f27])).
% 3.79/0.98  
% 3.79/0.98  fof(f112,plain,(
% 3.79/0.98    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f51])).
% 3.79/0.98  
% 3.79/0.98  fof(f26,axiom,(
% 3.79/0.98    ! [X0] : (l1_struct_0(X0) => u1_struct_0(X0) = k2_struct_0(X0))),
% 3.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.79/0.98  
% 3.79/0.98  fof(f50,plain,(
% 3.79/0.98    ! [X0] : (u1_struct_0(X0) = k2_struct_0(X0) | ~l1_struct_0(X0))),
% 3.79/0.98    inference(ennf_transformation,[],[f26])).
% 3.79/0.98  
% 3.79/0.98  fof(f111,plain,(
% 3.79/0.98    ( ! [X0] : (u1_struct_0(X0) = k2_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.79/0.98    inference(cnf_transformation,[],[f50])).
% 3.79/0.98  
% 3.79/0.98  cnf(c_22,plain,
% 3.79/0.98      ( r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0)) ),
% 3.79/0.98      inference(cnf_transformation,[],[f98]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1976,plain,
% 3.79/0.98      ( r1_tarski(k1_tarski(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_13,plain,
% 3.79/0.98      ( r1_xboole_0(X0,k1_xboole_0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f89]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1982,plain,
% 3.79/0.98      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_16,plain,
% 3.79/0.98      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0 ),
% 3.79/0.98      inference(cnf_transformation,[],[f92]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1979,plain,
% 3.79/0.98      ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = X0
% 3.79/0.98      | r1_xboole_0(X0,X1) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4134,plain,
% 3.79/0.98      ( k4_xboole_0(k2_xboole_0(X0,k1_xboole_0),k1_xboole_0) = X0 ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_1982,c_1979]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_10,plain,
% 3.79/0.98      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.79/0.98      inference(cnf_transformation,[],[f85]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4138,plain,
% 3.79/0.98      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.79/0.98      inference(light_normalisation,[status(thm)],[c_4134,c_10]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_12,plain,
% 3.79/0.98      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.79/0.98      inference(cnf_transformation,[],[f88]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_15,plain,
% 3.79/0.98      ( r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) ),
% 3.79/0.98      inference(cnf_transformation,[],[f91]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1980,plain,
% 3.79/0.98      ( r1_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_3575,plain,
% 3.79/0.98      ( r1_xboole_0(k1_xboole_0,k4_xboole_0(X0,k1_xboole_0)) = iProver_top ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_12,c_1980]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4136,plain,
% 3.79/0.98      ( k4_xboole_0(k2_xboole_0(k1_xboole_0,k4_xboole_0(X0,k1_xboole_0)),k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_3575,c_1979]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_0,plain,
% 3.79/0.98      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f75]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_2523,plain,
% 3.79/0.98      ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_10,c_0]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4137,plain,
% 3.79/0.98      ( k4_xboole_0(k4_xboole_0(X0,k1_xboole_0),k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 3.79/0.98      inference(demodulation,[status(thm)],[c_4136,c_2523]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4139,plain,
% 3.79/0.98      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.79/0.98      inference(demodulation,[status(thm)],[c_4138,c_4137]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_18,plain,
% 3.79/0.98      ( r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 ),
% 3.79/0.98      inference(cnf_transformation,[],[f93]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1977,plain,
% 3.79/0.98      ( k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0
% 3.79/0.98      | r2_hidden(X0,X1) = iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4615,plain,
% 3.79/0.98      ( r2_hidden(X0,k1_tarski(X0)) = iProver_top ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_4139,c_1977]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_3,plain,
% 3.79/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 3.79/0.98      inference(cnf_transformation,[],[f76]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1990,plain,
% 3.79/0.98      ( r2_hidden(X0,X1) != iProver_top
% 3.79/0.98      | r2_hidden(X0,X2) = iProver_top
% 3.79/0.98      | r1_tarski(X1,X2) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_7116,plain,
% 3.79/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.79/0.98      | r1_tarski(k1_tarski(X0),X1) != iProver_top ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_4615,c_1990]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_13661,plain,
% 3.79/0.98      ( r2_hidden(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_1976,c_7116]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_25,plain,
% 3.79/0.98      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.79/0.98      inference(cnf_transformation,[],[f100]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1973,plain,
% 3.79/0.98      ( m1_subset_1(X0,X1) = iProver_top
% 3.79/0.98      | r2_hidden(X0,X1) != iProver_top
% 3.79/0.98      | v1_xboole_0(X1) = iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_14051,plain,
% 3.79/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top
% 3.79/0.98      | v1_xboole_0(k1_zfmisc_1(X0)) = iProver_top ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_13661,c_1973]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_28,plain,
% 3.79/0.98      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 3.79/0.98      inference(cnf_transformation,[],[f104]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_86,plain,
% 3.79/0.98      ( v1_xboole_0(k1_zfmisc_1(X0)) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_14117,plain,
% 3.79/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.79/0.98      inference(global_propositional_subsumption,
% 3.79/0.98                [status(thm)],
% 3.79/0.98                [c_14051,c_86]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_41,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.79/0.98      | ~ l1_pre_topc(X1)
% 3.79/0.98      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f117]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_43,negated_conjecture,
% 3.79/0.98      ( l1_pre_topc(sK4) ),
% 3.79/0.98      inference(cnf_transformation,[],[f119]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_611,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.79/0.98      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
% 3.79/0.98      | sK4 != X1 ),
% 3.79/0.98      inference(resolution_lifted,[status(thm)],[c_41,c_43]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_612,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | k3_subset_1(u1_struct_0(sK4),k2_pre_topc(sK4,k3_subset_1(u1_struct_0(sK4),X0))) = k1_tops_1(sK4,X0) ),
% 3.79/0.98      inference(unflattening,[status(thm)],[c_611]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1963,plain,
% 3.79/0.98      ( k3_subset_1(u1_struct_0(sK4),k2_pre_topc(sK4,k3_subset_1(u1_struct_0(sK4),X0))) = k1_tops_1(sK4,X0)
% 3.79/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_612]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_14128,plain,
% 3.79/0.98      ( k3_subset_1(u1_struct_0(sK4),k2_pre_topc(sK4,k3_subset_1(u1_struct_0(sK4),u1_struct_0(sK4)))) = k1_tops_1(sK4,u1_struct_0(sK4)) ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_14117,c_1963]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_32,plain,
% 3.79/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 3.79/0.98      inference(cnf_transformation,[],[f108]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1966,plain,
% 3.79/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_34,plain,
% 3.79/0.98      ( v4_pre_topc(X0,X1)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.79/0.98      | ~ v2_pre_topc(X1)
% 3.79/0.98      | ~ l1_pre_topc(X1)
% 3.79/0.98      | ~ v1_xboole_0(X0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f110]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_44,negated_conjecture,
% 3.79/0.98      ( v2_pre_topc(sK4) ),
% 3.79/0.98      inference(cnf_transformation,[],[f118]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_573,plain,
% 3.79/0.98      ( v4_pre_topc(X0,X1)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.79/0.98      | ~ l1_pre_topc(X1)
% 3.79/0.98      | ~ v1_xboole_0(X0)
% 3.79/0.98      | sK4 != X1 ),
% 3.79/0.98      inference(resolution_lifted,[status(thm)],[c_34,c_44]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_574,plain,
% 3.79/0.98      ( v4_pre_topc(X0,sK4)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | ~ l1_pre_topc(sK4)
% 3.79/0.98      | ~ v1_xboole_0(X0) ),
% 3.79/0.98      inference(unflattening,[status(thm)],[c_573]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_578,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | v4_pre_topc(X0,sK4)
% 3.79/0.98      | ~ v1_xboole_0(X0) ),
% 3.79/0.98      inference(global_propositional_subsumption,
% 3.79/0.98                [status(thm)],
% 3.79/0.98                [c_574,c_43]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_579,plain,
% 3.79/0.98      ( v4_pre_topc(X0,sK4)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | ~ v1_xboole_0(X0) ),
% 3.79/0.98      inference(renaming,[status(thm)],[c_578]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_40,plain,
% 3.79/0.98      ( ~ v4_pre_topc(X0,X1)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.79/0.98      | ~ l1_pre_topc(X1)
% 3.79/0.98      | k2_pre_topc(X1,X0) = X0 ),
% 3.79/0.98      inference(cnf_transformation,[],[f115]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_623,plain,
% 3.79/0.98      ( ~ v4_pre_topc(X0,X1)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.79/0.98      | k2_pre_topc(X1,X0) = X0
% 3.79/0.98      | sK4 != X1 ),
% 3.79/0.98      inference(resolution_lifted,[status(thm)],[c_40,c_43]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_624,plain,
% 3.79/0.98      ( ~ v4_pre_topc(X0,sK4)
% 3.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | k2_pre_topc(sK4,X0) = X0 ),
% 3.79/0.98      inference(unflattening,[status(thm)],[c_623]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_646,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | ~ v1_xboole_0(X0)
% 3.79/0.98      | k2_pre_topc(sK4,X0) = X0 ),
% 3.79/0.98      inference(resolution,[status(thm)],[c_579,c_624]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1962,plain,
% 3.79/0.98      ( k2_pre_topc(sK4,X0) = X0
% 3.79/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 3.79/0.98      | v1_xboole_0(X0) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_646]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_2798,plain,
% 3.79/0.98      ( k2_pre_topc(sK4,k1_xboole_0) = k1_xboole_0
% 3.79/0.98      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_1966,c_1962]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4,plain,
% 3.79/0.98      ( v1_xboole_0(k1_xboole_0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f79]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_648,plain,
% 3.79/0.98      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK4)))
% 3.79/0.98      | ~ v1_xboole_0(k1_xboole_0)
% 3.79/0.98      | k2_pre_topc(sK4,k1_xboole_0) = k1_xboole_0 ),
% 3.79/0.98      inference(instantiation,[status(thm)],[c_646]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_2128,plain,
% 3.79/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK4))) ),
% 3.79/0.98      inference(instantiation,[status(thm)],[c_32]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_2919,plain,
% 3.79/0.98      ( k2_pre_topc(sK4,k1_xboole_0) = k1_xboole_0 ),
% 3.79/0.98      inference(global_propositional_subsumption,
% 3.79/0.98                [status(thm)],
% 3.79/0.98                [c_2798,c_4,c_648,c_2128]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_27,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.79/0.98      | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f103]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1971,plain,
% 3.79/0.98      ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
% 3.79/0.98      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_5308,plain,
% 3.79/0.98      ( k3_subset_1(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_1966,c_1971]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_5310,plain,
% 3.79/0.98      ( k3_subset_1(X0,k1_xboole_0) = X0 ),
% 3.79/0.98      inference(light_normalisation,[status(thm)],[c_5308,c_4138]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_29,plain,
% 3.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.79/0.98      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 3.79/0.98      inference(cnf_transformation,[],[f105]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1969,plain,
% 3.79/0.98      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
% 3.79/0.98      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.79/0.98      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_4739,plain,
% 3.79/0.98      ( k3_subset_1(X0,k3_subset_1(X0,k1_xboole_0)) = k1_xboole_0 ),
% 3.79/0.98      inference(superposition,[status(thm)],[c_1966,c_1969]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_10896,plain,
% 3.79/0.98      ( k3_subset_1(X0,X0) = k1_xboole_0 ),
% 3.79/0.98      inference(demodulation,[status(thm)],[c_5310,c_4739]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_14135,plain,
% 3.79/0.98      ( k1_tops_1(sK4,u1_struct_0(sK4)) = u1_struct_0(sK4) ),
% 3.79/0.98      inference(demodulation,
% 3.79/0.98                [status(thm)],
% 3.79/0.98                [c_14128,c_2919,c_5310,c_10896]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_42,negated_conjecture,
% 3.79/0.98      ( k2_struct_0(sK4) != k1_tops_1(sK4,k2_struct_0(sK4)) ),
% 3.79/0.98      inference(cnf_transformation,[],[f120]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_36,plain,
% 3.79/0.98      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f112]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_35,plain,
% 3.79/0.98      ( ~ l1_struct_0(X0) | k2_struct_0(X0) = u1_struct_0(X0) ),
% 3.79/0.98      inference(cnf_transformation,[],[f111]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_516,plain,
% 3.79/0.98      ( ~ l1_pre_topc(X0) | k2_struct_0(X0) = u1_struct_0(X0) ),
% 3.79/0.98      inference(resolution,[status(thm)],[c_36,c_35]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_606,plain,
% 3.79/0.98      ( k2_struct_0(X0) = u1_struct_0(X0) | sK4 != X0 ),
% 3.79/0.98      inference(resolution_lifted,[status(thm)],[c_516,c_43]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_607,plain,
% 3.79/0.98      ( k2_struct_0(sK4) = u1_struct_0(sK4) ),
% 3.79/0.98      inference(unflattening,[status(thm)],[c_606]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(c_1993,plain,
% 3.79/0.98      ( k1_tops_1(sK4,u1_struct_0(sK4)) != u1_struct_0(sK4) ),
% 3.79/0.98      inference(light_normalisation,[status(thm)],[c_42,c_607]) ).
% 3.79/0.98  
% 3.79/0.98  cnf(contradiction,plain,
% 3.79/0.98      ( $false ),
% 3.79/0.98      inference(minisat,[status(thm)],[c_14135,c_1993]) ).
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.79/0.98  
% 3.79/0.98  ------                               Statistics
% 3.79/0.98  
% 3.79/0.98  ------ General
% 3.79/0.98  
% 3.79/0.98  abstr_ref_over_cycles:                  0
% 3.79/0.98  abstr_ref_under_cycles:                 0
% 3.79/0.98  gc_basic_clause_elim:                   0
% 3.79/0.98  forced_gc_time:                         0
% 3.79/0.98  parsing_time:                           0.013
% 3.79/0.98  unif_index_cands_time:                  0.
% 3.79/0.98  unif_index_add_time:                    0.
% 3.79/0.98  orderings_time:                         0.
% 3.79/0.98  out_proof_time:                         0.012
% 3.79/0.98  total_time:                             0.43
% 3.79/0.98  num_of_symbols:                         55
% 3.79/0.98  num_of_terms:                           16110
% 3.79/0.98  
% 3.79/0.98  ------ Preprocessing
% 3.79/0.98  
% 3.79/0.98  num_of_splits:                          0
% 3.79/0.98  num_of_split_atoms:                     0
% 3.79/0.98  num_of_reused_defs:                     0
% 3.79/0.98  num_eq_ax_congr_red:                    29
% 3.79/0.98  num_of_sem_filtered_clauses:            1
% 3.79/0.98  num_of_subtypes:                        0
% 3.79/0.98  monotx_restored_types:                  0
% 3.79/0.98  sat_num_of_epr_types:                   0
% 3.79/0.98  sat_num_of_non_cyclic_types:            0
% 3.79/0.98  sat_guarded_non_collapsed_types:        0
% 3.79/0.98  num_pure_diseq_elim:                    0
% 3.79/0.98  simp_replaced_by:                       0
% 3.79/0.98  res_preprocessed:                       198
% 3.79/0.98  prep_upred:                             0
% 3.79/0.98  prep_unflattend:                        42
% 3.79/0.98  smt_new_axioms:                         0
% 3.79/0.98  pred_elim_cands:                        5
% 3.79/0.98  pred_elim:                              4
% 3.79/0.98  pred_elim_cl:                           5
% 3.79/0.98  pred_elim_cycles:                       6
% 3.79/0.98  merged_defs:                            8
% 3.79/0.98  merged_defs_ncl:                        0
% 3.79/0.98  bin_hyper_res:                          8
% 3.79/0.98  prep_cycles:                            4
% 3.79/0.98  pred_elim_time:                         0.009
% 3.79/0.98  splitting_time:                         0.
% 3.79/0.98  sem_filter_time:                        0.
% 3.79/0.98  monotx_time:                            0.001
% 3.79/0.98  subtype_inf_time:                       0.
% 3.79/0.98  
% 3.79/0.98  ------ Problem properties
% 3.79/0.98  
% 3.79/0.98  clauses:                                40
% 3.79/0.98  conjectures:                            1
% 3.79/0.98  epr:                                    9
% 3.79/0.98  horn:                                   33
% 3.79/0.98  ground:                                 5
% 3.79/0.98  unary:                                  15
% 3.79/0.98  binary:                                 14
% 3.79/0.98  lits:                                   79
% 3.79/0.98  lits_eq:                                20
% 3.79/0.98  fd_pure:                                0
% 3.79/0.98  fd_pseudo:                              0
% 3.79/0.98  fd_cond:                                0
% 3.79/0.98  fd_pseudo_cond:                         3
% 3.79/0.98  ac_symbols:                             0
% 3.79/0.98  
% 3.79/0.98  ------ Propositional Solver
% 3.79/0.98  
% 3.79/0.98  prop_solver_calls:                      29
% 3.79/0.98  prop_fast_solver_calls:                 1507
% 3.79/0.98  smt_solver_calls:                       0
% 3.79/0.98  smt_fast_solver_calls:                  0
% 3.79/0.98  prop_num_of_clauses:                    5772
% 3.79/0.98  prop_preprocess_simplified:             14888
% 3.79/0.98  prop_fo_subsumed:                       20
% 3.79/0.98  prop_solver_time:                       0.
% 3.79/0.98  smt_solver_time:                        0.
% 3.79/0.98  smt_fast_solver_time:                   0.
% 3.79/0.98  prop_fast_solver_time:                  0.
% 3.79/0.98  prop_unsat_core_time:                   0.
% 3.79/0.98  
% 3.79/0.98  ------ QBF
% 3.79/0.98  
% 3.79/0.98  qbf_q_res:                              0
% 3.79/0.98  qbf_num_tautologies:                    0
% 3.79/0.98  qbf_prep_cycles:                        0
% 3.79/0.98  
% 3.79/0.98  ------ BMC1
% 3.79/0.98  
% 3.79/0.98  bmc1_current_bound:                     -1
% 3.79/0.98  bmc1_last_solved_bound:                 -1
% 3.79/0.98  bmc1_unsat_core_size:                   -1
% 3.79/0.98  bmc1_unsat_core_parents_size:           -1
% 3.79/0.98  bmc1_merge_next_fun:                    0
% 3.79/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.79/0.98  
% 3.79/0.98  ------ Instantiation
% 3.79/0.98  
% 3.79/0.98  inst_num_of_clauses:                    1765
% 3.79/0.98  inst_num_in_passive:                    601
% 3.79/0.98  inst_num_in_active:                     668
% 3.79/0.98  inst_num_in_unprocessed:                496
% 3.79/0.98  inst_num_of_loops:                      950
% 3.79/0.98  inst_num_of_learning_restarts:          0
% 3.79/0.98  inst_num_moves_active_passive:          281
% 3.79/0.98  inst_lit_activity:                      0
% 3.79/0.98  inst_lit_activity_moves:                0
% 3.79/0.98  inst_num_tautologies:                   0
% 3.79/0.98  inst_num_prop_implied:                  0
% 3.79/0.98  inst_num_existing_simplified:           0
% 3.79/0.98  inst_num_eq_res_simplified:             0
% 3.79/0.98  inst_num_child_elim:                    0
% 3.79/0.98  inst_num_of_dismatching_blockings:      1059
% 3.79/0.98  inst_num_of_non_proper_insts:           2647
% 3.79/0.98  inst_num_of_duplicates:                 0
% 3.79/0.98  inst_inst_num_from_inst_to_res:         0
% 3.79/0.98  inst_dismatching_checking_time:         0.
% 3.79/0.98  
% 3.79/0.98  ------ Resolution
% 3.79/0.98  
% 3.79/0.98  res_num_of_clauses:                     0
% 3.79/0.98  res_num_in_passive:                     0
% 3.79/0.98  res_num_in_active:                      0
% 3.79/0.98  res_num_of_loops:                       202
% 3.79/0.98  res_forward_subset_subsumed:            197
% 3.79/0.98  res_backward_subset_subsumed:           6
% 3.79/0.98  res_forward_subsumed:                   0
% 3.79/0.98  res_backward_subsumed:                  0
% 3.79/0.98  res_forward_subsumption_resolution:     1
% 3.79/0.98  res_backward_subsumption_resolution:    0
% 3.79/0.98  res_clause_to_clause_subsumption:       1529
% 3.79/0.98  res_orphan_elimination:                 0
% 3.79/0.98  res_tautology_del:                      73
% 3.79/0.98  res_num_eq_res_simplified:              0
% 3.79/0.98  res_num_sel_changes:                    0
% 3.79/0.98  res_moves_from_active_to_pass:          0
% 3.79/0.98  
% 3.79/0.98  ------ Superposition
% 3.79/0.98  
% 3.79/0.98  sup_time_total:                         0.
% 3.79/0.98  sup_time_generating:                    0.
% 3.79/0.98  sup_time_sim_full:                      0.
% 3.79/0.98  sup_time_sim_immed:                     0.
% 3.79/0.98  
% 3.79/0.98  sup_num_of_clauses:                     310
% 3.79/0.98  sup_num_in_active:                      169
% 3.79/0.98  sup_num_in_passive:                     141
% 3.79/0.98  sup_num_of_loops:                       188
% 3.79/0.98  sup_fw_superposition:                   321
% 3.79/0.98  sup_bw_superposition:                   213
% 3.79/0.98  sup_immediate_simplified:               133
% 3.79/0.98  sup_given_eliminated:                   1
% 3.79/0.98  comparisons_done:                       0
% 3.79/0.98  comparisons_avoided:                    11
% 3.79/0.98  
% 3.79/0.98  ------ Simplifications
% 3.79/0.98  
% 3.79/0.98  
% 3.79/0.98  sim_fw_subset_subsumed:                 32
% 3.79/0.98  sim_bw_subset_subsumed:                 10
% 3.79/0.98  sim_fw_subsumed:                        53
% 3.79/0.98  sim_bw_subsumed:                        13
% 3.79/0.98  sim_fw_subsumption_res:                 0
% 3.79/0.98  sim_bw_subsumption_res:                 0
% 3.79/0.98  sim_tautology_del:                      14
% 3.79/0.98  sim_eq_tautology_del:                   23
% 3.79/0.98  sim_eq_res_simp:                        0
% 3.79/0.98  sim_fw_demodulated:                     28
% 3.79/0.98  sim_bw_demodulated:                     13
% 3.79/0.98  sim_light_normalised:                   17
% 3.79/0.98  sim_joinable_taut:                      0
% 3.79/0.98  sim_joinable_simp:                      0
% 3.79/0.98  sim_ac_normalised:                      0
% 3.79/0.98  sim_smt_subsumption:                    0
% 3.79/0.98  
%------------------------------------------------------------------------------
