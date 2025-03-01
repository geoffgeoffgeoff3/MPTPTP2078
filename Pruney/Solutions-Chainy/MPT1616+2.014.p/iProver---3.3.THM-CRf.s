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
% DateTime   : Thu Dec  3 12:20:28 EST 2020

% Result     : Theorem 2.77s
% Output     : CNFRefutation 2.77s
% Verified   : 
% Statistics : Number of formulae       :  110 ( 324 expanded)
%              Number of clauses        :   55 ( 115 expanded)
%              Number of leaves         :   17 (  60 expanded)
%              Depth                    :   19
%              Number of atoms          :  339 (1090 expanded)
%              Number of equality atoms :   93 ( 253 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f72,plain,(
    ! [X0] :
      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f12,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => u1_struct_0(X0) = k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => u1_struct_0(X0) = k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f15,plain,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => u1_struct_0(X0) = k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))) ) ),
    inference(pure_predicate_removal,[],[f13])).

fof(f27,plain,(
    ? [X0] :
      ( u1_struct_0(X0) != k4_yellow_0(k2_yellow_1(u1_pre_topc(X0)))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f28,plain,(
    ? [X0] :
      ( u1_struct_0(X0) != k4_yellow_0(k2_yellow_1(u1_pre_topc(X0)))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f47,plain,
    ( ? [X0] :
        ( u1_struct_0(X0) != k4_yellow_0(k2_yellow_1(u1_pre_topc(X0)))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5)))
      & l1_pre_topc(sK5)
      & v2_pre_topc(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,
    ( u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5)))
    & l1_pre_topc(sK5)
    & v2_pre_topc(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f28,f47])).

fof(f75,plain,(
    l1_pre_topc(sK5) ),
    inference(cnf_transformation,[],[f48])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f7,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f6,axiom,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(X0,k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f55,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k3_tarski(X0),k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_tarski(X0),k3_tarski(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f56,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_tarski(X0),k3_tarski(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f35])).

fof(f53,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f74,plain,(
    v2_pre_topc(sK5) ),
    inference(cnf_transformation,[],[f48])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v2_pre_topc(X0)
      <=> ( ! [X1] :
              ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
             => ! [X2] :
                  ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( r2_hidden(X2,u1_pre_topc(X0))
                      & r2_hidden(X1,u1_pre_topc(X0)) )
                   => r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0)) ) ) )
          & ! [X1] :
              ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
             => ( r1_tarski(X1,u1_pre_topc(X0))
               => r2_hidden(k5_setfam_1(u1_struct_0(X0),X1),u1_pre_topc(X0)) ) )
          & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v2_pre_topc(X0)
      <=> ( ! [X1] :
              ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
             => ! [X2] :
                  ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( r2_hidden(X2,u1_pre_topc(X0))
                      & r2_hidden(X1,u1_pre_topc(X0)) )
                   => r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0)) ) ) )
          & ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
             => ( r1_tarski(X3,u1_pre_topc(X0))
               => r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) ) )
          & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) ) ) ) ),
    inference(rectify,[],[f9])).

