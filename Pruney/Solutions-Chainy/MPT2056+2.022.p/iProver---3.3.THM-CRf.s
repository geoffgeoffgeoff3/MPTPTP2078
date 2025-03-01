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
% DateTime   : Thu Dec  3 12:29:08 EST 2020

% Result     : Theorem 3.58s
% Output     : CNFRefutation 3.58s
% Verified   : 
% Statistics : Number of formulae       :  173 ( 596 expanded)
%              Number of clauses        :   92 ( 164 expanded)
%              Number of leaves         :   24 ( 157 expanded)
%              Depth                    :   28
%              Number of atoms          :  534 (2831 expanded)
%              Number of equality atoms :  159 ( 537 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
     => r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f64,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

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

fof(f49,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f5])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f41,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f22,f41])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f8,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f37])).

fof(f39,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f38,f39])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f48,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f43])).

fof(f59,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f17,conjecture,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
            & ~ v1_xboole_0(X1) )
         => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_struct_0(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
              & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
              & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
              & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
              & ~ v1_xboole_0(X1) )
           => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1 ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f31,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
      & l1_struct_0(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
      & l1_struct_0(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f46,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
     => ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),sK4)) != sK4
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
        & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(X0)))
        & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(X0)))
        & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
        & ~ v1_xboole_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
            & ~ v1_xboole_0(X1) )
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X1)) != X1
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK3)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK3)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))
          & ~ v1_xboole_0(X1) )
      & l1_struct_0(sK3)
      & ~ v2_struct_0(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))))
    & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))
    & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))
    & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))
    & ~ v1_xboole_0(sK4)
    & l1_struct_0(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f32,f46,f45])).

fof(f76,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))) ),
    inference(cnf_transformation,[],[f47])).

fof(f14,axiom,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    inference(cnf_transformation,[],[f14])).

fof(f82,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))) ),
    inference(definition_unfolding,[],[f76,f67])).

fof(f74,plain,(
    v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f47])).

fof(f84,plain,(
    v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(definition_unfolding,[],[f74,f67])).

fof(f75,plain,(
    v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f47])).

fof(f83,plain,(
    v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(definition_unfolding,[],[f75,f67])).

fof(f16,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0))))
            & v13_waybel_0(X1,k3_yellow_1(X0))
            & v2_waybel_0(X1,k3_yellow_1(X0))
            & v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0)))
            & ~ v1_xboole_0(X1) )
         => ! [X2] :
              ~ ( v1_xboole_0(X2)
                & r2_hidden(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ v1_xboole_0(X2)
              | ~ r2_hidden(X2,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0))))
          | ~ v13_waybel_0(X1,k3_yellow_1(X0))
          | ~ v2_waybel_0(X1,k3_yellow_1(X0))
          | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0)))
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ v1_xboole_0(X2)
              | ~ r2_hidden(X2,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0))))
          | ~ v13_waybel_0(X1,k3_yellow_1(X0))
          | ~ v2_waybel_0(X1,k3_yellow_1(X0))
          | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0)))
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0))))
      | ~ v13_waybel_0(X1,k3_yellow_1(X0))
      | ~ v2_waybel_0(X1,k3_yellow_1(X0))
      | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0)))
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f81,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0))))
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f69,f67,f67,f67,f67])).

fof(f73,plain,(
    v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f47])).

fof(f85,plain,(
    v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) ),
    inference(definition_unfolding,[],[f73,f67])).

fof(f72,plain,(
    ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f47])).

fof(f70,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f71,plain,(
    l1_struct_0(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f13,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f26,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f66,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f55,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1))
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f7,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X1,k3_xboole_0(X1,X2)) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f65,f60])).

fof(f15,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f68,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
      | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f80,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f68,f67,f67,f67,f67])).

fof(f77,plain,(
    k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 ),
    inference(cnf_transformation,[],[f47])).

fof(f10,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f10])).

fof(f9,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f9])).

fof(f78,plain,(
    ! [X0] : k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f62,f60])).

cnf(c_5,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1013,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_15,plain,
    ( r1_xboole_0(k1_tarski(X0),X1)
    | r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1005,plain,
    ( r1_xboole_0(k1_tarski(X0),X1) = iProver_top
    | r2_hidden(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1018,plain,
    ( r2_hidden(sK0(X0),X0) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_7,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1011,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r2_hidden(X2,k3_xboole_0(X0,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2006,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | v1_xboole_0(k3_xboole_0(X0,X1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1018,c_1011])).

cnf(c_12,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1007,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1015,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1017,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1872,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1015,c_1017])).

cnf(c_9,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1009,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2433,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1872,c_1009])).

cnf(c_2466,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1007,c_2433])).

cnf(c_2621,plain,
    ( k3_xboole_0(X0,X1) = k1_xboole_0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2006,c_2466])).

cnf(c_2881,plain,
    ( k3_xboole_0(k1_tarski(X0),X1) = k1_xboole_0
    | r2_hidden(X0,X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1005,c_2621])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_23,negated_conjecture,
    ( v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_22,negated_conjecture,
    ( v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_19,plain,
    ( ~ v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
    | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_24,negated_conjecture,
    ( v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_290,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_24])).

cnf(c_291,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | v1_xboole_0(sK4)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(unflattening,[status(thm)],[c_290])).

cnf(c_25,negated_conjecture,
    ( ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_293,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(X1)
    | ~ r2_hidden(X1,sK4)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_291,c_25])).

cnf(c_294,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(renaming,[status(thm)],[c_293])).

cnf(c_373,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_294])).

cnf(c_418,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_373])).

cnf(c_459,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_418])).

cnf(c_510,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))) ),
    inference(equality_resolution_simp,[status(thm)],[c_459])).

cnf(c_623,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ v1_xboole_0(X0)
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_510])).

cnf(c_1001,plain,
    ( r2_hidden(X0,sK4) != iProver_top
    | v1_xboole_0(X0) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_623])).

cnf(c_3260,plain,
    ( k3_xboole_0(k1_tarski(X0),sK4) = k1_xboole_0
    | v1_xboole_0(X0) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2881,c_1001])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_28,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_26,negated_conjecture,
    ( l1_struct_0(sK3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_29,plain,
    ( l1_struct_0(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_17,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(k2_struct_0(X0)) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_39,plain,
    ( v2_struct_0(X0) = iProver_top
    | l1_struct_0(X0) != iProver_top
    | v1_xboole_0(k2_struct_0(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_41,plain,
    ( v2_struct_0(sK3) = iProver_top
    | l1_struct_0(sK3) != iProver_top
    | v1_xboole_0(k2_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_39])).

cnf(c_624,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_510])).

cnf(c_660,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_624])).

cnf(c_622,plain,
    ( v1_xboole_0(X0)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_510])).

cnf(c_1002,plain,
    ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
    | v1_xboole_0(X0) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_622])).

cnf(c_1446,plain,
    ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
    | v1_xboole_0(k2_struct_0(sK3)) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1002])).

cnf(c_640,plain,
    ( X0 != X1
    | u1_struct_0(X0) = u1_struct_0(X1) ),
    theory(equality)).

cnf(c_1261,plain,
    ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) = u1_struct_0(X0)
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != X0 ),
    inference(instantiation,[status(thm)],[c_640])).

cnf(c_1468,plain,
    ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) = u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3))) ),
    inference(instantiation,[status(thm)],[c_1261])).

cnf(c_626,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1469,plain,
    ( k3_lattice3(k1_lattice3(k2_struct_0(sK3))) = k3_lattice3(k1_lattice3(k2_struct_0(sK3))) ),
    inference(instantiation,[status(thm)],[c_626])).

cnf(c_3482,plain,
    ( v1_xboole_0(X0) != iProver_top
    | k3_xboole_0(k1_tarski(X0),sK4) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3260,c_28,c_29,c_41,c_660,c_1446,c_1468,c_1469])).

cnf(c_3483,plain,
    ( k3_xboole_0(k1_tarski(X0),sK4) = k1_xboole_0
    | v1_xboole_0(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_3482])).

cnf(c_3490,plain,
    ( k3_xboole_0(k1_tarski(k1_xboole_0),sK4) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1013,c_3483])).

cnf(c_8,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1010,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1999,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | v1_xboole_0(k3_xboole_0(X0,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1010,c_1017])).

cnf(c_3577,plain,
    ( r1_xboole_0(k1_tarski(k1_xboole_0),sK4) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3490,c_1999])).

cnf(c_69,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_3675,plain,
    ( r1_xboole_0(k1_tarski(k1_xboole_0),sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3577,c_69])).

cnf(c_6,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1012,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r1_xboole_0(X1,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_3683,plain,
    ( r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3675,c_1012])).

cnf(c_3892,plain,
    ( k3_xboole_0(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3683,c_2621])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X0,k3_xboole_0(X0,X2)) = k7_subset_1(X1,X0,X2) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_450,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k7_subset_1(X2,X0,X1)
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X2)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_21])).

cnf(c_451,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK4,X0)) = k7_subset_1(X1,sK4,X0)
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X1) ),
    inference(unflattening,[status(thm)],[c_450])).

cnf(c_1174,plain,
    ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,X0) = k5_xboole_0(sK4,k3_xboole_0(sK4,X0)) ),
    inference(equality_resolution,[status(thm)],[c_451])).

cnf(c_18,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
    | v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_338,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
    | v2_struct_0(X1)
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0))
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_26])).

cnf(c_339,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v2_struct_0(sK3)
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
    inference(unflattening,[status(thm)],[c_338])).

cnf(c_343,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_339,c_27])).

cnf(c_344,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
    inference(renaming,[status(thm)],[c_343])).

cnf(c_400,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_344])).

cnf(c_401,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v1_xboole_0(sK4)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
    inference(unflattening,[status(thm)],[c_400])).

cnf(c_403,plain,
    ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_401,c_25,c_23,c_21])).

cnf(c_1191,plain,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) = k5_xboole_0(sK4,k3_xboole_0(sK4,k1_tarski(k1_xboole_0))) ),
    inference(demodulation,[status(thm)],[c_1174,c_403])).

cnf(c_20,negated_conjecture,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1193,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK4,k1_tarski(k1_xboole_0))) != sK4 ),
    inference(demodulation,[status(thm)],[c_1191,c_20])).

cnf(c_11123,plain,
    ( k5_xboole_0(sK4,k1_xboole_0) != sK4 ),
    inference(demodulation,[status(thm)],[c_3892,c_1193])).

cnf(c_14,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1006,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2880,plain,
    ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1006,c_2621])).

cnf(c_13,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_2905,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(demodulation,[status(thm)],[c_2880,c_13])).

cnf(c_11129,plain,
    ( sK4 != sK4 ),
    inference(demodulation,[status(thm)],[c_11123,c_2905])).

cnf(c_11130,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_11129])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n017.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:40:46 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.58/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.58/0.98  
% 3.58/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.58/0.98  
% 3.58/0.98  ------  iProver source info
% 3.58/0.98  
% 3.58/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.58/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.58/0.98  git: non_committed_changes: false
% 3.58/0.98  git: last_make_outside_of_git: false
% 3.58/0.98  
% 3.58/0.98  ------ 
% 3.58/0.98  
% 3.58/0.98  ------ Input Options
% 3.58/0.98  
% 3.58/0.98  --out_options                           all
% 3.58/0.98  --tptp_safe_out                         true
% 3.58/0.98  --problem_path                          ""
% 3.58/0.98  --include_path                          ""
% 3.58/0.98  --clausifier                            res/vclausify_rel
% 3.58/0.98  --clausifier_options                    --mode clausify
% 3.58/0.98  --stdin                                 false
% 3.58/0.98  --stats_out                             all
% 3.58/0.98  
% 3.58/0.98  ------ General Options
% 3.58/0.98  
% 3.58/0.98  --fof                                   false
% 3.58/0.98  --time_out_real                         305.
% 3.58/0.98  --time_out_virtual                      -1.
% 3.58/0.98  --symbol_type_check                     false
% 3.58/0.98  --clausify_out                          false
% 3.58/0.98  --sig_cnt_out                           false
% 3.58/0.98  --trig_cnt_out                          false
% 3.58/0.98  --trig_cnt_out_tolerance                1.
% 3.58/0.98  --trig_cnt_out_sk_spl                   false
% 3.58/0.98  --abstr_cl_out                          false
% 3.58/0.98  
% 3.58/0.98  ------ Global Options
% 3.58/0.98  
% 3.58/0.98  --schedule                              default
% 3.58/0.98  --add_important_lit                     false
% 3.58/0.98  --prop_solver_per_cl                    1000
% 3.58/0.98  --min_unsat_core                        false
% 3.58/0.98  --soft_assumptions                      false
% 3.58/0.98  --soft_lemma_size                       3
% 3.58/0.98  --prop_impl_unit_size                   0
% 3.58/0.98  --prop_impl_unit                        []
% 3.58/0.98  --share_sel_clauses                     true
% 3.58/0.98  --reset_solvers                         false
% 3.58/0.98  --bc_imp_inh                            [conj_cone]
% 3.58/0.98  --conj_cone_tolerance                   3.
% 3.58/0.98  --extra_neg_conj                        none
% 3.58/0.98  --large_theory_mode                     true
% 3.58/0.98  --prolific_symb_bound                   200
% 3.58/0.98  --lt_threshold                          2000
% 3.58/0.98  --clause_weak_htbl                      true
% 3.58/0.98  --gc_record_bc_elim                     false
% 3.58/0.98  
% 3.58/0.98  ------ Preprocessing Options
% 3.58/0.98  
% 3.58/0.98  --preprocessing_flag                    true
% 3.58/0.98  --time_out_prep_mult                    0.1
% 3.58/0.98  --splitting_mode                        input
% 3.58/0.98  --splitting_grd                         true
% 3.58/0.98  --splitting_cvd                         false
% 3.58/0.98  --splitting_cvd_svl                     false
% 3.58/0.98  --splitting_nvd                         32
% 3.58/0.98  --sub_typing                            true
% 3.58/0.98  --prep_gs_sim                           true
% 3.58/0.98  --prep_unflatten                        true
% 3.58/0.98  --prep_res_sim                          true
% 3.58/0.98  --prep_upred                            true
% 3.58/0.98  --prep_sem_filter                       exhaustive
% 3.58/0.98  --prep_sem_filter_out                   false
% 3.58/0.98  --pred_elim                             true
% 3.58/0.98  --res_sim_input                         true
% 3.58/0.98  --eq_ax_congr_red                       true
% 3.58/0.98  --pure_diseq_elim                       true
% 3.58/0.98  --brand_transform                       false
% 3.58/0.98  --non_eq_to_eq                          false
% 3.58/0.98  --prep_def_merge                        true
% 3.58/0.98  --prep_def_merge_prop_impl              false
% 3.58/0.98  --prep_def_merge_mbd                    true
% 3.58/0.98  --prep_def_merge_tr_red                 false
% 3.58/0.98  --prep_def_merge_tr_cl                  false
% 3.58/0.98  --smt_preprocessing                     true
% 3.58/0.98  --smt_ac_axioms                         fast
% 3.58/0.98  --preprocessed_out                      false
% 3.58/0.98  --preprocessed_stats                    false
% 3.58/0.98  
% 3.58/0.98  ------ Abstraction refinement Options
% 3.58/0.98  
% 3.58/0.98  --abstr_ref                             []
% 3.58/0.98  --abstr_ref_prep                        false
% 3.58/0.98  --abstr_ref_until_sat                   false
% 3.58/0.98  --abstr_ref_sig_restrict                funpre
% 3.58/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.58/0.98  --abstr_ref_under                       []
% 3.58/0.98  
% 3.58/0.98  ------ SAT Options
% 3.58/0.98  
% 3.58/0.98  --sat_mode                              false
% 3.58/0.98  --sat_fm_restart_options                ""
% 3.58/0.98  --sat_gr_def                            false
% 3.58/0.98  --sat_epr_types                         true
% 3.58/0.98  --sat_non_cyclic_types                  false
% 3.58/0.98  --sat_finite_models                     false
% 3.58/0.98  --sat_fm_lemmas                         false
% 3.58/0.98  --sat_fm_prep                           false
% 3.58/0.98  --sat_fm_uc_incr                        true
% 3.58/0.98  --sat_out_model                         small
% 3.58/0.98  --sat_out_clauses                       false
% 3.58/0.98  
% 3.58/0.98  ------ QBF Options
% 3.58/0.98  
% 3.58/0.98  --qbf_mode                              false
% 3.58/0.98  --qbf_elim_univ                         false
% 3.58/0.98  --qbf_dom_inst                          none
% 3.58/0.98  --qbf_dom_pre_inst                      false
% 3.58/0.98  --qbf_sk_in                             false
% 3.58/0.98  --qbf_pred_elim                         true
% 3.58/0.98  --qbf_split                             512
% 3.58/0.98  
% 3.58/0.98  ------ BMC1 Options
% 3.58/0.98  
% 3.58/0.98  --bmc1_incremental                      false
% 3.58/0.98  --bmc1_axioms                           reachable_all
% 3.58/0.98  --bmc1_min_bound                        0
% 3.58/0.98  --bmc1_max_bound                        -1
% 3.58/0.98  --bmc1_max_bound_default                -1
% 3.58/0.98  --bmc1_symbol_reachability              true
% 3.58/0.98  --bmc1_property_lemmas                  false
% 3.58/0.98  --bmc1_k_induction                      false
% 3.58/0.98  --bmc1_non_equiv_states                 false
% 3.58/0.98  --bmc1_deadlock                         false
% 3.58/0.98  --bmc1_ucm                              false
% 3.58/0.98  --bmc1_add_unsat_core                   none
% 3.58/0.98  --bmc1_unsat_core_children              false
% 3.58/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.58/0.98  --bmc1_out_stat                         full
% 3.58/0.98  --bmc1_ground_init                      false
% 3.58/0.98  --bmc1_pre_inst_next_state              false
% 3.58/0.98  --bmc1_pre_inst_state                   false
% 3.58/0.98  --bmc1_pre_inst_reach_state             false
% 3.58/0.98  --bmc1_out_unsat_core                   false
% 3.58/0.98  --bmc1_aig_witness_out                  false
% 3.58/0.98  --bmc1_verbose                          false
% 3.58/0.98  --bmc1_dump_clauses_tptp                false
% 3.58/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.58/0.98  --bmc1_dump_file                        -
% 3.58/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.58/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.58/0.98  --bmc1_ucm_extend_mode                  1
% 3.58/0.98  --bmc1_ucm_init_mode                    2
% 3.58/0.98  --bmc1_ucm_cone_mode                    none
% 3.58/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.58/0.98  --bmc1_ucm_relax_model                  4
% 3.58/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.58/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.58/0.98  --bmc1_ucm_layered_model                none
% 3.58/0.98  --bmc1_ucm_max_lemma_size               10
% 3.58/0.98  
% 3.58/0.98  ------ AIG Options
% 3.58/0.98  
% 3.58/0.98  --aig_mode                              false
% 3.58/0.98  
% 3.58/0.98  ------ Instantiation Options
% 3.58/0.98  
% 3.58/0.98  --instantiation_flag                    true
% 3.58/0.98  --inst_sos_flag                         false
% 3.58/0.98  --inst_sos_phase                        true
% 3.58/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.58/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.58/0.98  --inst_lit_sel_side                     num_symb
% 3.58/0.98  --inst_solver_per_active                1400
% 3.58/0.98  --inst_solver_calls_frac                1.
% 3.58/0.98  --inst_passive_queue_type               priority_queues
% 3.58/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.58/0.98  --inst_passive_queues_freq              [25;2]
% 3.58/0.98  --inst_dismatching                      true
% 3.58/0.98  --inst_eager_unprocessed_to_passive     true
% 3.58/0.98  --inst_prop_sim_given                   true
% 3.58/0.98  --inst_prop_sim_new                     false
% 3.58/0.98  --inst_subs_new                         false
% 3.58/0.98  --inst_eq_res_simp                      false
% 3.58/0.98  --inst_subs_given                       false
% 3.58/0.98  --inst_orphan_elimination               true
% 3.58/0.98  --inst_learning_loop_flag               true
% 3.58/0.98  --inst_learning_start                   3000
% 3.58/0.98  --inst_learning_factor                  2
% 3.58/0.98  --inst_start_prop_sim_after_learn       3
% 3.58/0.98  --inst_sel_renew                        solver
% 3.58/0.98  --inst_lit_activity_flag                true
% 3.58/0.98  --inst_restr_to_given                   false
% 3.58/0.98  --inst_activity_threshold               500
% 3.58/0.98  --inst_out_proof                        true
% 3.58/0.98  
% 3.58/0.98  ------ Resolution Options
% 3.58/0.98  
% 3.58/0.98  --resolution_flag                       true
% 3.58/0.98  --res_lit_sel                           adaptive
% 3.58/0.98  --res_lit_sel_side                      none
% 3.58/0.98  --res_ordering                          kbo
% 3.58/0.98  --res_to_prop_solver                    active
% 3.58/0.98  --res_prop_simpl_new                    false
% 3.58/0.98  --res_prop_simpl_given                  true
% 3.58/0.98  --res_passive_queue_type                priority_queues
% 3.58/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.58/0.98  --res_passive_queues_freq               [15;5]
% 3.58/0.98  --res_forward_subs                      full
% 3.58/0.98  --res_backward_subs                     full
% 3.58/0.98  --res_forward_subs_resolution           true
% 3.58/0.98  --res_backward_subs_resolution          true
% 3.58/0.98  --res_orphan_elimination                true
% 3.58/0.98  --res_time_limit                        2.
% 3.58/0.98  --res_out_proof                         true
% 3.58/0.98  
% 3.58/0.98  ------ Superposition Options
% 3.58/0.98  
% 3.58/0.98  --superposition_flag                    true
% 3.58/0.98  --sup_passive_queue_type                priority_queues
% 3.58/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.58/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.58/0.98  --demod_completeness_check              fast
% 3.58/0.98  --demod_use_ground                      true
% 3.58/0.98  --sup_to_prop_solver                    passive
% 3.58/0.98  --sup_prop_simpl_new                    true
% 3.58/0.98  --sup_prop_simpl_given                  true
% 3.58/0.98  --sup_fun_splitting                     false
% 3.58/0.98  --sup_smt_interval                      50000
% 3.58/0.98  
% 3.58/0.98  ------ Superposition Simplification Setup
% 3.58/0.98  
% 3.58/0.98  --sup_indices_passive                   []
% 3.58/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.58/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.58/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.58/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.58/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.58/0.98  --sup_full_bw                           [BwDemod]
% 3.58/0.98  --sup_immed_triv                        [TrivRules]
% 3.58/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.58/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.58/0.98  --sup_immed_bw_main                     []
% 3.58/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.58/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.58/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.58/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.58/0.98  
% 3.58/0.98  ------ Combination Options
% 3.58/0.98  
% 3.58/0.98  --comb_res_mult                         3
% 3.58/0.98  --comb_sup_mult                         2
% 3.58/0.98  --comb_inst_mult                        10
% 3.58/0.98  
% 3.58/0.98  ------ Debug Options
% 3.58/0.98  
% 3.58/0.98  --dbg_backtrace                         false
% 3.58/0.98  --dbg_dump_prop_clauses                 false
% 3.58/0.98  --dbg_dump_prop_clauses_file            -
% 3.58/0.98  --dbg_out_stat                          false
% 3.58/0.98  ------ Parsing...
% 3.58/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.58/0.98  
% 3.58/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 3.58/0.98  
% 3.58/0.98  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.58/0.98  
% 3.58/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.58/0.98  ------ Proving...
% 3.58/0.98  ------ Problem Properties 
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  clauses                                 23
% 3.58/0.98  conjectures                             2
% 3.58/0.98  EPR                                     11
% 3.58/0.98  Horn                                    18
% 3.58/0.98  unary                                   9
% 3.58/0.98  binary                                  10
% 3.58/0.98  lits                                    43
% 3.58/0.98  lits eq                                 9
% 3.58/0.98  fd_pure                                 0
% 3.58/0.98  fd_pseudo                               0
% 3.58/0.98  fd_cond                                 0
% 3.58/0.98  fd_pseudo_cond                          1
% 3.58/0.98  AC symbols                              0
% 3.58/0.98  
% 3.58/0.98  ------ Schedule dynamic 5 is on 
% 3.58/0.98  
% 3.58/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  ------ 
% 3.58/0.98  Current options:
% 3.58/0.98  ------ 
% 3.58/0.98  
% 3.58/0.98  ------ Input Options
% 3.58/0.98  
% 3.58/0.98  --out_options                           all
% 3.58/0.98  --tptp_safe_out                         true
% 3.58/0.98  --problem_path                          ""
% 3.58/0.98  --include_path                          ""
% 3.58/0.98  --clausifier                            res/vclausify_rel
% 3.58/0.98  --clausifier_options                    --mode clausify
% 3.58/0.98  --stdin                                 false
% 3.58/0.98  --stats_out                             all
% 3.58/0.98  
% 3.58/0.98  ------ General Options
% 3.58/0.98  
% 3.58/0.98  --fof                                   false
% 3.58/0.98  --time_out_real                         305.
% 3.58/0.98  --time_out_virtual                      -1.
% 3.58/0.98  --symbol_type_check                     false
% 3.58/0.98  --clausify_out                          false
% 3.58/0.98  --sig_cnt_out                           false
% 3.58/0.98  --trig_cnt_out                          false
% 3.58/0.98  --trig_cnt_out_tolerance                1.
% 3.58/0.98  --trig_cnt_out_sk_spl                   false
% 3.58/0.98  --abstr_cl_out                          false
% 3.58/0.98  
% 3.58/0.98  ------ Global Options
% 3.58/0.98  
% 3.58/0.98  --schedule                              default
% 3.58/0.98  --add_important_lit                     false
% 3.58/0.98  --prop_solver_per_cl                    1000
% 3.58/0.98  --min_unsat_core                        false
% 3.58/0.98  --soft_assumptions                      false
% 3.58/0.98  --soft_lemma_size                       3
% 3.58/0.98  --prop_impl_unit_size                   0
% 3.58/0.98  --prop_impl_unit                        []
% 3.58/0.98  --share_sel_clauses                     true
% 3.58/0.98  --reset_solvers                         false
% 3.58/0.98  --bc_imp_inh                            [conj_cone]
% 3.58/0.98  --conj_cone_tolerance                   3.
% 3.58/0.98  --extra_neg_conj                        none
% 3.58/0.98  --large_theory_mode                     true
% 3.58/0.98  --prolific_symb_bound                   200
% 3.58/0.98  --lt_threshold                          2000
% 3.58/0.98  --clause_weak_htbl                      true
% 3.58/0.98  --gc_record_bc_elim                     false
% 3.58/0.98  
% 3.58/0.98  ------ Preprocessing Options
% 3.58/0.98  
% 3.58/0.98  --preprocessing_flag                    true
% 3.58/0.98  --time_out_prep_mult                    0.1
% 3.58/0.98  --splitting_mode                        input
% 3.58/0.98  --splitting_grd                         true
% 3.58/0.98  --splitting_cvd                         false
% 3.58/0.98  --splitting_cvd_svl                     false
% 3.58/0.98  --splitting_nvd                         32
% 3.58/0.98  --sub_typing                            true
% 3.58/0.98  --prep_gs_sim                           true
% 3.58/0.98  --prep_unflatten                        true
% 3.58/0.98  --prep_res_sim                          true
% 3.58/0.98  --prep_upred                            true
% 3.58/0.98  --prep_sem_filter                       exhaustive
% 3.58/0.98  --prep_sem_filter_out                   false
% 3.58/0.98  --pred_elim                             true
% 3.58/0.98  --res_sim_input                         true
% 3.58/0.98  --eq_ax_congr_red                       true
% 3.58/0.98  --pure_diseq_elim                       true
% 3.58/0.98  --brand_transform                       false
% 3.58/0.98  --non_eq_to_eq                          false
% 3.58/0.98  --prep_def_merge                        true
% 3.58/0.98  --prep_def_merge_prop_impl              false
% 3.58/0.98  --prep_def_merge_mbd                    true
% 3.58/0.98  --prep_def_merge_tr_red                 false
% 3.58/0.98  --prep_def_merge_tr_cl                  false
% 3.58/0.98  --smt_preprocessing                     true
% 3.58/0.98  --smt_ac_axioms                         fast
% 3.58/0.98  --preprocessed_out                      false
% 3.58/0.98  --preprocessed_stats                    false
% 3.58/0.98  
% 3.58/0.98  ------ Abstraction refinement Options
% 3.58/0.98  
% 3.58/0.98  --abstr_ref                             []
% 3.58/0.98  --abstr_ref_prep                        false
% 3.58/0.98  --abstr_ref_until_sat                   false
% 3.58/0.98  --abstr_ref_sig_restrict                funpre
% 3.58/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.58/0.98  --abstr_ref_under                       []
% 3.58/0.98  
% 3.58/0.98  ------ SAT Options
% 3.58/0.98  
% 3.58/0.98  --sat_mode                              false
% 3.58/0.98  --sat_fm_restart_options                ""
% 3.58/0.98  --sat_gr_def                            false
% 3.58/0.98  --sat_epr_types                         true
% 3.58/0.98  --sat_non_cyclic_types                  false
% 3.58/0.98  --sat_finite_models                     false
% 3.58/0.98  --sat_fm_lemmas                         false
% 3.58/0.98  --sat_fm_prep                           false
% 3.58/0.98  --sat_fm_uc_incr                        true
% 3.58/0.98  --sat_out_model                         small
% 3.58/0.98  --sat_out_clauses                       false
% 3.58/0.98  
% 3.58/0.98  ------ QBF Options
% 3.58/0.98  
% 3.58/0.98  --qbf_mode                              false
% 3.58/0.98  --qbf_elim_univ                         false
% 3.58/0.98  --qbf_dom_inst                          none
% 3.58/0.98  --qbf_dom_pre_inst                      false
% 3.58/0.98  --qbf_sk_in                             false
% 3.58/0.98  --qbf_pred_elim                         true
% 3.58/0.98  --qbf_split                             512
% 3.58/0.98  
% 3.58/0.98  ------ BMC1 Options
% 3.58/0.98  
% 3.58/0.98  --bmc1_incremental                      false
% 3.58/0.98  --bmc1_axioms                           reachable_all
% 3.58/0.98  --bmc1_min_bound                        0
% 3.58/0.98  --bmc1_max_bound                        -1
% 3.58/0.98  --bmc1_max_bound_default                -1
% 3.58/0.98  --bmc1_symbol_reachability              true
% 3.58/0.98  --bmc1_property_lemmas                  false
% 3.58/0.98  --bmc1_k_induction                      false
% 3.58/0.98  --bmc1_non_equiv_states                 false
% 3.58/0.98  --bmc1_deadlock                         false
% 3.58/0.98  --bmc1_ucm                              false
% 3.58/0.98  --bmc1_add_unsat_core                   none
% 3.58/0.98  --bmc1_unsat_core_children              false
% 3.58/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.58/0.98  --bmc1_out_stat                         full
% 3.58/0.98  --bmc1_ground_init                      false
% 3.58/0.98  --bmc1_pre_inst_next_state              false
% 3.58/0.98  --bmc1_pre_inst_state                   false
% 3.58/0.98  --bmc1_pre_inst_reach_state             false
% 3.58/0.98  --bmc1_out_unsat_core                   false
% 3.58/0.98  --bmc1_aig_witness_out                  false
% 3.58/0.98  --bmc1_verbose                          false
% 3.58/0.98  --bmc1_dump_clauses_tptp                false
% 3.58/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.58/0.98  --bmc1_dump_file                        -
% 3.58/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.58/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.58/0.98  --bmc1_ucm_extend_mode                  1
% 3.58/0.98  --bmc1_ucm_init_mode                    2
% 3.58/0.98  --bmc1_ucm_cone_mode                    none
% 3.58/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.58/0.98  --bmc1_ucm_relax_model                  4
% 3.58/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.58/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.58/0.98  --bmc1_ucm_layered_model                none
% 3.58/0.98  --bmc1_ucm_max_lemma_size               10
% 3.58/0.98  
% 3.58/0.98  ------ AIG Options
% 3.58/0.98  
% 3.58/0.98  --aig_mode                              false
% 3.58/0.98  
% 3.58/0.98  ------ Instantiation Options
% 3.58/0.98  
% 3.58/0.98  --instantiation_flag                    true
% 3.58/0.98  --inst_sos_flag                         false
% 3.58/0.98  --inst_sos_phase                        true
% 3.58/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.58/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.58/0.98  --inst_lit_sel_side                     none
% 3.58/0.98  --inst_solver_per_active                1400
% 3.58/0.98  --inst_solver_calls_frac                1.
% 3.58/0.98  --inst_passive_queue_type               priority_queues
% 3.58/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.58/0.98  --inst_passive_queues_freq              [25;2]
% 3.58/0.98  --inst_dismatching                      true
% 3.58/0.98  --inst_eager_unprocessed_to_passive     true
% 3.58/0.98  --inst_prop_sim_given                   true
% 3.58/0.98  --inst_prop_sim_new                     false
% 3.58/0.98  --inst_subs_new                         false
% 3.58/0.98  --inst_eq_res_simp                      false
% 3.58/0.98  --inst_subs_given                       false
% 3.58/0.98  --inst_orphan_elimination               true
% 3.58/0.98  --inst_learning_loop_flag               true
% 3.58/0.98  --inst_learning_start                   3000
% 3.58/0.98  --inst_learning_factor                  2
% 3.58/0.98  --inst_start_prop_sim_after_learn       3
% 3.58/0.98  --inst_sel_renew                        solver
% 3.58/0.98  --inst_lit_activity_flag                true
% 3.58/0.98  --inst_restr_to_given                   false
% 3.58/0.98  --inst_activity_threshold               500
% 3.58/0.98  --inst_out_proof                        true
% 3.58/0.98  
% 3.58/0.98  ------ Resolution Options
% 3.58/0.98  
% 3.58/0.98  --resolution_flag                       false
% 3.58/0.98  --res_lit_sel                           adaptive
% 3.58/0.98  --res_lit_sel_side                      none
% 3.58/0.98  --res_ordering                          kbo
% 3.58/0.98  --res_to_prop_solver                    active
% 3.58/0.98  --res_prop_simpl_new                    false
% 3.58/0.98  --res_prop_simpl_given                  true
% 3.58/0.98  --res_passive_queue_type                priority_queues
% 3.58/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.58/0.98  --res_passive_queues_freq               [15;5]
% 3.58/0.98  --res_forward_subs                      full
% 3.58/0.98  --res_backward_subs                     full
% 3.58/0.98  --res_forward_subs_resolution           true
% 3.58/0.98  --res_backward_subs_resolution          true
% 3.58/0.98  --res_orphan_elimination                true
% 3.58/0.98  --res_time_limit                        2.
% 3.58/0.98  --res_out_proof                         true
% 3.58/0.98  
% 3.58/0.98  ------ Superposition Options
% 3.58/0.98  
% 3.58/0.98  --superposition_flag                    true
% 3.58/0.98  --sup_passive_queue_type                priority_queues
% 3.58/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.58/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.58/0.98  --demod_completeness_check              fast
% 3.58/0.98  --demod_use_ground                      true
% 3.58/0.98  --sup_to_prop_solver                    passive
% 3.58/0.98  --sup_prop_simpl_new                    true
% 3.58/0.98  --sup_prop_simpl_given                  true
% 3.58/0.98  --sup_fun_splitting                     false
% 3.58/0.98  --sup_smt_interval                      50000
% 3.58/0.98  
% 3.58/0.98  ------ Superposition Simplification Setup
% 3.58/0.98  
% 3.58/0.98  --sup_indices_passive                   []
% 3.58/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.58/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.58/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.58/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.58/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.58/0.98  --sup_full_bw                           [BwDemod]
% 3.58/0.98  --sup_immed_triv                        [TrivRules]
% 3.58/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.58/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.58/0.98  --sup_immed_bw_main                     []
% 3.58/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.58/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.58/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.58/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.58/0.98  
% 3.58/0.98  ------ Combination Options
% 3.58/0.98  
% 3.58/0.98  --comb_res_mult                         3
% 3.58/0.98  --comb_sup_mult                         2
% 3.58/0.98  --comb_inst_mult                        10
% 3.58/0.98  
% 3.58/0.98  ------ Debug Options
% 3.58/0.98  
% 3.58/0.98  --dbg_backtrace                         false
% 3.58/0.98  --dbg_dump_prop_clauses                 false
% 3.58/0.98  --dbg_dump_prop_clauses_file            -
% 3.58/0.98  --dbg_out_stat                          false
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  ------ Proving...
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  % SZS status Theorem for theBenchmark.p
% 3.58/0.98  
% 3.58/0.98   Resolution empty clause
% 3.58/0.98  
% 3.58/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.58/0.98  
% 3.58/0.98  fof(f3,axiom,(
% 3.58/0.98    v1_xboole_0(k1_xboole_0)),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f53,plain,(
% 3.58/0.98    v1_xboole_0(k1_xboole_0)),
% 3.58/0.98    inference(cnf_transformation,[],[f3])).
% 3.58/0.98  
% 3.58/0.98  fof(f11,axiom,(
% 3.58/0.98    ! [X0,X1] : (~r2_hidden(X0,X1) => r1_xboole_0(k1_tarski(X0),X1))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f23,plain,(
% 3.58/0.98    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1))),
% 3.58/0.98    inference(ennf_transformation,[],[f11])).
% 3.58/0.98  
% 3.58/0.98  fof(f64,plain,(
% 3.58/0.98    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f23])).
% 3.58/0.98  
% 3.58/0.98  fof(f1,axiom,(
% 3.58/0.98    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f33,plain,(
% 3.58/0.98    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 3.58/0.98    inference(nnf_transformation,[],[f1])).
% 3.58/0.98  
% 3.58/0.98  fof(f34,plain,(
% 3.58/0.98    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.58/0.98    inference(rectify,[],[f33])).
% 3.58/0.98  
% 3.58/0.98  fof(f35,plain,(
% 3.58/0.98    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 3.58/0.98    introduced(choice_axiom,[])).
% 3.58/0.98  
% 3.58/0.98  fof(f36,plain,(
% 3.58/0.98    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.58/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f34,f35])).
% 3.58/0.98  
% 3.58/0.98  fof(f49,plain,(
% 3.58/0.98    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f36])).
% 3.58/0.98  
% 3.58/0.98  fof(f5,axiom,(
% 3.58/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f19,plain,(
% 3.58/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 3.58/0.98    inference(rectify,[],[f5])).
% 3.58/0.98  
% 3.58/0.98  fof(f22,plain,(
% 3.58/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 3.58/0.98    inference(ennf_transformation,[],[f19])).
% 3.58/0.98  
% 3.58/0.98  fof(f41,plain,(
% 3.58/0.98    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)))),
% 3.58/0.98    introduced(choice_axiom,[])).
% 3.58/0.98  
% 3.58/0.98  fof(f42,plain,(
% 3.58/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 3.58/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f22,f41])).
% 3.58/0.98  
% 3.58/0.98  fof(f56,plain,(
% 3.58/0.98    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 3.58/0.98    inference(cnf_transformation,[],[f42])).
% 3.58/0.98  
% 3.58/0.98  fof(f8,axiom,(
% 3.58/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f61,plain,(
% 3.58/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f8])).
% 3.58/0.98  
% 3.58/0.98  fof(f2,axiom,(
% 3.58/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f20,plain,(
% 3.58/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.58/0.98    inference(ennf_transformation,[],[f2])).
% 3.58/0.98  
% 3.58/0.98  fof(f37,plain,(
% 3.58/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.58/0.98    inference(nnf_transformation,[],[f20])).
% 3.58/0.98  
% 3.58/0.98  fof(f38,plain,(
% 3.58/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.58/0.98    inference(rectify,[],[f37])).
% 3.58/0.98  
% 3.58/0.98  fof(f39,plain,(
% 3.58/0.98    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 3.58/0.98    introduced(choice_axiom,[])).
% 3.58/0.98  
% 3.58/0.98  fof(f40,plain,(
% 3.58/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.58/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f38,f39])).
% 3.58/0.98  
% 3.58/0.98  fof(f51,plain,(
% 3.58/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f40])).
% 3.58/0.98  
% 3.58/0.98  fof(f48,plain,(
% 3.58/0.98    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f36])).
% 3.58/0.98  
% 3.58/0.98  fof(f6,axiom,(
% 3.58/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f43,plain,(
% 3.58/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.58/0.98    inference(nnf_transformation,[],[f6])).
% 3.58/0.98  
% 3.58/0.98  fof(f44,plain,(
% 3.58/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.58/0.98    inference(flattening,[],[f43])).
% 3.58/0.98  
% 3.58/0.98  fof(f59,plain,(
% 3.58/0.98    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f44])).
% 3.58/0.98  
% 3.58/0.98  fof(f17,conjecture,(
% 3.58/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f18,negated_conjecture,(
% 3.58/0.98    ~! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 3.58/0.98    inference(negated_conjecture,[],[f17])).
% 3.58/0.98  
% 3.58/0.98  fof(f31,plain,(
% 3.58/0.98    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1))) & (l1_struct_0(X0) & ~v2_struct_0(X0)))),
% 3.58/0.98    inference(ennf_transformation,[],[f18])).
% 3.58/0.98  
% 3.58/0.98  fof(f32,plain,(
% 3.58/0.98    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0))),
% 3.58/0.98    inference(flattening,[],[f31])).
% 3.58/0.98  
% 3.58/0.98  fof(f46,plain,(
% 3.58/0.98    ( ! [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),sK4)) != sK4 & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(sK4))) )),
% 3.58/0.98    introduced(choice_axiom,[])).
% 3.58/0.98  
% 3.58/0.98  fof(f45,plain,(
% 3.58/0.98    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (? [X1] : (k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK3))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK3))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))) & ~v1_xboole_0(X1)) & l1_struct_0(sK3) & ~v2_struct_0(sK3))),
% 3.58/0.98    introduced(choice_axiom,[])).
% 3.58/0.98  
% 3.58/0.98  fof(f47,plain,(
% 3.58/0.98    (k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))) & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))) & ~v1_xboole_0(sK4)) & l1_struct_0(sK3) & ~v2_struct_0(sK3)),
% 3.58/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f32,f46,f45])).
% 3.58/0.98  
% 3.58/0.98  fof(f76,plain,(
% 3.58/0.98    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))))),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f14,axiom,(
% 3.58/0.98    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f67,plain,(
% 3.58/0.98    ( ! [X0] : (k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))) )),
% 3.58/0.98    inference(cnf_transformation,[],[f14])).
% 3.58/0.98  
% 3.58/0.98  fof(f82,plain,(
% 3.58/0.98    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))),
% 3.58/0.98    inference(definition_unfolding,[],[f76,f67])).
% 3.58/0.98  
% 3.58/0.98  fof(f74,plain,(
% 3.58/0.98    v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f84,plain,(
% 3.58/0.98    v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))),
% 3.58/0.98    inference(definition_unfolding,[],[f74,f67])).
% 3.58/0.98  
% 3.58/0.98  fof(f75,plain,(
% 3.58/0.98    v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f83,plain,(
% 3.58/0.98    v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))),
% 3.58/0.98    inference(definition_unfolding,[],[f75,f67])).
% 3.58/0.98  
% 3.58/0.98  fof(f16,axiom,(
% 3.58/0.98    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) & v13_waybel_0(X1,k3_yellow_1(X0)) & v2_waybel_0(X1,k3_yellow_1(X0)) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) & ~v1_xboole_0(X1)) => ! [X2] : ~(v1_xboole_0(X2) & r2_hidden(X2,X1))))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f29,plain,(
% 3.58/0.98    ! [X0] : (! [X1] : (! [X2] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1))) | v1_xboole_0(X0))),
% 3.58/0.98    inference(ennf_transformation,[],[f16])).
% 3.58/0.98  
% 3.58/0.98  fof(f30,plain,(
% 3.58/0.98    ! [X0] : (! [X1] : (! [X2] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 3.58/0.98    inference(flattening,[],[f29])).
% 3.58/0.98  
% 3.58/0.98  fof(f69,plain,(
% 3.58/0.98    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f30])).
% 3.58/0.98  
% 3.58/0.98  fof(f81,plain,(
% 3.58/0.98    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0)))) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.58/0.98    inference(definition_unfolding,[],[f69,f67,f67,f67,f67])).
% 3.58/0.98  
% 3.58/0.98  fof(f73,plain,(
% 3.58/0.98    v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f85,plain,(
% 3.58/0.98    v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))),
% 3.58/0.98    inference(definition_unfolding,[],[f73,f67])).
% 3.58/0.98  
% 3.58/0.98  fof(f72,plain,(
% 3.58/0.98    ~v1_xboole_0(sK4)),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f70,plain,(
% 3.58/0.98    ~v2_struct_0(sK3)),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f71,plain,(
% 3.58/0.98    l1_struct_0(sK3)),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f13,axiom,(
% 3.58/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k2_struct_0(X0)))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f25,plain,(
% 3.58/0.98    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 3.58/0.98    inference(ennf_transformation,[],[f13])).
% 3.58/0.98  
% 3.58/0.98  fof(f26,plain,(
% 3.58/0.98    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 3.58/0.98    inference(flattening,[],[f25])).
% 3.58/0.98  
% 3.58/0.98  fof(f66,plain,(
% 3.58/0.98    ( ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f26])).
% 3.58/0.98  
% 3.58/0.98  fof(f55,plain,(
% 3.58/0.98    ( ! [X0,X1] : (r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f42])).
% 3.58/0.98  
% 3.58/0.98  fof(f4,axiom,(
% 3.58/0.98    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f21,plain,(
% 3.58/0.98    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 3.58/0.98    inference(ennf_transformation,[],[f4])).
% 3.58/0.98  
% 3.58/0.98  fof(f54,plain,(
% 3.58/0.98    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f21])).
% 3.58/0.98  
% 3.58/0.98  fof(f12,axiom,(
% 3.58/0.98    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f24,plain,(
% 3.58/0.98    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.58/0.98    inference(ennf_transformation,[],[f12])).
% 3.58/0.98  
% 3.58/0.98  fof(f65,plain,(
% 3.58/0.98    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.58/0.98    inference(cnf_transformation,[],[f24])).
% 3.58/0.98  
% 3.58/0.98  fof(f7,axiom,(
% 3.58/0.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f60,plain,(
% 3.58/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.58/0.98    inference(cnf_transformation,[],[f7])).
% 3.58/0.98  
% 3.58/0.98  fof(f79,plain,(
% 3.58/0.98    ( ! [X2,X0,X1] : (k5_xboole_0(X1,k3_xboole_0(X1,X2)) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.58/0.98    inference(definition_unfolding,[],[f65,f60])).
% 3.58/0.98  
% 3.58/0.98  fof(f15,axiom,(
% 3.58/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & ~v1_xboole_0(X1)) => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))))),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f27,plain,(
% 3.58/0.98    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 3.58/0.98    inference(ennf_transformation,[],[f15])).
% 3.58/0.98  
% 3.58/0.98  fof(f28,plain,(
% 3.58/0.98    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 3.58/0.98    inference(flattening,[],[f27])).
% 3.58/0.98  
% 3.58/0.98  fof(f68,plain,(
% 3.58/0.98    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f28])).
% 3.58/0.98  
% 3.58/0.98  fof(f80,plain,(
% 3.58/0.98    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.58/0.98    inference(definition_unfolding,[],[f68,f67,f67,f67,f67])).
% 3.58/0.98  
% 3.58/0.98  fof(f77,plain,(
% 3.58/0.98    k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4),
% 3.58/0.98    inference(cnf_transformation,[],[f47])).
% 3.58/0.98  
% 3.58/0.98  fof(f10,axiom,(
% 3.58/0.98    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f63,plain,(
% 3.58/0.98    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 3.58/0.98    inference(cnf_transformation,[],[f10])).
% 3.58/0.98  
% 3.58/0.98  fof(f9,axiom,(
% 3.58/0.98    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 3.58/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.58/0.98  
% 3.58/0.98  fof(f62,plain,(
% 3.58/0.98    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.58/0.98    inference(cnf_transformation,[],[f9])).
% 3.58/0.98  
% 3.58/0.98  fof(f78,plain,(
% 3.58/0.98    ( ! [X0] : (k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0) )),
% 3.58/0.98    inference(definition_unfolding,[],[f62,f60])).
% 3.58/0.98  
% 3.58/0.98  cnf(c_5,plain,
% 3.58/0.98      ( v1_xboole_0(k1_xboole_0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f53]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1013,plain,
% 3.58/0.98      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_15,plain,
% 3.58/0.98      ( r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1) ),
% 3.58/0.98      inference(cnf_transformation,[],[f64]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1005,plain,
% 3.58/0.98      ( r1_xboole_0(k1_tarski(X0),X1) = iProver_top
% 3.58/0.98      | r2_hidden(X0,X1) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_0,plain,
% 3.58/0.98      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f49]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1018,plain,
% 3.58/0.98      ( r2_hidden(sK0(X0),X0) = iProver_top | v1_xboole_0(X0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_7,plain,
% 3.58/0.98      ( ~ r1_xboole_0(X0,X1) | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ),
% 3.58/0.98      inference(cnf_transformation,[],[f56]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1011,plain,
% 3.58/0.98      ( r1_xboole_0(X0,X1) != iProver_top
% 3.58/0.98      | r2_hidden(X2,k3_xboole_0(X0,X1)) != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2006,plain,
% 3.58/0.98      ( r1_xboole_0(X0,X1) != iProver_top
% 3.58/0.98      | v1_xboole_0(k3_xboole_0(X0,X1)) = iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1018,c_1011]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_12,plain,
% 3.58/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f61]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1007,plain,
% 3.58/0.98      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3,plain,
% 3.58/0.98      ( r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f51]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1015,plain,
% 3.58/0.98      ( r1_tarski(X0,X1) = iProver_top
% 3.58/0.98      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1,plain,
% 3.58/0.98      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 3.58/0.98      inference(cnf_transformation,[],[f48]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1017,plain,
% 3.58/0.98      ( r2_hidden(X0,X1) != iProver_top | v1_xboole_0(X1) != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1872,plain,
% 3.58/0.98      ( r1_tarski(X0,X1) = iProver_top | v1_xboole_0(X0) != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1015,c_1017]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_9,plain,
% 3.58/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 3.58/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1009,plain,
% 3.58/0.98      ( X0 = X1
% 3.58/0.98      | r1_tarski(X1,X0) != iProver_top
% 3.58/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2433,plain,
% 3.58/0.98      ( X0 = X1
% 3.58/0.98      | r1_tarski(X0,X1) != iProver_top
% 3.58/0.98      | v1_xboole_0(X1) != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1872,c_1009]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2466,plain,
% 3.58/0.98      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1007,c_2433]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2621,plain,
% 3.58/0.98      ( k3_xboole_0(X0,X1) = k1_xboole_0 | r1_xboole_0(X0,X1) != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_2006,c_2466]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2881,plain,
% 3.58/0.98      ( k3_xboole_0(k1_tarski(X0),X1) = k1_xboole_0
% 3.58/0.98      | r2_hidden(X0,X1) = iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1005,c_2621]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_21,negated_conjecture,
% 3.58/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))) ),
% 3.58/0.98      inference(cnf_transformation,[],[f82]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_23,negated_conjecture,
% 3.58/0.98      ( v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
% 3.58/0.98      inference(cnf_transformation,[],[f84]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_22,negated_conjecture,
% 3.58/0.98      ( v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
% 3.58/0.98      inference(cnf_transformation,[],[f83]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_19,plain,
% 3.58/0.98      ( ~ v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
% 3.58/0.98      | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
% 3.58/0.98      | ~ r2_hidden(X2,X0)
% 3.58/0.98      | ~ v1_xboole_0(X2)
% 3.58/0.98      | v1_xboole_0(X1)
% 3.58/0.98      | v1_xboole_0(X0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f81]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_24,negated_conjecture,
% 3.58/0.98      ( v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) ),
% 3.58/0.98      inference(cnf_transformation,[],[f85]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_290,plain,
% 3.58/0.98      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
% 3.58/0.98      | ~ r2_hidden(X2,X0)
% 3.58/0.98      | ~ v1_xboole_0(X2)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | v1_xboole_0(X1)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | sK4 != X0 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_19,c_24]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_291,plain,
% 3.58/0.98      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.58/0.98      | ~ r2_hidden(X1,sK4)
% 3.58/0.98      | ~ v1_xboole_0(X1)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | v1_xboole_0(sK4)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
% 3.58/0.98      inference(unflattening,[status(thm)],[c_290]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_25,negated_conjecture,
% 3.58/0.98      ( ~ v1_xboole_0(sK4) ),
% 3.58/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_293,plain,
% 3.58/0.98      ( v1_xboole_0(X0)
% 3.58/0.98      | ~ v1_xboole_0(X1)
% 3.58/0.98      | ~ r2_hidden(X1,sK4)
% 3.58/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.58/0.98      | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
% 3.58/0.98      inference(global_propositional_subsumption,[status(thm)],[c_291,c_25]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_294,plain,
% 3.58/0.98      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.58/0.98      | ~ r2_hidden(X1,sK4)
% 3.58/0.98      | ~ v1_xboole_0(X1)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
% 3.58/0.98      inference(renaming,[status(thm)],[c_293]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_373,plain,
% 3.58/0.98      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.58/0.98      | ~ r2_hidden(X1,sK4)
% 3.58/0.98      | ~ v1_xboole_0(X1)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.58/0.98      | sK4 != sK4 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_22,c_294]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_418,plain,
% 3.58/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.58/0.98      | ~ r2_hidden(X1,sK4)
% 3.58/0.98      | ~ v1_xboole_0(X1)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.58/0.98      | sK4 != sK4 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_23,c_373]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_459,plain,
% 3.58/0.98      ( ~ r2_hidden(X0,sK4)
% 3.58/0.98      | ~ v1_xboole_0(X0)
% 3.58/0.98      | v1_xboole_0(X1)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
% 3.58/0.98      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))
% 3.58/0.98      | sK4 != sK4 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_21,c_418]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_510,plain,
% 3.58/0.98      ( ~ r2_hidden(X0,sK4)
% 3.58/0.98      | ~ v1_xboole_0(X0)
% 3.58/0.98      | v1_xboole_0(X1)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
% 3.58/0.98      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))) ),
% 3.58/0.98      inference(equality_resolution_simp,[status(thm)],[c_459]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_623,plain,
% 3.58/0.98      ( ~ r2_hidden(X0,sK4) | ~ v1_xboole_0(X0) | ~ sP1_iProver_split ),
% 3.58/0.98      inference(splitting,
% 3.58/0.98                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 3.58/0.98                [c_510]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1001,plain,
% 3.58/0.98      ( r2_hidden(X0,sK4) != iProver_top
% 3.58/0.98      | v1_xboole_0(X0) != iProver_top
% 3.58/0.98      | sP1_iProver_split != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_623]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3260,plain,
% 3.58/0.98      ( k3_xboole_0(k1_tarski(X0),sK4) = k1_xboole_0
% 3.58/0.98      | v1_xboole_0(X0) != iProver_top
% 3.58/0.98      | sP1_iProver_split != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_2881,c_1001]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_27,negated_conjecture,
% 3.58/0.98      ( ~ v2_struct_0(sK3) ),
% 3.58/0.98      inference(cnf_transformation,[],[f70]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_28,plain,
% 3.58/0.98      ( v2_struct_0(sK3) != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_26,negated_conjecture,
% 3.58/0.98      ( l1_struct_0(sK3) ),
% 3.58/0.98      inference(cnf_transformation,[],[f71]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_29,plain,
% 3.58/0.98      ( l1_struct_0(sK3) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_17,plain,
% 3.58/0.98      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(k2_struct_0(X0)) ),
% 3.58/0.98      inference(cnf_transformation,[],[f66]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_39,plain,
% 3.58/0.98      ( v2_struct_0(X0) = iProver_top
% 3.58/0.98      | l1_struct_0(X0) != iProver_top
% 3.58/0.98      | v1_xboole_0(k2_struct_0(X0)) != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_41,plain,
% 3.58/0.98      ( v2_struct_0(sK3) = iProver_top
% 3.58/0.98      | l1_struct_0(sK3) != iProver_top
% 3.58/0.98      | v1_xboole_0(k2_struct_0(sK3)) != iProver_top ),
% 3.58/0.98      inference(instantiation,[status(thm)],[c_39]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_624,plain,
% 3.58/0.98      ( sP1_iProver_split | sP0_iProver_split ),
% 3.58/0.98      inference(splitting,
% 3.58/0.98                [splitting(split),new_symbols(definition,[])],
% 3.58/0.98                [c_510]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_660,plain,
% 3.58/0.98      ( sP1_iProver_split = iProver_top | sP0_iProver_split = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_624]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_622,plain,
% 3.58/0.98      ( v1_xboole_0(X0)
% 3.58/0.98      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.58/0.98      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
% 3.58/0.98      | ~ sP0_iProver_split ),
% 3.58/0.98      inference(splitting,
% 3.58/0.98                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 3.58/0.98                [c_510]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1002,plain,
% 3.58/0.98      ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.58/0.98      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
% 3.58/0.98      | v1_xboole_0(X0) = iProver_top
% 3.58/0.98      | sP0_iProver_split != iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_622]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1446,plain,
% 3.58/0.98      ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
% 3.58/0.98      | v1_xboole_0(k2_struct_0(sK3)) = iProver_top
% 3.58/0.98      | sP0_iProver_split != iProver_top ),
% 3.58/0.98      inference(equality_resolution,[status(thm)],[c_1002]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_640,plain,
% 3.58/0.98      ( X0 != X1 | u1_struct_0(X0) = u1_struct_0(X1) ),
% 3.58/0.98      theory(equality) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1261,plain,
% 3.58/0.98      ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) = u1_struct_0(X0)
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != X0 ),
% 3.58/0.98      inference(instantiation,[status(thm)],[c_640]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1468,plain,
% 3.58/0.98      ( u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) = u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3))) ),
% 3.58/0.98      inference(instantiation,[status(thm)],[c_1261]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_626,plain,( X0 = X0 ),theory(equality) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1469,plain,
% 3.58/0.98      ( k3_lattice3(k1_lattice3(k2_struct_0(sK3))) = k3_lattice3(k1_lattice3(k2_struct_0(sK3))) ),
% 3.58/0.98      inference(instantiation,[status(thm)],[c_626]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3482,plain,
% 3.58/0.98      ( v1_xboole_0(X0) != iProver_top
% 3.58/0.98      | k3_xboole_0(k1_tarski(X0),sK4) = k1_xboole_0 ),
% 3.58/0.98      inference(global_propositional_subsumption,
% 3.58/0.98                [status(thm)],
% 3.58/0.98                [c_3260,c_28,c_29,c_41,c_660,c_1446,c_1468,c_1469]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3483,plain,
% 3.58/0.98      ( k3_xboole_0(k1_tarski(X0),sK4) = k1_xboole_0
% 3.58/0.98      | v1_xboole_0(X0) != iProver_top ),
% 3.58/0.98      inference(renaming,[status(thm)],[c_3482]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3490,plain,
% 3.58/0.98      ( k3_xboole_0(k1_tarski(k1_xboole_0),sK4) = k1_xboole_0 ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1013,c_3483]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_8,plain,
% 3.58/0.98      ( r1_xboole_0(X0,X1) | r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) ),
% 3.58/0.98      inference(cnf_transformation,[],[f55]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1010,plain,
% 3.58/0.98      ( r1_xboole_0(X0,X1) = iProver_top
% 3.58/0.98      | r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1999,plain,
% 3.58/0.98      ( r1_xboole_0(X0,X1) = iProver_top
% 3.58/0.98      | v1_xboole_0(k3_xboole_0(X0,X1)) != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1010,c_1017]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3577,plain,
% 3.58/0.98      ( r1_xboole_0(k1_tarski(k1_xboole_0),sK4) = iProver_top
% 3.58/0.98      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_3490,c_1999]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_69,plain,
% 3.58/0.98      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3675,plain,
% 3.58/0.98      ( r1_xboole_0(k1_tarski(k1_xboole_0),sK4) = iProver_top ),
% 3.58/0.98      inference(global_propositional_subsumption,[status(thm)],[c_3577,c_69]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_6,plain,
% 3.58/0.98      ( ~ r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f54]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1012,plain,
% 3.58/0.98      ( r1_xboole_0(X0,X1) != iProver_top | r1_xboole_0(X1,X0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3683,plain,
% 3.58/0.98      ( r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_3675,c_1012]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_3892,plain,
% 3.58/0.98      ( k3_xboole_0(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_3683,c_2621]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_16,plain,
% 3.58/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.58/0.98      | k5_xboole_0(X0,k3_xboole_0(X0,X2)) = k7_subset_1(X1,X0,X2) ),
% 3.58/0.98      inference(cnf_transformation,[],[f79]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_450,plain,
% 3.58/0.98      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k7_subset_1(X2,X0,X1)
% 3.58/0.98      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X2)
% 3.58/0.98      | sK4 != X0 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_16,c_21]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_451,plain,
% 3.58/0.98      ( k5_xboole_0(sK4,k3_xboole_0(sK4,X0)) = k7_subset_1(X1,sK4,X0)
% 3.58/0.98      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X1) ),
% 3.58/0.98      inference(unflattening,[status(thm)],[c_450]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1174,plain,
% 3.58/0.98      ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,X0) = k5_xboole_0(sK4,k3_xboole_0(sK4,X0)) ),
% 3.58/0.98      inference(equality_resolution,[status(thm)],[c_451]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_18,plain,
% 3.58/0.98      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
% 3.58/0.98      | v2_struct_0(X1)
% 3.58/0.98      | ~ l1_struct_0(X1)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0)) ),
% 3.58/0.98      inference(cnf_transformation,[],[f80]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_338,plain,
% 3.58/0.98      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
% 3.58/0.98      | v2_struct_0(X1)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0))
% 3.58/0.98      | sK3 != X1 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_18,c_26]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_339,plain,
% 3.58/0.98      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.58/0.98      | v2_struct_0(sK3)
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
% 3.58/0.98      inference(unflattening,[status(thm)],[c_338]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_343,plain,
% 3.58/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
% 3.58/0.98      inference(global_propositional_subsumption,[status(thm)],[c_339,c_27]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_344,plain,
% 3.58/0.98      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
% 3.58/0.98      inference(renaming,[status(thm)],[c_343]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_400,plain,
% 3.58/0.98      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.58/0.98      | v1_xboole_0(X0)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0))
% 3.58/0.98      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
% 3.58/0.98      | sK4 != X0 ),
% 3.58/0.98      inference(resolution_lifted,[status(thm)],[c_22,c_344]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_401,plain,
% 3.58/0.98      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.58/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.58/0.98      | v1_xboole_0(sK4)
% 3.58/0.98      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
% 3.58/0.98      inference(unflattening,[status(thm)],[c_400]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_403,plain,
% 3.58/0.98      ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
% 3.58/0.98      inference(global_propositional_subsumption,
% 3.58/0.98                [status(thm)],
% 3.58/0.98                [c_401,c_25,c_23,c_21]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1191,plain,
% 3.58/0.98      ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) = k5_xboole_0(sK4,k3_xboole_0(sK4,k1_tarski(k1_xboole_0))) ),
% 3.58/0.98      inference(demodulation,[status(thm)],[c_1174,c_403]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_20,negated_conjecture,
% 3.58/0.98      ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 ),
% 3.58/0.98      inference(cnf_transformation,[],[f77]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1193,plain,
% 3.58/0.98      ( k5_xboole_0(sK4,k3_xboole_0(sK4,k1_tarski(k1_xboole_0))) != sK4 ),
% 3.58/0.98      inference(demodulation,[status(thm)],[c_1191,c_20]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_11123,plain,
% 3.58/0.98      ( k5_xboole_0(sK4,k1_xboole_0) != sK4 ),
% 3.58/0.98      inference(demodulation,[status(thm)],[c_3892,c_1193]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_14,plain,
% 3.58/0.98      ( r1_xboole_0(X0,k1_xboole_0) ),
% 3.58/0.98      inference(cnf_transformation,[],[f63]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_1006,plain,
% 3.58/0.98      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 3.58/0.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2880,plain,
% 3.58/0.98      ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
% 3.58/0.98      inference(superposition,[status(thm)],[c_1006,c_2621]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_13,plain,
% 3.58/0.98      ( k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
% 3.58/0.98      inference(cnf_transformation,[],[f78]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_2905,plain,
% 3.58/0.98      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.58/0.98      inference(demodulation,[status(thm)],[c_2880,c_13]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_11129,plain,
% 3.58/0.98      ( sK4 != sK4 ),
% 3.58/0.98      inference(demodulation,[status(thm)],[c_11123,c_2905]) ).
% 3.58/0.98  
% 3.58/0.98  cnf(c_11130,plain,
% 3.58/0.98      ( $false ),
% 3.58/0.98      inference(equality_resolution_simp,[status(thm)],[c_11129]) ).
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.58/0.98  
% 3.58/0.98  ------                               Statistics
% 3.58/0.98  
% 3.58/0.98  ------ General
% 3.58/0.98  
% 3.58/0.98  abstr_ref_over_cycles:                  0
% 3.58/0.98  abstr_ref_under_cycles:                 0
% 3.58/0.98  gc_basic_clause_elim:                   0
% 3.58/0.98  forced_gc_time:                         0
% 3.58/0.98  parsing_time:                           0.01
% 3.58/0.98  unif_index_cands_time:                  0.
% 3.58/0.98  unif_index_add_time:                    0.
% 3.58/0.98  orderings_time:                         0.
% 3.58/0.98  out_proof_time:                         0.011
% 3.58/0.98  total_time:                             0.333
% 3.58/0.98  num_of_symbols:                         60
% 3.58/0.98  num_of_terms:                           8608
% 3.58/0.98  
% 3.58/0.98  ------ Preprocessing
% 3.58/0.98  
% 3.58/0.98  num_of_splits:                          2
% 3.58/0.98  num_of_split_atoms:                     2
% 3.58/0.98  num_of_reused_defs:                     0
% 3.58/0.98  num_eq_ax_congr_red:                    21
% 3.58/0.98  num_of_sem_filtered_clauses:            1
% 3.58/0.98  num_of_subtypes:                        0
% 3.58/0.98  monotx_restored_types:                  0
% 3.58/0.98  sat_num_of_epr_types:                   0
% 3.58/0.98  sat_num_of_non_cyclic_types:            0
% 3.58/0.98  sat_guarded_non_collapsed_types:        0
% 3.58/0.98  num_pure_diseq_elim:                    0
% 3.58/0.98  simp_replaced_by:                       0
% 3.58/0.98  res_preprocessed:                       129
% 3.58/0.98  prep_upred:                             0
% 3.58/0.98  prep_unflattend:                        5
% 3.58/0.98  smt_new_axioms:                         0
% 3.58/0.98  pred_elim_cands:                        4
% 3.58/0.98  pred_elim:                              6
% 3.58/0.98  pred_elim_cl:                           6
% 3.58/0.98  pred_elim_cycles:                       8
% 3.58/0.98  merged_defs:                            0
% 3.58/0.98  merged_defs_ncl:                        0
% 3.58/0.98  bin_hyper_res:                          0
% 3.58/0.98  prep_cycles:                            4
% 3.58/0.98  pred_elim_time:                         0.006
% 3.58/0.98  splitting_time:                         0.
% 3.58/0.98  sem_filter_time:                        0.
% 3.58/0.98  monotx_time:                            0.
% 3.58/0.98  subtype_inf_time:                       0.
% 3.58/0.98  
% 3.58/0.98  ------ Problem properties
% 3.58/0.98  
% 3.58/0.98  clauses:                                23
% 3.58/0.98  conjectures:                            2
% 3.58/0.98  epr:                                    11
% 3.58/0.98  horn:                                   18
% 3.58/0.98  ground:                                 6
% 3.58/0.98  unary:                                  9
% 3.58/0.98  binary:                                 10
% 3.58/0.98  lits:                                   43
% 3.58/0.98  lits_eq:                                9
% 3.58/0.98  fd_pure:                                0
% 3.58/0.98  fd_pseudo:                              0
% 3.58/0.98  fd_cond:                                0
% 3.58/0.98  fd_pseudo_cond:                         1
% 3.58/0.98  ac_symbols:                             0
% 3.58/0.98  
% 3.58/0.98  ------ Propositional Solver
% 3.58/0.98  
% 3.58/0.98  prop_solver_calls:                      28
% 3.58/0.98  prop_fast_solver_calls:                 942
% 3.58/0.98  smt_solver_calls:                       0
% 3.58/0.98  smt_fast_solver_calls:                  0
% 3.58/0.98  prop_num_of_clauses:                    4370
% 3.58/0.98  prop_preprocess_simplified:             8990
% 3.58/0.98  prop_fo_subsumed:                       31
% 3.58/0.98  prop_solver_time:                       0.
% 3.58/0.98  smt_solver_time:                        0.
% 3.58/0.98  smt_fast_solver_time:                   0.
% 3.58/0.98  prop_fast_solver_time:                  0.
% 3.58/0.98  prop_unsat_core_time:                   0.
% 3.58/0.98  
% 3.58/0.98  ------ QBF
% 3.58/0.98  
% 3.58/0.98  qbf_q_res:                              0
% 3.58/0.98  qbf_num_tautologies:                    0
% 3.58/0.98  qbf_prep_cycles:                        0
% 3.58/0.98  
% 3.58/0.98  ------ BMC1
% 3.58/0.98  
% 3.58/0.98  bmc1_current_bound:                     -1
% 3.58/0.98  bmc1_last_solved_bound:                 -1
% 3.58/0.98  bmc1_unsat_core_size:                   -1
% 3.58/0.98  bmc1_unsat_core_parents_size:           -1
% 3.58/0.98  bmc1_merge_next_fun:                    0
% 3.58/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.58/0.98  
% 3.58/0.98  ------ Instantiation
% 3.58/0.98  
% 3.58/0.98  inst_num_of_clauses:                    1299
% 3.58/0.98  inst_num_in_passive:                    149
% 3.58/0.98  inst_num_in_active:                     537
% 3.58/0.98  inst_num_in_unprocessed:                613
% 3.58/0.98  inst_num_of_loops:                      680
% 3.58/0.98  inst_num_of_learning_restarts:          0
% 3.58/0.98  inst_num_moves_active_passive:          138
% 3.58/0.98  inst_lit_activity:                      0
% 3.58/0.98  inst_lit_activity_moves:                0
% 3.58/0.98  inst_num_tautologies:                   0
% 3.58/0.98  inst_num_prop_implied:                  0
% 3.58/0.98  inst_num_existing_simplified:           0
% 3.58/0.98  inst_num_eq_res_simplified:             0
% 3.58/0.98  inst_num_child_elim:                    0
% 3.58/0.98  inst_num_of_dismatching_blockings:      405
% 3.58/0.98  inst_num_of_non_proper_insts:           1306
% 3.58/0.98  inst_num_of_duplicates:                 0
% 3.58/0.98  inst_inst_num_from_inst_to_res:         0
% 3.58/0.98  inst_dismatching_checking_time:         0.
% 3.58/0.98  
% 3.58/0.98  ------ Resolution
% 3.58/0.98  
% 3.58/0.98  res_num_of_clauses:                     0
% 3.58/0.98  res_num_in_passive:                     0
% 3.58/0.98  res_num_in_active:                      0
% 3.58/0.98  res_num_of_loops:                       133
% 3.58/0.98  res_forward_subset_subsumed:            150
% 3.58/0.98  res_backward_subset_subsumed:           6
% 3.58/0.98  res_forward_subsumed:                   0
% 3.58/0.98  res_backward_subsumed:                  0
% 3.58/0.98  res_forward_subsumption_resolution:     0
% 3.58/0.98  res_backward_subsumption_resolution:    0
% 3.58/0.98  res_clause_to_clause_subsumption:       1748
% 3.58/0.98  res_orphan_elimination:                 0
% 3.58/0.98  res_tautology_del:                      100
% 3.58/0.98  res_num_eq_res_simplified:              1
% 3.58/0.98  res_num_sel_changes:                    0
% 3.58/0.98  res_moves_from_active_to_pass:          0
% 3.58/0.98  
% 3.58/0.98  ------ Superposition
% 3.58/0.98  
% 3.58/0.98  sup_time_total:                         0.
% 3.58/0.98  sup_time_generating:                    0.
% 3.58/0.98  sup_time_sim_full:                      0.
% 3.58/0.98  sup_time_sim_immed:                     0.
% 3.58/0.98  
% 3.58/0.98  sup_num_of_clauses:                     236
% 3.58/0.98  sup_num_in_active:                      124
% 3.58/0.98  sup_num_in_passive:                     112
% 3.58/0.98  sup_num_of_loops:                       135
% 3.58/0.98  sup_fw_superposition:                   254
% 3.58/0.98  sup_bw_superposition:                   194
% 3.58/0.98  sup_immediate_simplified:               160
% 3.58/0.98  sup_given_eliminated:                   0
% 3.58/0.98  comparisons_done:                       0
% 3.58/0.98  comparisons_avoided:                    0
% 3.58/0.98  
% 3.58/0.98  ------ Simplifications
% 3.58/0.98  
% 3.58/0.98  
% 3.58/0.98  sim_fw_subset_subsumed:                 35
% 3.58/0.98  sim_bw_subset_subsumed:                 1
% 3.58/0.98  sim_fw_subsumed:                        25
% 3.58/0.98  sim_bw_subsumed:                        0
% 3.58/0.98  sim_fw_subsumption_res:                 0
% 3.58/0.98  sim_bw_subsumption_res:                 0
% 3.58/0.98  sim_tautology_del:                      9
% 3.58/0.98  sim_eq_tautology_del:                   75
% 3.58/0.98  sim_eq_res_simp:                        1
% 3.58/0.98  sim_fw_demodulated:                     48
% 3.58/0.98  sim_bw_demodulated:                     12
% 3.58/0.98  sim_light_normalised:                   53
% 3.58/0.98  sim_joinable_taut:                      0
% 3.58/0.98  sim_joinable_simp:                      0
% 3.58/0.98  sim_ac_normalised:                      0
% 3.58/0.98  sim_smt_subsumption:                    0
% 3.58/0.98  
%------------------------------------------------------------------------------