fof(f22,plain,(
    ! [X0] :
      ( ( v2_pre_topc(X0)
      <=> ( ! [X1] :
              ( ! [X2] :
                  ( r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0))
                  | ~ r2_hidden(X2,u1_pre_topc(X0))
                  | ~ r2_hidden(X1,u1_pre_topc(X0))
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
          & ! [X3] :
              ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
              | ~ r1_tarski(X3,u1_pre_topc(X0))
              | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f23,plain,(
    ! [X0] :
      ( ( v2_pre_topc(X0)
      <=> ( ! [X1] :
              ( ! [X2] :
                  ( r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0))
                  | ~ r2_hidden(X2,u1_pre_topc(X0))
                  | ~ r2_hidden(X1,u1_pre_topc(X0))
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
          & ! [X3] :
              ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
              | ~ r1_tarski(X3,u1_pre_topc(X0))
              | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f22])).

fof(f29,plain,(
    ! [X0] :
      ( sP0(X0)
    <=> ! [X1] :
          ( ! [X2] :
              ( r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0))
              | ~ r2_hidden(X2,u1_pre_topc(X0))
              | ~ r2_hidden(X1,u1_pre_topc(X0))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f30,plain,(
    ! [X0] :
      ( ( v2_pre_topc(X0)
      <=> ( sP0(X0)
          & ! [X3] :
              ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
              | ~ r1_tarski(X3,u1_pre_topc(X0))
              | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(definition_folding,[],[f23,f29])).

fof(f42,plain,(
    ! [X0] :
      ( ( ( v2_pre_topc(X0)
          | ~ sP0(X0)
          | ? [X3] :
              ( ~ r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
              & r1_tarski(X3,u1_pre_topc(X0))
              & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          | ~ r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
        & ( ( sP0(X0)
            & ! [X3] :
                ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
                | ~ r1_tarski(X3,u1_pre_topc(X0))
                | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
            & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
          | ~ v2_pre_topc(X0) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f30])).

fof(f43,plain,(
    ! [X0] :
      ( ( ( v2_pre_topc(X0)
          | ~ sP0(X0)
          | ? [X3] :
              ( ~ r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
              & r1_tarski(X3,u1_pre_topc(X0))
              & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          | ~ r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
        & ( ( sP0(X0)
            & ! [X3] :
                ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0))
                | ~ r1_tarski(X3,u1_pre_topc(X0))
                | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
            & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
          | ~ v2_pre_topc(X0) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f42])).

fof(f44,plain,(
    ! [X0] :
      ( ( ( v2_pre_topc(X0)
          | ~ sP0(X0)
          | ? [X1] :
              ( ~ r2_hidden(k5_setfam_1(u1_struct_0(X0),X1),u1_pre_topc(X0))
              & r1_tarski(X1,u1_pre_topc(X0))
              & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          | ~ r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
        & ( ( sP0(X0)
            & ! [X2] :
                ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X2),u1_pre_topc(X0))
                | ~ r1_tarski(X2,u1_pre_topc(X0))
                | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
            & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
          | ~ v2_pre_topc(X0) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f43])).

fof(f45,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r2_hidden(k5_setfam_1(u1_struct_0(X0),X1),u1_pre_topc(X0))
          & r1_tarski(X1,u1_pre_topc(X0))
          & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
     => ( ~ r2_hidden(k5_setfam_1(u1_struct_0(X0),sK4(X0)),u1_pre_topc(X0))
        & r1_tarski(sK4(X0),u1_pre_topc(X0))
        & m1_subset_1(sK4(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X0] :
      ( ( ( v2_pre_topc(X0)
          | ~ sP0(X0)
          | ( ~ r2_hidden(k5_setfam_1(u1_struct_0(X0),sK4(X0)),u1_pre_topc(X0))
            & r1_tarski(sK4(X0),u1_pre_topc(X0))
            & m1_subset_1(sK4(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          | ~ r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
        & ( ( sP0(X0)
            & ! [X2] :
                ( r2_hidden(k5_setfam_1(u1_struct_0(X0),X2),u1_pre_topc(X0))
                | ~ r1_tarski(X2,u1_pre_topc(X0))
                | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
            & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) )
          | ~ v2_pre_topc(X0) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f44,f45])).

fof(f66,plain,(
    ! [X0] :
      ( r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))
      | ~ v2_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f11,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ( r2_hidden(k3_tarski(X0),X0)
       => k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f26,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f73,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f32,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f31])).

fof(f33,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK1(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f32,f33])).

fof(f49,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f78,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f51])).

fof(f76,plain,(
    u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_23,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_26,negated_conjecture,
    ( l1_pre_topc(sK5) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_383,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_26])).

cnf(c_384,plain,
    ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) ),
    inference(unflattening,[status(thm)],[c_383])).

cnf(c_1406,plain,
    ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_384])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1414,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2502,plain,
    ( r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1406,c_1414])).

cnf(c_29,plain,
    ( l1_pre_topc(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_33,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_35,plain,
    ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top
    | l1_pre_topc(sK5) != iProver_top ),
    inference(instantiation,[status(thm)],[c_33])).

cnf(c_1622,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r2_hidden(X0,k1_zfmisc_1(X1))
    | v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1972,plain,
    ( ~ m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5))))
    | r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5))))
    | v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) ),
    inference(instantiation,[status(thm)],[c_1622])).

cnf(c_1973,plain,
    ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) != iProver_top
    | r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1972])).

cnf(c_9,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1975,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1976,plain,
    ( v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1975])).

cnf(c_2616,plain,
    ( r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2502,c_29,c_35,c_1973,c_1976])).

cnf(c_8,plain,
    ( k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_6,plain,
    ( r1_tarski(X0,k3_tarski(X1))
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1417,plain,
    ( r1_tarski(X0,k3_tarski(X1)) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1986,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_8,c_1417])).

cnf(c_2622,plain,
    ( r1_tarski(u1_pre_topc(sK5),k1_zfmisc_1(u1_struct_0(sK5))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2616,c_1986])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k3_tarski(X0),k3_tarski(X1)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1416,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k3_tarski(X0),k3_tarski(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2095,plain,
    ( r1_tarski(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(k3_tarski(X0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_8,c_1416])).

cnf(c_2630,plain,
    ( r1_tarski(k3_tarski(u1_pre_topc(sK5)),u1_struct_0(sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2622,c_2095])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1420,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2755,plain,
    ( k3_tarski(u1_pre_topc(sK5)) = u1_struct_0(sK5)
    | r1_tarski(u1_struct_0(sK5),k3_tarski(u1_pre_topc(sK5))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2630,c_1420])).

cnf(c_27,negated_conjecture,
    ( v2_pre_topc(sK5) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_28,plain,
    ( v2_pre_topc(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_22,plain,
    ( r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_36,plain,
    ( r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_38,plain,
    ( r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) = iProver_top
    | l1_pre_topc(sK5) != iProver_top
    | v2_pre_topc(sK5) != iProver_top ),
    inference(instantiation,[status(thm)],[c_36])).

cnf(c_1619,plain,
    ( r1_tarski(u1_struct_0(sK5),k3_tarski(u1_pre_topc(sK5)))
    | ~ r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1620,plain,
    ( r1_tarski(u1_struct_0(sK5),k3_tarski(u1_pre_topc(sK5))) = iProver_top
    | r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1619])).

cnf(c_2823,plain,
    ( k3_tarski(u1_pre_topc(sK5)) = u1_struct_0(sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2755,c_28,c_29,c_38,c_1620])).

cnf(c_24,plain,
    ( ~ r2_hidden(k3_tarski(X0),X0)
    | v1_xboole_0(X0)
    | k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1407,plain,
    ( k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0)
    | r2_hidden(k3_tarski(X0),X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1421,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1488,plain,
    ( k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0)
    | r2_hidden(k3_tarski(X0),X0) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1407,c_1421])).

cnf(c_2829,plain,
    ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) = k3_tarski(u1_pre_topc(sK5))
    | r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2823,c_1488])).

cnf(c_2837,plain,
    ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) = u1_struct_0(sK5)
    | r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2829,c_2823])).

cnf(c_1011,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1572,plain,
    ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) != X0
    | u1_struct_0(sK5) != X0
    | u1_struct_0(sK5) = k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) ),
    inference(instantiation,[status(thm)],[c_1011])).

cnf(c_1644,plain,
    ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) != u1_struct_0(sK5)
    | u1_struct_0(sK5) = k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5)))
    | u1_struct_0(sK5) != u1_struct_0(sK5) ),
    inference(instantiation,[status(thm)],[c_1572])).

cnf(c_1019,plain,
    ( X0 != X1
    | u1_struct_0(X0) = u1_struct_0(X1) ),
    theory(equality)).

cnf(c_1032,plain,
    ( u1_struct_0(sK5) = u1_struct_0(sK5)
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_1019])).

cnf(c_85,plain,
    ( ~ r1_tarski(sK5,sK5)
    | sK5 = sK5 ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_4,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_81,plain,
    ( r1_tarski(sK5,sK5) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_25,negated_conjecture,
    ( u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) ),
    inference(cnf_transformation,[],[f76])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2837,c_1644,c_1032,c_85,c_81,c_38,c_25,c_29,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.11/0.32  % Computer   : n017.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.32  % DateTime   : Tue Dec  1 20:08:16 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.32  % Running in FOF mode
% 2.77/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.77/0.97  
% 2.77/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.77/0.97  
% 2.77/0.97  ------  iProver source info
% 2.77/0.97  
% 2.77/0.97  git: date: 2020-06-30 10:37:57 +0100
% 2.77/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.77/0.97  git: non_committed_changes: false
% 2.77/0.97  git: last_make_outside_of_git: false
% 2.77/0.97  
% 2.77/0.97  ------ 
% 2.77/0.97  
% 2.77/0.97  ------ Input Options
% 2.77/0.97  
% 2.77/0.97  --out_options                           all
% 2.77/0.97  --tptp_safe_out                         true
% 2.77/0.97  --problem_path                          ""
% 2.77/0.97  --include_path                          ""
% 2.77/0.97  --clausifier                            res/vclausify_rel
% 2.77/0.97  --clausifier_options                    --mode clausify
% 2.77/0.97  --stdin                                 false
% 2.77/0.97  --stats_out                             all
% 2.77/0.97  
% 2.77/0.97  ------ General Options
% 2.77/0.97  
% 2.77/0.97  --fof                                   false
% 2.77/0.97  --time_out_real                         305.
% 2.77/0.97  --time_out_virtual                      -1.
% 2.77/0.97  --symbol_type_check                     false
% 2.77/0.97  --clausify_out                          false
% 2.77/0.97  --sig_cnt_out                           false
% 2.77/0.97  --trig_cnt_out                          false
% 2.77/0.97  --trig_cnt_out_tolerance                1.
% 2.77/0.97  --trig_cnt_out_sk_spl                   false
% 2.77/0.97  --abstr_cl_out                          false
% 2.77/0.97  
% 2.77/0.97  ------ Global Options
% 2.77/0.97  
% 2.77/0.97  --schedule                              default
% 2.77/0.97  --add_important_lit                     false
% 2.77/0.97  --prop_solver_per_cl                    1000
% 2.77/0.97  --min_unsat_core                        false
% 2.77/0.97  --soft_assumptions                      false
% 2.77/0.97  --soft_lemma_size                       3
% 2.77/0.97  --prop_impl_unit_size                   0
% 2.77/0.97  --prop_impl_unit                        []
% 2.77/0.97  --share_sel_clauses                     true
% 2.77/0.97  --reset_solvers                         false
% 2.77/0.97  --bc_imp_inh                            [conj_cone]
% 2.77/0.97  --conj_cone_tolerance                   3.
% 2.77/0.97  --extra_neg_conj                        none
% 2.77/0.97  --large_theory_mode                     true
% 2.77/0.97  --prolific_symb_bound                   200
% 2.77/0.97  --lt_threshold                          2000
% 2.77/0.97  --clause_weak_htbl                      true
% 2.77/0.97  --gc_record_bc_elim                     false
% 2.77/0.97  
% 2.77/0.97  ------ Preprocessing Options
% 2.77/0.97  
% 2.77/0.97  --preprocessing_flag                    true
% 2.77/0.97  --time_out_prep_mult                    0.1
% 2.77/0.97  --splitting_mode                        input
% 2.77/0.97  --splitting_grd                         true
% 2.77/0.97  --splitting_cvd                         false
% 2.77/0.97  --splitting_cvd_svl                     false
% 2.77/0.97  --splitting_nvd                         32
% 2.77/0.97  --sub_typing                            true
% 2.77/0.97  --prep_gs_sim                           true
% 2.77/0.97  --prep_unflatten                        true
% 2.77/0.97  --prep_res_sim                          true
% 2.77/0.97  --prep_upred                            true
% 2.77/0.97  --prep_sem_filter                       exhaustive
% 2.77/0.97  --prep_sem_filter_out                   false
% 2.77/0.97  --pred_elim                             true
% 2.77/0.97  --res_sim_input                         true
% 2.77/0.97  --eq_ax_congr_red                       true
% 2.77/0.97  --pure_diseq_elim                       true
% 2.77/0.97  --brand_transform                       false
% 2.77/0.97  --non_eq_to_eq                          false
% 2.77/0.97  --prep_def_merge                        true
% 2.77/0.97  --prep_def_merge_prop_impl              false
% 2.77/0.97  --prep_def_merge_mbd                    true
% 2.77/0.97  --prep_def_merge_tr_red                 false
% 2.77/0.97  --prep_def_merge_tr_cl                  false
% 2.77/0.97  --smt_preprocessing                     true
% 2.77/0.97  --smt_ac_axioms                         fast
% 2.77/0.97  --preprocessed_out                      false
% 2.77/0.97  --preprocessed_stats                    false
% 2.77/0.97  
% 2.77/0.97  ------ Abstraction refinement Options
% 2.77/0.97  
% 2.77/0.97  --abstr_ref                             []
% 2.77/0.97  --abstr_ref_prep                        false
% 2.77/0.97  --abstr_ref_until_sat                   false
% 2.77/0.97  --abstr_ref_sig_restrict                funpre
% 2.77/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.77/0.97  --abstr_ref_under                       []
% 2.77/0.97  
% 2.77/0.97  ------ SAT Options
% 2.77/0.97  
% 2.77/0.97  --sat_mode                              false
% 2.77/0.97  --sat_fm_restart_options                ""
% 2.77/0.97  --sat_gr_def                            false
% 2.77/0.97  --sat_epr_types                         true
% 2.77/0.97  --sat_non_cyclic_types                  false
% 2.77/0.97  --sat_finite_models                     false
% 2.77/0.97  --sat_fm_lemmas                         false
% 2.77/0.97  --sat_fm_prep                           false
% 2.77/0.97  --sat_fm_uc_incr                        true
% 2.77/0.97  --sat_out_model                         small
% 2.77/0.97  --sat_out_clauses                       false
% 2.77/0.97  
% 2.77/0.97  ------ QBF Options
% 2.77/0.97  
% 2.77/0.97  --qbf_mode                              false
% 2.77/0.97  --qbf_elim_univ                         false
% 2.77/0.97  --qbf_dom_inst                          none
% 2.77/0.97  --qbf_dom_pre_inst                      false
% 2.77/0.97  --qbf_sk_in                             false
% 2.77/0.97  --qbf_pred_elim                         true
% 2.77/0.97  --qbf_split                             512
% 2.77/0.97  
% 2.77/0.97  ------ BMC1 Options
% 2.77/0.97  
% 2.77/0.97  --bmc1_incremental                      false
% 2.77/0.97  --bmc1_axioms                           reachable_all
% 2.77/0.97  --bmc1_min_bound                        0
% 2.77/0.97  --bmc1_max_bound                        -1
% 2.77/0.97  --bmc1_max_bound_default                -1
% 2.77/0.97  --bmc1_symbol_reachability              true
% 2.77/0.97  --bmc1_property_lemmas                  false
% 2.77/0.97  --bmc1_k_induction                      false
% 2.77/0.97  --bmc1_non_equiv_states                 false
% 2.77/0.97  --bmc1_deadlock                         false
% 2.77/0.97  --bmc1_ucm                              false
% 2.77/0.97  --bmc1_add_unsat_core                   none
% 2.77/0.97  --bmc1_unsat_core_children              false
% 2.77/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.77/0.97  --bmc1_out_stat                         full
% 2.77/0.97  --bmc1_ground_init                      false
% 2.77/0.97  --bmc1_pre_inst_next_state              false
% 2.77/0.97  --bmc1_pre_inst_state                   false
% 2.77/0.97  --bmc1_pre_inst_reach_state             false
% 2.77/0.97  --bmc1_out_unsat_core                   false
% 2.77/0.97  --bmc1_aig_witness_out                  false
% 2.77/0.97  --bmc1_verbose                          false
% 2.77/0.97  --bmc1_dump_clauses_tptp                false
% 2.77/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.77/0.97  --bmc1_dump_file                        -
% 2.77/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.77/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.77/0.97  --bmc1_ucm_extend_mode                  1
% 2.77/0.97  --bmc1_ucm_init_mode                    2
% 2.77/0.97  --bmc1_ucm_cone_mode                    none
% 2.77/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.77/0.97  --bmc1_ucm_relax_model                  4
% 2.77/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.77/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.77/0.97  --bmc1_ucm_layered_model                none
% 2.77/0.97  --bmc1_ucm_max_lemma_size               10
% 2.77/0.97  
% 2.77/0.97  ------ AIG Options
% 2.77/0.97  
% 2.77/0.97  --aig_mode                              false
% 2.77/0.97  
% 2.77/0.97  ------ Instantiation Options
% 2.77/0.97  
% 2.77/0.97  --instantiation_flag                    true
% 2.77/0.97  --inst_sos_flag                         false
% 2.77/0.97  --inst_sos_phase                        true
% 2.77/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.77/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.77/0.97  --inst_lit_sel_side                     num_symb
% 2.77/0.97  --inst_solver_per_active                1400
% 2.77/0.97  --inst_solver_calls_frac                1.
% 2.77/0.97  --inst_passive_queue_type               priority_queues
% 2.77/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.77/0.97  --inst_passive_queues_freq              [25;2]
% 2.77/0.97  --inst_dismatching                      true
% 2.77/0.97  --inst_eager_unprocessed_to_passive     true
% 2.77/0.97  --inst_prop_sim_given                   true
% 2.77/0.97  --inst_prop_sim_new                     false
% 2.77/0.97  --inst_subs_new                         false
% 2.77/0.97  --inst_eq_res_simp                      false
% 2.77/0.97  --inst_subs_given                       false
% 2.77/0.97  --inst_orphan_elimination               true
% 2.77/0.97  --inst_learning_loop_flag               true
% 2.77/0.97  --inst_learning_start                   3000
% 2.77/0.97  --inst_learning_factor                  2
% 2.77/0.97  --inst_start_prop_sim_after_learn       3
% 2.77/0.97  --inst_sel_renew                        solver
% 2.77/0.97  --inst_lit_activity_flag                true
% 2.77/0.97  --inst_restr_to_given                   false
% 2.77/0.97  --inst_activity_threshold               500
% 2.77/0.97  --inst_out_proof                        true
% 2.77/0.97  
% 2.77/0.97  ------ Resolution Options
% 2.77/0.97  
% 2.77/0.97  --resolution_flag                       true
% 2.77/0.97  --res_lit_sel                           adaptive
% 2.77/0.97  --res_lit_sel_side                      none
% 2.77/0.97  --res_ordering                          kbo
% 2.77/0.97  --res_to_prop_solver                    active
% 2.77/0.97  --res_prop_simpl_new                    false
% 2.77/0.97  --res_prop_simpl_given                  true
% 2.77/0.97  --res_passive_queue_type                priority_queues
% 2.77/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.77/0.97  --res_passive_queues_freq               [15;5]
% 2.77/0.97  --res_forward_subs                      full
% 2.77/0.97  --res_backward_subs                     full
% 2.77/0.97  --res_forward_subs_resolution           true
% 2.77/0.97  --res_backward_subs_resolution          true
% 2.77/0.97  --res_orphan_elimination                true
% 2.77/0.97  --res_time_limit                        2.
% 2.77/0.97  --res_out_proof                         true
% 2.77/0.97  
% 2.77/0.97  ------ Superposition Options
% 2.77/0.97  
% 2.77/0.97  --superposition_flag                    true
% 2.77/0.97  --sup_passive_queue_type                priority_queues
% 2.77/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.77/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.77/0.97  --demod_completeness_check              fast
% 2.77/0.97  --demod_use_ground                      true
% 2.77/0.97  --sup_to_prop_solver                    passive
% 2.77/0.97  --sup_prop_simpl_new                    true
% 2.77/0.97  --sup_prop_simpl_given                  true
% 2.77/0.97  --sup_fun_splitting                     false
% 2.77/0.97  --sup_smt_interval                      50000
% 2.77/0.97  
% 2.77/0.97  ------ Superposition Simplification Setup
% 2.77/0.97  
% 2.77/0.97  --sup_indices_passive                   []
% 2.77/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.77/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.77/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.77/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.77/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.77/0.97  --sup_full_bw                           [BwDemod]
% 2.77/0.97  --sup_immed_triv                        [TrivRules]
% 2.77/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.77/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.77/0.97  --sup_immed_bw_main                     []
% 2.77/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.77/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.77/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.77/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.77/0.97  
% 2.77/0.97  ------ Combination Options
% 2.77/0.97  
% 2.77/0.97  --comb_res_mult                         3
% 2.77/0.97  --comb_sup_mult                         2
% 2.77/0.97  --comb_inst_mult                        10
% 2.77/0.97  
% 2.77/0.97  ------ Debug Options
% 2.77/0.97  
% 2.77/0.97  --dbg_backtrace                         false
% 2.77/0.97  --dbg_dump_prop_clauses                 false
% 2.77/0.97  --dbg_dump_prop_clauses_file            -
% 2.77/0.97  --dbg_out_stat                          false
% 2.77/0.97  ------ Parsing...
% 2.77/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.77/0.97  
% 2.77/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.77/0.97  
% 2.77/0.97  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.77/0.97  
% 2.77/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.77/0.97  ------ Proving...
% 2.77/0.97  ------ Problem Properties 
% 2.77/0.97  
% 2.77/0.97  
% 2.77/0.97  clauses                                 22
% 2.77/0.97  conjectures                             1
% 2.77/0.97  EPR                                     6
% 2.77/0.97  Horn                                    15
% 2.77/0.97  unary                                   7
% 2.77/0.97  binary                                  9
% 2.77/0.97  lits                                    46
% 2.77/0.97  lits eq                                 4
% 2.77/0.97  fd_pure                                 0
% 2.77/0.97  fd_pseudo                               0
% 2.77/0.97  fd_cond                                 0
% 2.77/0.97  fd_pseudo_cond                          1
% 2.77/0.97  AC symbols                              0
% 2.77/0.97  
% 2.77/0.97  ------ Schedule dynamic 5 is on 
% 2.77/0.97  
% 2.77/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.77/0.97  
% 2.77/0.97  
% 2.77/0.97  ------ 
% 2.77/0.97  Current options:
% 2.77/0.97  ------ 
% 2.77/0.97  
% 2.77/0.97  ------ Input Options
% 2.77/0.97  
% 2.77/0.97  --out_options                           all
% 2.77/0.97  --tptp_safe_out                         true
% 2.77/0.97  --problem_path                          ""
% 2.77/0.97  --include_path                          ""
% 2.77/0.97  --clausifier                            res/vclausify_rel
% 2.77/0.97  --clausifier_options                    --mode clausify
% 2.77/0.97  --stdin                                 false
% 2.77/0.97  --stats_out                             all
% 2.77/0.97  
% 2.77/0.97  ------ General Options
% 2.77/0.97  
% 2.77/0.97  --fof                                   false
% 2.77/0.97  --time_out_real                         305.
% 2.77/0.97  --time_out_virtual                      -1.
% 2.77/0.97  --symbol_type_check                     false
% 2.77/0.97  --clausify_out                          false
% 2.77/0.97  --sig_cnt_out                           false
% 2.77/0.97  --trig_cnt_out                          false
% 2.77/0.97  --trig_cnt_out_tolerance                1.
% 2.77/0.97  --trig_cnt_out_sk_spl                   false
% 2.77/0.97  --abstr_cl_out                          false
% 2.77/0.97  
% 2.77/0.97  ------ Global Options
% 2.77/0.97  
% 2.77/0.97  --schedule                              default
% 2.77/0.97  --add_important_lit                     false
% 2.77/0.97  --prop_solver_per_cl                    1000
% 2.77/0.97  --min_unsat_core                        false
% 2.77/0.97  --soft_assumptions                      false
% 2.77/0.97  --soft_lemma_size                       3
% 2.77/0.97  --prop_impl_unit_size                   0
% 2.77/0.97  --prop_impl_unit                        []
% 2.77/0.97  --share_sel_clauses                     true
% 2.77/0.97  --reset_solvers                         false
% 2.77/0.97  --bc_imp_inh                            [conj_cone]
% 2.77/0.97  --conj_cone_tolerance                   3.
% 2.77/0.97  --extra_neg_conj                        none
% 2.77/0.97  --large_theory_mode                     true
% 2.77/0.97  --prolific_symb_bound                   200
% 2.77/0.97  --lt_threshold                          2000
% 2.77/0.97  --clause_weak_htbl                      true
% 2.77/0.97  --gc_record_bc_elim                     false
% 2.77/0.97  
% 2.77/0.97  ------ Preprocessing Options
% 2.77/0.97  
% 2.77/0.97  --preprocessing_flag                    true
% 2.77/0.97  --time_out_prep_mult                    0.1
% 2.77/0.97  --splitting_mode                        input
% 2.77/0.97  --splitting_grd                         true
% 2.77/0.97  --splitting_cvd                         false
% 2.77/0.97  --splitting_cvd_svl                     false
% 2.77/0.97  --splitting_nvd                         32
% 2.77/0.97  --sub_typing                            true
% 2.77/0.97  --prep_gs_sim                           true
% 2.77/0.97  --prep_unflatten                        true
% 2.77/0.97  --prep_res_sim                          true
% 2.77/0.97  --prep_upred                            true
% 2.77/0.97  --prep_sem_filter                       exhaustive
% 2.77/0.97  --prep_sem_filter_out                   false
% 2.77/0.97  --pred_elim                             true
% 2.77/0.97  --res_sim_input                         true
% 2.77/0.97  --eq_ax_congr_red                       true
% 2.77/0.97  --pure_diseq_elim                       true
% 2.77/0.97  --brand_transform                       false
% 2.77/0.97  --non_eq_to_eq                          false
% 2.77/0.97  --prep_def_merge                        true
% 2.77/0.97  --prep_def_merge_prop_impl              false
% 2.77/0.97  --prep_def_merge_mbd                    true
% 2.77/0.97  --prep_def_merge_tr_red                 false
% 2.77/0.97  --prep_def_merge_tr_cl                  false
% 2.77/0.97  --smt_preprocessing                     true
% 2.77/0.97  --smt_ac_axioms                         fast
% 2.77/0.97  --preprocessed_out                      false
% 2.77/0.97  --preprocessed_stats                    false
% 2.77/0.97  
% 2.77/0.97  ------ Abstraction refinement Options
% 2.77/0.97  
% 2.77/0.97  --abstr_ref                             []
% 2.77/0.97  --abstr_ref_prep                        false
% 2.77/0.97  --abstr_ref_until_sat                   false
% 2.77/0.97  --abstr_ref_sig_restrict                funpre
% 2.77/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.77/0.97  --abstr_ref_under                       []
% 2.77/0.97  
% 2.77/0.97  ------ SAT Options
% 2.77/0.97  
% 2.77/0.97  --sat_mode                              false
% 2.77/0.97  --sat_fm_restart_options                ""
% 2.77/0.97  --sat_gr_def                            false
% 2.77/0.97  --sat_epr_types                         true
% 2.77/0.97  --sat_non_cyclic_types                  false
% 2.77/0.97  --sat_finite_models                     false
% 2.77/0.97  --sat_fm_lemmas                         false
% 2.77/0.97  --sat_fm_prep                           false
% 2.77/0.97  --sat_fm_uc_incr                        true
% 2.77/0.97  --sat_out_model                         small
% 2.77/0.97  --sat_out_clauses                       false
% 2.77/0.97  
% 2.77/0.97  ------ QBF Options
% 2.77/0.97  
% 2.77/0.97  --qbf_mode                              false
% 2.77/0.97  --qbf_elim_univ                         false
% 2.77/0.97  --qbf_dom_inst                          none
% 2.77/0.97  --qbf_dom_pre_inst                      false
% 2.77/0.97  --qbf_sk_in                             false
% 2.77/0.97  --qbf_pred_elim                         true
% 2.77/0.97  --qbf_split                             512
% 2.77/0.97  
% 2.77/0.97  ------ BMC1 Options
% 2.77/0.97  
% 2.77/0.97  --bmc1_incremental                      false
% 2.77/0.97  --bmc1_axioms                           reachable_all
% 2.77/0.97  --bmc1_min_bound                        0
% 2.77/0.97  --bmc1_max_bound                        -1
% 2.77/0.97  --bmc1_max_bound_default                -1
% 2.77/0.97  --bmc1_symbol_reachability              true
% 2.77/0.97  --bmc1_property_lemmas                  false
% 2.77/0.97  --bmc1_k_induction                      false
% 2.77/0.97  --bmc1_non_equiv_states                 false
% 2.77/0.97  --bmc1_deadlock                         false
% 2.77/0.97  --bmc1_ucm                              false
% 2.77/0.97  --bmc1_add_unsat_core                   none
% 2.77/0.97  --bmc1_unsat_core_children              false
% 2.77/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.77/0.97  --bmc1_out_stat                         full
% 2.77/0.97  --bmc1_ground_init                      false
% 2.77/0.97  --bmc1_pre_inst_next_state              false
% 2.77/0.97  --bmc1_pre_inst_state                   false
% 2.77/0.97  --bmc1_pre_inst_reach_state             false
% 2.77/0.97  --bmc1_out_unsat_core                   false
% 2.77/0.97  --bmc1_aig_witness_out                  false
% 2.77/0.97  --bmc1_verbose                          false
% 2.77/0.97  --bmc1_dump_clauses_tptp                false
% 2.77/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.77/0.97  --bmc1_dump_file                        -
% 2.77/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.77/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.77/0.97  --bmc1_ucm_extend_mode                  1
% 2.77/0.97  --bmc1_ucm_init_mode                    2
% 2.77/0.97  --bmc1_ucm_cone_mode                    none
% 2.77/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.77/0.97  --bmc1_ucm_relax_model                  4
% 2.77/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.77/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.77/0.97  --bmc1_ucm_layered_model                none
% 2.77/0.97  --bmc1_ucm_max_lemma_size               10
% 2.77/0.97  
% 2.77/0.97  ------ AIG Options
% 2.77/0.97  
% 2.77/0.97  --aig_mode                              false
% 2.77/0.97  
% 2.77/0.97  ------ Instantiation Options
% 2.77/0.97  
% 2.77/0.97  --instantiation_flag                    true
% 2.77/0.97  --inst_sos_flag                         false
% 2.77/0.97  --inst_sos_phase                        true
% 2.77/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.77/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.77/0.97  --inst_lit_sel_side                     none
% 2.77/0.97  --inst_solver_per_active                1400
% 2.77/0.97  --inst_solver_calls_frac                1.
% 2.77/0.97  --inst_passive_queue_type               priority_queues
% 2.77/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.77/0.97  --inst_passive_queues_freq              [25;2]
% 2.77/0.97  --inst_dismatching                      true
% 2.77/0.97  --inst_eager_unprocessed_to_passive     true
% 2.77/0.97  --inst_prop_sim_given                   true
% 2.77/0.97  --inst_prop_sim_new                     false
% 2.77/0.97  --inst_subs_new                         false
% 2.77/0.97  --inst_eq_res_simp                      false
% 2.77/0.97  --inst_subs_given                       false
% 2.77/0.97  --inst_orphan_elimination               true
% 2.77/0.97  --inst_learning_loop_flag               true
% 2.77/0.97  --inst_learning_start                   3000
% 2.77/0.97  --inst_learning_factor                  2
% 2.77/0.97  --inst_start_prop_sim_after_learn       3
% 2.77/0.97  --inst_sel_renew                        solver
% 2.77/0.97  --inst_lit_activity_flag                true
% 2.77/0.97  --inst_restr_to_given                   false
% 2.77/0.97  --inst_activity_threshold               500
% 2.77/0.97  --inst_out_proof                        true
% 2.77/0.97  
% 2.77/0.97  ------ Resolution Options
% 2.77/0.97  
% 2.77/0.97  --resolution_flag                       false
% 2.77/0.97  --res_lit_sel                           adaptive
% 2.77/0.97  --res_lit_sel_side                      none
% 2.77/0.97  --res_ordering                          kbo
% 2.77/0.97  --res_to_prop_solver                    active
% 2.77/0.97  --res_prop_simpl_new                    false
% 2.77/0.97  --res_prop_simpl_given                  true
% 2.77/0.97  --res_passive_queue_type                priority_queues
% 2.77/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.77/0.97  --res_passive_queues_freq               [15;5]
% 2.77/0.97  --res_forward_subs                      full
% 2.77/0.97  --res_backward_subs                     full
% 2.77/0.97  --res_forward_subs_resolution           true
% 2.77/0.97  --res_backward_subs_resolution          true
% 2.77/0.97  --res_orphan_elimination                true
% 2.77/0.97  --res_time_limit                        2.
% 2.77/0.97  --res_out_proof                         true
% 2.77/0.97  
% 2.77/0.97  ------ Superposition Options
% 2.77/0.97  
% 2.77/0.97  --superposition_flag                    true
% 2.77/0.97  --sup_passive_queue_type                priority_queues
% 2.77/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.77/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.77/0.97  --demod_completeness_check              fast
% 2.77/0.97  --demod_use_ground                      true
% 2.77/0.97  --sup_to_prop_solver                    passive
% 2.77/0.97  --sup_prop_simpl_new                    true
% 2.77/0.97  --sup_prop_simpl_given                  true
% 2.77/0.97  --sup_fun_splitting                     false
% 2.77/0.97  --sup_smt_interval                      50000
% 2.77/0.97  
% 2.77/0.97  ------ Superposition Simplification Setup
% 2.77/0.97  
% 2.77/0.97  --sup_indices_passive                   []
% 2.77/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.77/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.77/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.77/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.77/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.77/0.97  --sup_full_bw                           [BwDemod]
% 2.77/0.97  --sup_immed_triv                        [TrivRules]
% 2.77/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.77/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.77/0.97  --sup_immed_bw_main                     []
% 2.77/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.77/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.77/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.77/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.77/0.97  
% 2.77/0.97  ------ Combination Options
% 2.77/0.97  
% 2.77/0.97  --comb_res_mult                         3
% 2.77/0.97  --comb_sup_mult                         2
% 2.77/0.97  --comb_inst_mult                        10
% 2.77/0.97  
% 2.77/0.97  ------ Debug Options
% 2.77/0.97  
% 2.77/0.97  --dbg_backtrace                         false
% 2.77/0.97  --dbg_dump_prop_clauses                 false
% 2.77/0.97  --dbg_dump_prop_clauses_file            -
% 2.77/0.97  --dbg_out_stat                          false
% 2.77/0.97  
% 2.77/0.97  
% 2.77/0.97  
% 2.77/0.97  
% 2.77/0.97  ------ Proving...
% 2.77/0.97  
% 2.77/0.97  
% 2.77/0.97  % SZS status Theorem for theBenchmark.p
% 2.77/0.97  
% 2.77/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 2.77/0.97  
% 2.77/0.97  fof(f10,axiom,(
% 2.77/0.97    ! [X0] : (l1_pre_topc(X0) => m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f24,plain,(
% 2.77/0.97    ! [X0] : (m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(ennf_transformation,[],[f10])).
% 2.77/0.97  
% 2.77/0.97  fof(f72,plain,(
% 2.77/0.97    ( ! [X0] : (m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f24])).
% 2.77/0.97  
% 2.77/0.97  fof(f12,conjecture,(
% 2.77/0.97    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => u1_struct_0(X0) = k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f13,negated_conjecture,(
% 2.77/0.97    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => u1_struct_0(X0) = k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))))),
% 2.77/0.97    inference(negated_conjecture,[],[f12])).
% 2.77/0.97  
% 2.77/0.97  fof(f15,plain,(
% 2.77/0.97    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => u1_struct_0(X0) = k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))))),
% 2.77/0.97    inference(pure_predicate_removal,[],[f13])).
% 2.77/0.97  
% 2.77/0.97  fof(f27,plain,(
% 2.77/0.97    ? [X0] : (u1_struct_0(X0) != k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 2.77/0.97    inference(ennf_transformation,[],[f15])).
% 2.77/0.97  
% 2.77/0.97  fof(f28,plain,(
% 2.77/0.97    ? [X0] : (u1_struct_0(X0) != k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 2.77/0.97    inference(flattening,[],[f27])).
% 2.77/0.97  
% 2.77/0.97  fof(f47,plain,(
% 2.77/0.97    ? [X0] : (u1_struct_0(X0) != k4_yellow_0(k2_yellow_1(u1_pre_topc(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) & l1_pre_topc(sK5) & v2_pre_topc(sK5))),
% 2.77/0.97    introduced(choice_axiom,[])).
% 2.77/0.97  
% 2.77/0.97  fof(f48,plain,(
% 2.77/0.97    u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) & l1_pre_topc(sK5) & v2_pre_topc(sK5)),
% 2.77/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f28,f47])).
% 2.77/0.97  
% 2.77/0.97  fof(f75,plain,(
% 2.77/0.97    l1_pre_topc(sK5)),
% 2.77/0.97    inference(cnf_transformation,[],[f48])).
% 2.77/0.97  
% 2.77/0.97  fof(f8,axiom,(
% 2.77/0.97    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f20,plain,(
% 2.77/0.97    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 2.77/0.97    inference(ennf_transformation,[],[f8])).
% 2.77/0.97  
% 2.77/0.97  fof(f21,plain,(
% 2.77/0.97    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 2.77/0.97    inference(flattening,[],[f20])).
% 2.77/0.97  
% 2.77/0.97  fof(f59,plain,(
% 2.77/0.97    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f21])).
% 2.77/0.97  
% 2.77/0.97  fof(f7,axiom,(
% 2.77/0.97    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f58,plain,(
% 2.77/0.97    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 2.77/0.97    inference(cnf_transformation,[],[f7])).
% 2.77/0.97  
% 2.77/0.97  fof(f6,axiom,(
% 2.77/0.97    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f57,plain,(
% 2.77/0.97    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 2.77/0.97    inference(cnf_transformation,[],[f6])).
% 2.77/0.97  
% 2.77/0.97  fof(f4,axiom,(
% 2.77/0.97    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(X0,k3_tarski(X1)))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f18,plain,(
% 2.77/0.97    ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1))),
% 2.77/0.97    inference(ennf_transformation,[],[f4])).
% 2.77/0.97  
% 2.77/0.97  fof(f55,plain,(
% 2.77/0.97    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f18])).
% 2.77/0.97  
% 2.77/0.97  fof(f5,axiom,(
% 2.77/0.97    ! [X0,X1] : (r1_tarski(X0,X1) => r1_tarski(k3_tarski(X0),k3_tarski(X1)))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f19,plain,(
% 2.77/0.97    ! [X0,X1] : (r1_tarski(k3_tarski(X0),k3_tarski(X1)) | ~r1_tarski(X0,X1))),
% 2.77/0.97    inference(ennf_transformation,[],[f5])).
% 2.77/0.97  
% 2.77/0.97  fof(f56,plain,(
% 2.77/0.97    ( ! [X0,X1] : (r1_tarski(k3_tarski(X0),k3_tarski(X1)) | ~r1_tarski(X0,X1)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f19])).
% 2.77/0.97  
% 2.77/0.97  fof(f2,axiom,(
% 2.77/0.97    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f35,plain,(
% 2.77/0.97    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.77/0.97    inference(nnf_transformation,[],[f2])).
% 2.77/0.97  
% 2.77/0.97  fof(f36,plain,(
% 2.77/0.97    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.77/0.97    inference(flattening,[],[f35])).
% 2.77/0.97  
% 2.77/0.97  fof(f53,plain,(
% 2.77/0.97    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f36])).
% 2.77/0.97  
% 2.77/0.97  fof(f74,plain,(
% 2.77/0.97    v2_pre_topc(sK5)),
% 2.77/0.97    inference(cnf_transformation,[],[f48])).
% 2.77/0.97  
% 2.77/0.97  fof(f9,axiom,(
% 2.77/0.97    ! [X0] : (l1_pre_topc(X0) => (v2_pre_topc(X0) <=> (! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r2_hidden(X2,u1_pre_topc(X0)) & r2_hidden(X1,u1_pre_topc(X0))) => r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0))))) & ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => (r1_tarski(X1,u1_pre_topc(X0)) => r2_hidden(k5_setfam_1(u1_struct_0(X0),X1),u1_pre_topc(X0)))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)))))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f14,plain,(
% 2.77/0.97    ! [X0] : (l1_pre_topc(X0) => (v2_pre_topc(X0) <=> (! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r2_hidden(X2,u1_pre_topc(X0)) & r2_hidden(X1,u1_pre_topc(X0))) => r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0))))) & ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => (r1_tarski(X3,u1_pre_topc(X0)) => r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)))))),
% 2.77/0.97    inference(rectify,[],[f9])).
% 2.77/0.97  
% 2.77/0.97  fof(f22,plain,(
% 2.77/0.97    ! [X0] : ((v2_pre_topc(X0) <=> (! [X1] : (! [X2] : ((r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0)) | (~r2_hidden(X2,u1_pre_topc(X0)) | ~r2_hidden(X1,u1_pre_topc(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & ! [X3] : ((r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) | ~r1_tarski(X3,u1_pre_topc(X0))) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(ennf_transformation,[],[f14])).
% 2.77/0.97  
% 2.77/0.97  fof(f23,plain,(
% 2.77/0.97    ! [X0] : ((v2_pre_topc(X0) <=> (! [X1] : (! [X2] : (r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0)) | ~r2_hidden(X2,u1_pre_topc(X0)) | ~r2_hidden(X1,u1_pre_topc(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & ! [X3] : (r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) | ~r1_tarski(X3,u1_pre_topc(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(flattening,[],[f22])).
% 2.77/0.97  
% 2.77/0.97  fof(f29,plain,(
% 2.77/0.97    ! [X0] : (sP0(X0) <=> ! [X1] : (! [X2] : (r2_hidden(k9_subset_1(u1_struct_0(X0),X1,X2),u1_pre_topc(X0)) | ~r2_hidden(X2,u1_pre_topc(X0)) | ~r2_hidden(X1,u1_pre_topc(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.77/0.97    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 2.77/0.97  
% 2.77/0.97  fof(f30,plain,(
% 2.77/0.97    ! [X0] : ((v2_pre_topc(X0) <=> (sP0(X0) & ! [X3] : (r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) | ~r1_tarski(X3,u1_pre_topc(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(definition_folding,[],[f23,f29])).
% 2.77/0.97  
% 2.77/0.97  fof(f42,plain,(
% 2.77/0.97    ! [X0] : (((v2_pre_topc(X0) | (~sP0(X0) | ? [X3] : (~r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) & r1_tarski(X3,u1_pre_topc(X0)) & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)))) & ((sP0(X0) & ! [X3] : (r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) | ~r1_tarski(X3,u1_pre_topc(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) | ~v2_pre_topc(X0))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(nnf_transformation,[],[f30])).
% 2.77/0.97  
% 2.77/0.97  fof(f43,plain,(
% 2.77/0.97    ! [X0] : (((v2_pre_topc(X0) | ~sP0(X0) | ? [X3] : (~r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) & r1_tarski(X3,u1_pre_topc(X0)) & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) & ((sP0(X0) & ! [X3] : (r2_hidden(k5_setfam_1(u1_struct_0(X0),X3),u1_pre_topc(X0)) | ~r1_tarski(X3,u1_pre_topc(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) | ~v2_pre_topc(X0))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(flattening,[],[f42])).
% 2.77/0.97  
% 2.77/0.97  fof(f44,plain,(
% 2.77/0.97    ! [X0] : (((v2_pre_topc(X0) | ~sP0(X0) | ? [X1] : (~r2_hidden(k5_setfam_1(u1_struct_0(X0),X1),u1_pre_topc(X0)) & r1_tarski(X1,u1_pre_topc(X0)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) & ((sP0(X0) & ! [X2] : (r2_hidden(k5_setfam_1(u1_struct_0(X0),X2),u1_pre_topc(X0)) | ~r1_tarski(X2,u1_pre_topc(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) | ~v2_pre_topc(X0))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(rectify,[],[f43])).
% 2.77/0.97  
% 2.77/0.97  fof(f45,plain,(
% 2.77/0.97    ! [X0] : (? [X1] : (~r2_hidden(k5_setfam_1(u1_struct_0(X0),X1),u1_pre_topc(X0)) & r1_tarski(X1,u1_pre_topc(X0)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) => (~r2_hidden(k5_setfam_1(u1_struct_0(X0),sK4(X0)),u1_pre_topc(X0)) & r1_tarski(sK4(X0),u1_pre_topc(X0)) & m1_subset_1(sK4(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))))),
% 2.77/0.97    introduced(choice_axiom,[])).
% 2.77/0.97  
% 2.77/0.97  fof(f46,plain,(
% 2.77/0.97    ! [X0] : (((v2_pre_topc(X0) | ~sP0(X0) | (~r2_hidden(k5_setfam_1(u1_struct_0(X0),sK4(X0)),u1_pre_topc(X0)) & r1_tarski(sK4(X0),u1_pre_topc(X0)) & m1_subset_1(sK4(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) & ((sP0(X0) & ! [X2] : (r2_hidden(k5_setfam_1(u1_struct_0(X0),X2),u1_pre_topc(X0)) | ~r1_tarski(X2,u1_pre_topc(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))) | ~v2_pre_topc(X0))) | ~l1_pre_topc(X0))),
% 2.77/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f44,f45])).
% 2.77/0.97  
% 2.77/0.97  fof(f66,plain,(
% 2.77/0.97    ( ! [X0] : (r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) | ~v2_pre_topc(X0) | ~l1_pre_topc(X0)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f46])).
% 2.77/0.97  
% 2.77/0.97  fof(f11,axiom,(
% 2.77/0.97    ! [X0] : (~v1_xboole_0(X0) => (r2_hidden(k3_tarski(X0),X0) => k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f25,plain,(
% 2.77/0.97    ! [X0] : ((k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0)) | v1_xboole_0(X0))),
% 2.77/0.97    inference(ennf_transformation,[],[f11])).
% 2.77/0.97  
% 2.77/0.97  fof(f26,plain,(
% 2.77/0.97    ! [X0] : (k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0))),
% 2.77/0.97    inference(flattening,[],[f25])).
% 2.77/0.97  
% 2.77/0.97  fof(f73,plain,(
% 2.77/0.97    ( ! [X0] : (k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f26])).
% 2.77/0.97  
% 2.77/0.97  fof(f1,axiom,(
% 2.77/0.97    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.77/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.77/0.97  
% 2.77/0.97  fof(f31,plain,(
% 2.77/0.97    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.77/0.97    inference(nnf_transformation,[],[f1])).
% 2.77/0.97  
% 2.77/0.97  fof(f32,plain,(
% 2.77/0.97    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.77/0.97    inference(rectify,[],[f31])).
% 2.77/0.97  
% 2.77/0.97  fof(f33,plain,(
% 2.77/0.97    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 2.77/0.97    introduced(choice_axiom,[])).
% 2.77/0.97  
% 2.77/0.97  fof(f34,plain,(
% 2.77/0.97    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK1(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.77/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f32,f33])).
% 2.77/0.97  
% 2.77/0.97  fof(f49,plain,(
% 2.77/0.97    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 2.77/0.97    inference(cnf_transformation,[],[f34])).
% 2.77/0.97  
% 2.77/0.97  fof(f51,plain,(
% 2.77/0.97    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.77/0.97    inference(cnf_transformation,[],[f36])).
% 2.77/0.97  
% 2.77/0.97  fof(f78,plain,(
% 2.77/0.97    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.77/0.97    inference(equality_resolution,[],[f51])).
% 2.77/0.97  
% 2.77/0.97  fof(f76,plain,(
% 2.77/0.97    u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5)))),
% 2.77/0.97    inference(cnf_transformation,[],[f48])).
% 2.77/0.97  
% 2.77/0.97  cnf(c_23,plain,
% 2.77/0.97      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 2.77/0.97      | ~ l1_pre_topc(X0) ),
% 2.77/0.97      inference(cnf_transformation,[],[f72]) ).
% 2.77/0.97  
% 2.77/0.97  cnf(c_26,negated_conjecture,
% 2.77/0.97      ( l1_pre_topc(sK5) ),
% 2.77/0.97      inference(cnf_transformation,[],[f75]) ).
% 2.77/0.97  
% 2.77/0.97  cnf(c_383,plain,
% 2.77/0.97      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 2.77/0.97      | sK5 != X0 ),
% 2.77/0.97      inference(resolution_lifted,[status(thm)],[c_23,c_26]) ).
% 2.77/0.97  
% 2.77/0.97  cnf(c_384,plain,
% 2.77/0.97      ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) ),
% 2.77/0.97      inference(unflattening,[status(thm)],[c_383]) ).
% 2.77/0.97  
% 2.77/0.97  cnf(c_1406,plain,
% 2.77/0.97      ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
% 2.77/0.97      inference(predicate_to_equality,[status(thm)],[c_384]) ).
% 2.77/0.97  
% 2.77/0.97  cnf(c_10,plain,
% 2.77/0.97      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.77/0.98      inference(cnf_transformation,[],[f59]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1414,plain,
% 2.77/0.98      ( m1_subset_1(X0,X1) != iProver_top
% 2.77/0.98      | r2_hidden(X0,X1) = iProver_top
% 2.77/0.98      | v1_xboole_0(X1) = iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2502,plain,
% 2.77/0.98      ( r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top
% 2.77/0.98      | v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_1406,c_1414]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_29,plain,
% 2.77/0.98      ( l1_pre_topc(sK5) = iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_33,plain,
% 2.77/0.98      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
% 2.77/0.98      | l1_pre_topc(X0) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_35,plain,
% 2.77/0.98      ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top
% 2.77/0.98      | l1_pre_topc(sK5) != iProver_top ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_33]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1622,plain,
% 2.77/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.77/0.98      | r2_hidden(X0,k1_zfmisc_1(X1))
% 2.77/0.98      | v1_xboole_0(k1_zfmisc_1(X1)) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_10]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1972,plain,
% 2.77/0.98      ( ~ m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5))))
% 2.77/0.98      | r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5))))
% 2.77/0.98      | v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_1622]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1973,plain,
% 2.77/0.98      ( m1_subset_1(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) != iProver_top
% 2.77/0.98      | r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top
% 2.77/0.98      | v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_1972]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_9,plain,
% 2.77/0.98      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 2.77/0.98      inference(cnf_transformation,[],[f58]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1975,plain,
% 2.77/0.98      ( ~ v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_9]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1976,plain,
% 2.77/0.98      ( v1_xboole_0(k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_1975]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2616,plain,
% 2.77/0.98      ( r2_hidden(u1_pre_topc(sK5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK5)))) = iProver_top ),
% 2.77/0.98      inference(global_propositional_subsumption,
% 2.77/0.98                [status(thm)],
% 2.77/0.98                [c_2502,c_29,c_35,c_1973,c_1976]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_8,plain,
% 2.77/0.98      ( k3_tarski(k1_zfmisc_1(X0)) = X0 ),
% 2.77/0.98      inference(cnf_transformation,[],[f57]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_6,plain,
% 2.77/0.98      ( r1_tarski(X0,k3_tarski(X1)) | ~ r2_hidden(X0,X1) ),
% 2.77/0.98      inference(cnf_transformation,[],[f55]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1417,plain,
% 2.77/0.98      ( r1_tarski(X0,k3_tarski(X1)) = iProver_top
% 2.77/0.98      | r2_hidden(X0,X1) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1986,plain,
% 2.77/0.98      ( r1_tarski(X0,X1) = iProver_top
% 2.77/0.98      | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_8,c_1417]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2622,plain,
% 2.77/0.98      ( r1_tarski(u1_pre_topc(sK5),k1_zfmisc_1(u1_struct_0(sK5))) = iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_2616,c_1986]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_7,plain,
% 2.77/0.98      ( ~ r1_tarski(X0,X1) | r1_tarski(k3_tarski(X0),k3_tarski(X1)) ),
% 2.77/0.98      inference(cnf_transformation,[],[f56]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1416,plain,
% 2.77/0.98      ( r1_tarski(X0,X1) != iProver_top
% 2.77/0.98      | r1_tarski(k3_tarski(X0),k3_tarski(X1)) = iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2095,plain,
% 2.77/0.98      ( r1_tarski(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.77/0.98      | r1_tarski(k3_tarski(X0),X1) = iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_8,c_1416]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2630,plain,
% 2.77/0.98      ( r1_tarski(k3_tarski(u1_pre_topc(sK5)),u1_struct_0(sK5)) = iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_2622,c_2095]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2,plain,
% 2.77/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 2.77/0.98      inference(cnf_transformation,[],[f53]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1420,plain,
% 2.77/0.98      ( X0 = X1
% 2.77/0.98      | r1_tarski(X0,X1) != iProver_top
% 2.77/0.98      | r1_tarski(X1,X0) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2755,plain,
% 2.77/0.98      ( k3_tarski(u1_pre_topc(sK5)) = u1_struct_0(sK5)
% 2.77/0.98      | r1_tarski(u1_struct_0(sK5),k3_tarski(u1_pre_topc(sK5))) != iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_2630,c_1420]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_27,negated_conjecture,
% 2.77/0.98      ( v2_pre_topc(sK5) ),
% 2.77/0.98      inference(cnf_transformation,[],[f74]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_28,plain,
% 2.77/0.98      ( v2_pre_topc(sK5) = iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_22,plain,
% 2.77/0.98      ( r2_hidden(u1_struct_0(X0),u1_pre_topc(X0))
% 2.77/0.98      | ~ l1_pre_topc(X0)
% 2.77/0.98      | ~ v2_pre_topc(X0) ),
% 2.77/0.98      inference(cnf_transformation,[],[f66]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_36,plain,
% 2.77/0.98      ( r2_hidden(u1_struct_0(X0),u1_pre_topc(X0)) = iProver_top
% 2.77/0.98      | l1_pre_topc(X0) != iProver_top
% 2.77/0.98      | v2_pre_topc(X0) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_38,plain,
% 2.77/0.98      ( r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) = iProver_top
% 2.77/0.98      | l1_pre_topc(sK5) != iProver_top
% 2.77/0.98      | v2_pre_topc(sK5) != iProver_top ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_36]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1619,plain,
% 2.77/0.98      ( r1_tarski(u1_struct_0(sK5),k3_tarski(u1_pre_topc(sK5)))
% 2.77/0.98      | ~ r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_6]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1620,plain,
% 2.77/0.98      ( r1_tarski(u1_struct_0(sK5),k3_tarski(u1_pre_topc(sK5))) = iProver_top
% 2.77/0.98      | r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_1619]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2823,plain,
% 2.77/0.98      ( k3_tarski(u1_pre_topc(sK5)) = u1_struct_0(sK5) ),
% 2.77/0.98      inference(global_propositional_subsumption,
% 2.77/0.98                [status(thm)],
% 2.77/0.98                [c_2755,c_28,c_29,c_38,c_1620]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_24,plain,
% 2.77/0.98      ( ~ r2_hidden(k3_tarski(X0),X0)
% 2.77/0.98      | v1_xboole_0(X0)
% 2.77/0.98      | k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0) ),
% 2.77/0.98      inference(cnf_transformation,[],[f73]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1407,plain,
% 2.77/0.98      ( k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0)
% 2.77/0.98      | r2_hidden(k3_tarski(X0),X0) != iProver_top
% 2.77/0.98      | v1_xboole_0(X0) = iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1,plain,
% 2.77/0.98      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.77/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1421,plain,
% 2.77/0.98      ( r2_hidden(X0,X1) != iProver_top
% 2.77/0.98      | v1_xboole_0(X1) != iProver_top ),
% 2.77/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1488,plain,
% 2.77/0.98      ( k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0)
% 2.77/0.98      | r2_hidden(k3_tarski(X0),X0) != iProver_top ),
% 2.77/0.98      inference(forward_subsumption_resolution,
% 2.77/0.98                [status(thm)],
% 2.77/0.98                [c_1407,c_1421]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2829,plain,
% 2.77/0.98      ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) = k3_tarski(u1_pre_topc(sK5))
% 2.77/0.98      | r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) != iProver_top ),
% 2.77/0.98      inference(superposition,[status(thm)],[c_2823,c_1488]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_2837,plain,
% 2.77/0.98      ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) = u1_struct_0(sK5)
% 2.77/0.98      | r2_hidden(u1_struct_0(sK5),u1_pre_topc(sK5)) != iProver_top ),
% 2.77/0.98      inference(light_normalisation,[status(thm)],[c_2829,c_2823]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1011,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1572,plain,
% 2.77/0.98      ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) != X0
% 2.77/0.98      | u1_struct_0(sK5) != X0
% 2.77/0.98      | u1_struct_0(sK5) = k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_1011]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1644,plain,
% 2.77/0.98      ( k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) != u1_struct_0(sK5)
% 2.77/0.98      | u1_struct_0(sK5) = k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5)))
% 2.77/0.98      | u1_struct_0(sK5) != u1_struct_0(sK5) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_1572]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1019,plain,
% 2.77/0.98      ( X0 != X1 | u1_struct_0(X0) = u1_struct_0(X1) ),
% 2.77/0.98      theory(equality) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_1032,plain,
% 2.77/0.98      ( u1_struct_0(sK5) = u1_struct_0(sK5) | sK5 != sK5 ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_1019]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_85,plain,
% 2.77/0.98      ( ~ r1_tarski(sK5,sK5) | sK5 = sK5 ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_2]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_4,plain,
% 2.77/0.98      ( r1_tarski(X0,X0) ),
% 2.77/0.98      inference(cnf_transformation,[],[f78]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_81,plain,
% 2.77/0.98      ( r1_tarski(sK5,sK5) ),
% 2.77/0.98      inference(instantiation,[status(thm)],[c_4]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(c_25,negated_conjecture,
% 2.77/0.98      ( u1_struct_0(sK5) != k4_yellow_0(k2_yellow_1(u1_pre_topc(sK5))) ),
% 2.77/0.98      inference(cnf_transformation,[],[f76]) ).
% 2.77/0.98  
% 2.77/0.98  cnf(contradiction,plain,
% 2.77/0.98      ( $false ),
% 2.77/0.98      inference(minisat,
% 2.77/0.98                [status(thm)],
% 2.77/0.98                [c_2837,c_1644,c_1032,c_85,c_81,c_38,c_25,c_29,c_28]) ).
% 2.77/0.98  
% 2.77/0.98  
% 2.77/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 2.77/0.98  
% 2.77/0.98  ------                               Statistics
% 2.77/0.98  
% 2.77/0.98  ------ General
% 2.77/0.98  
% 2.77/0.98  abstr_ref_over_cycles:                  0
% 2.77/0.98  abstr_ref_under_cycles:                 0
% 2.77/0.98  gc_basic_clause_elim:                   0
% 2.77/0.98  forced_gc_time:                         0
% 2.77/0.98  parsing_time:                           0.011
% 2.77/0.98  unif_index_cands_time:                  0.
% 2.77/0.98  unif_index_add_time:                    0.
% 2.77/0.98  orderings_time:                         0.
% 2.77/0.98  out_proof_time:                         0.009
% 2.77/0.98  total_time:                             0.114
% 2.77/0.98  num_of_symbols:                         51
% 2.77/0.98  num_of_terms:                           1835
% 2.77/0.98  
% 2.77/0.98  ------ Preprocessing
% 2.77/0.98  
% 2.77/0.98  num_of_splits:                          0
% 2.77/0.98  num_of_split_atoms:                     0
% 2.77/0.98  num_of_reused_defs:                     0
% 2.77/0.98  num_eq_ax_congr_red:                    13
% 2.77/0.98  num_of_sem_filtered_clauses:            1
% 2.77/0.98  num_of_subtypes:                        0
% 2.77/0.98  monotx_restored_types:                  0
% 2.77/0.98  sat_num_of_epr_types:                   0
% 2.77/0.98  sat_num_of_non_cyclic_types:            0
% 2.77/0.98  sat_guarded_non_collapsed_types:        0
% 2.77/0.98  num_pure_diseq_elim:                    0
% 2.77/0.98  simp_replaced_by:                       0
% 2.77/0.98  res_preprocessed:                       124
% 2.77/0.98  prep_upred:                             0
% 2.77/0.98  prep_unflattend:                        29
% 2.77/0.98  smt_new_axioms:                         0
% 2.77/0.98  pred_elim_cands:                        5
% 2.77/0.98  pred_elim:                              2
% 2.77/0.98  pred_elim_cl:                           5
% 2.77/0.98  pred_elim_cycles:                       6
% 2.77/0.98  merged_defs:                            0
% 2.77/0.98  merged_defs_ncl:                        0
% 2.77/0.98  bin_hyper_res:                          0
% 2.77/0.98  prep_cycles:                            4
% 2.77/0.98  pred_elim_time:                         0.01
% 2.77/0.98  splitting_time:                         0.
% 2.77/0.98  sem_filter_time:                        0.
% 2.77/0.98  monotx_time:                            0.
% 2.77/0.98  subtype_inf_time:                       0.
% 2.77/0.98  
% 2.77/0.98  ------ Problem properties
% 2.77/0.98  
% 2.77/0.98  clauses:                                22
% 2.77/0.98  conjectures:                            1
% 2.77/0.98  epr:                                    6
% 2.77/0.98  horn:                                   15
% 2.77/0.98  ground:                                 4
% 2.77/0.98  unary:                                  7
% 2.77/0.98  binary:                                 9
% 2.77/0.98  lits:                                   46
% 2.77/0.98  lits_eq:                                4
% 2.77/0.98  fd_pure:                                0
% 2.77/0.98  fd_pseudo:                              0
% 2.77/0.98  fd_cond:                                0
% 2.77/0.98  fd_pseudo_cond:                         1
% 2.77/0.98  ac_symbols:                             0
% 2.77/0.98  
% 2.77/0.98  ------ Propositional Solver
% 2.77/0.98  
% 2.77/0.98  prop_solver_calls:                      27
% 2.77/0.98  prop_fast_solver_calls:                 750
% 2.77/0.98  smt_solver_calls:                       0
% 2.77/0.98  smt_fast_solver_calls:                  0
% 2.77/0.98  prop_num_of_clauses:                    742
% 2.77/0.98  prop_preprocess_simplified:             4416
% 2.77/0.98  prop_fo_subsumed:                       5
% 2.77/0.98  prop_solver_time:                       0.
% 2.77/0.98  smt_solver_time:                        0.
% 2.77/0.98  smt_fast_solver_time:                   0.
% 2.77/0.98  prop_fast_solver_time:                  0.
% 2.77/0.98  prop_unsat_core_time:                   0.
% 2.77/0.98  
% 2.77/0.98  ------ QBF
% 2.77/0.98  
% 2.77/0.98  qbf_q_res:                              0
% 2.77/0.98  qbf_num_tautologies:                    0
% 2.77/0.98  qbf_prep_cycles:                        0
% 2.77/0.98  
% 2.77/0.98  ------ BMC1
% 2.77/0.98  
% 2.77/0.98  bmc1_current_bound:                     -1
% 2.77/0.98  bmc1_last_solved_bound:                 -1
% 2.77/0.98  bmc1_unsat_core_size:                   -1
% 2.77/0.98  bmc1_unsat_core_parents_size:           -1
% 2.77/0.98  bmc1_merge_next_fun:                    0
% 2.77/0.98  bmc1_unsat_core_clauses_time:           0.
% 2.77/0.98  
% 2.77/0.98  ------ Instantiation
% 2.77/0.98  
% 2.77/0.98  inst_num_of_clauses:                    249
% 2.77/0.98  inst_num_in_passive:                    93
% 2.77/0.98  inst_num_in_active:                     156
% 2.77/0.98  inst_num_in_unprocessed:                0
% 2.77/0.98  inst_num_of_loops:                      160
% 2.77/0.98  inst_num_of_learning_restarts:          0
% 2.77/0.98  inst_num_moves_active_passive:          1
% 2.77/0.98  inst_lit_activity:                      0
% 2.77/0.98  inst_lit_activity_moves:                0
% 2.77/0.98  inst_num_tautologies:                   0
% 2.77/0.98  inst_num_prop_implied:                  0
% 2.77/0.98  inst_num_existing_simplified:           0
% 2.77/0.98  inst_num_eq_res_simplified:             0
% 2.77/0.98  inst_num_child_elim:                    0
% 2.77/0.98  inst_num_of_dismatching_blockings:      31
% 2.77/0.98  inst_num_of_non_proper_insts:           259
% 2.77/0.98  inst_num_of_duplicates:                 0
% 2.77/0.98  inst_inst_num_from_inst_to_res:         0
% 2.77/0.98  inst_dismatching_checking_time:         0.
% 2.77/0.98  
% 2.77/0.98  ------ Resolution
% 2.77/0.98  
% 2.77/0.98  res_num_of_clauses:                     0
% 2.77/0.98  res_num_in_passive:                     0
% 2.77/0.98  res_num_in_active:                      0
% 2.77/0.98  res_num_of_loops:                       128
% 2.77/0.98  res_forward_subset_subsumed:            55
% 2.77/0.98  res_backward_subset_subsumed:           0
% 2.77/0.98  res_forward_subsumed:                   0
% 2.77/0.98  res_backward_subsumed:                  0
% 2.77/0.98  res_forward_subsumption_resolution:     0
% 2.77/0.98  res_backward_subsumption_resolution:    0
% 2.77/0.98  res_clause_to_clause_subsumption:       106
% 2.77/0.98  res_orphan_elimination:                 0
% 2.77/0.98  res_tautology_del:                      31
% 2.77/0.98  res_num_eq_res_simplified:              0
% 2.77/0.98  res_num_sel_changes:                    0
% 2.77/0.98  res_moves_from_active_to_pass:          0
% 2.77/0.98  
% 2.77/0.98  ------ Superposition
% 2.77/0.98  
% 2.77/0.98  sup_time_total:                         0.
% 2.77/0.98  sup_time_generating:                    0.
% 2.77/0.98  sup_time_sim_full:                      0.
% 2.77/0.98  sup_time_sim_immed:                     0.
% 2.77/0.98  
% 2.77/0.98  sup_num_of_clauses:                     42
% 2.77/0.98  sup_num_in_active:                      30
% 2.77/0.98  sup_num_in_passive:                     12
% 2.77/0.98  sup_num_of_loops:                       30
% 2.77/0.98  sup_fw_superposition:                   20
% 2.77/0.98  sup_bw_superposition:                   9
% 2.77/0.98  sup_immediate_simplified:               8
% 2.77/0.98  sup_given_eliminated:                   0
% 2.77/0.98  comparisons_done:                       0
% 2.77/0.98  comparisons_avoided:                    0
% 2.77/0.98  
% 2.77/0.98  ------ Simplifications
% 2.77/0.98  
% 2.77/0.98  
% 2.77/0.98  sim_fw_subset_subsumed:                 0
% 2.77/0.98  sim_bw_subset_subsumed:                 0
% 2.77/0.98  sim_fw_subsumed:                        3
% 2.77/0.98  sim_bw_subsumed:                        1
% 2.77/0.98  sim_fw_subsumption_res:                 1
% 2.77/0.98  sim_bw_subsumption_res:                 0
% 2.77/0.98  sim_tautology_del:                      1
% 2.77/0.98  sim_eq_tautology_del:                   1
% 2.77/0.98  sim_eq_res_simp:                        0
% 2.77/0.98  sim_fw_demodulated:                     0
% 2.77/0.98  sim_bw_demodulated:                     1
% 2.77/0.98  sim_light_normalised:                   4
% 2.77/0.98  sim_joinable_taut:                      0
% 2.77/0.98  sim_joinable_simp:                      0
% 2.77/0.98  sim_ac_normalised:                      0
% 2.77/0.98  sim_smt_subsumption:                    0
% 2.77/0.98  
%------------------------------------------------------------------------------
