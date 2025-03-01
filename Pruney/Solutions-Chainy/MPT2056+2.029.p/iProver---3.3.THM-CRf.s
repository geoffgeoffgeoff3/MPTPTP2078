%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:29:09 EST 2020

% Result     : Theorem 3.64s
% Output     : CNFRefutation 3.64s
% Verified   : 
% Statistics : Number of formulae       :  153 ( 879 expanded)
%              Number of clauses        :   76 ( 179 expanded)
%              Number of leaves         :   19 ( 253 expanded)
%              Depth                    :   26
%              Number of atoms          :  561 (4681 expanded)
%              Number of equality atoms :  163 ( 893 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f4])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f39,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK2(X0,X1),X1)
        & r2_hidden(sK2(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK2(X0,X1),X1)
          & r2_hidden(sK2(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f19,f39])).

fof(f56,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK2(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK2(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f16,conjecture,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
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
    inference(negated_conjecture,[],[f16])).

fof(f28,plain,(
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
    inference(ennf_transformation,[],[f17])).

fof(f29,plain,(
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
    inference(flattening,[],[f28])).

fof(f45,plain,(
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

fof(f44,plain,
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

fof(f46,plain,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))))
    & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))
    & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))
    & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))
    & ~ v1_xboole_0(sK4)
    & l1_struct_0(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f29,f45,f44])).

fof(f78,plain,(
    v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f46])).

fof(f13,axiom,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f70,plain,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f98,plain,(
    v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(definition_unfolding,[],[f78,f70])).

fof(f14,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f71,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
      | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f95,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f71,f70,f70,f70,f70])).

fof(f73,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f46])).

fof(f74,plain,(
    l1_struct_0(sK3) ),
    inference(cnf_transformation,[],[f46])).

fof(f75,plain,(
    ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f46])).

fof(f77,plain,(
    v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f46])).

fof(f99,plain,(
    v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(definition_unfolding,[],[f77,f70])).

fof(f79,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))) ),
    inference(cnf_transformation,[],[f46])).

fof(f97,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))) ),
    inference(definition_unfolding,[],[f79,f70])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f10,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f7,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f81,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f67,f62])).

fof(f82,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) ),
    inference(definition_unfolding,[],[f59,f81])).

fof(f94,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f66,f82])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
    <=> ( X0 != X2
        & r2_hidden(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
        | X0 = X2
        | ~ r2_hidden(X0,X1) )
      & ( ( X0 != X2
          & r2_hidden(X0,X1) )
        | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f43,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
        | X0 = X2
        | ~ r2_hidden(X0,X1) )
      & ( ( X0 != X2
          & r2_hidden(X0,X1) )
        | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ) ),
    inference(flattening,[],[f42])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
      | X0 = X2
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f91,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,k1_tarski(X2)))))
      | X0 = X2
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f65,f82])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f34])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f35])).

fof(f37,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( ~ r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( r2_hidden(sK1(X0,X1,X2),X1)
          | ~ r2_hidden(sK1(X0,X1,X2),X0)
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( ( ~ r2_hidden(sK1(X0,X1,X2),X1)
            & r2_hidden(sK1(X0,X1,X2),X0) )
          | r2_hidden(sK1(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ( ( r2_hidden(sK1(X0,X1,X2),X1)
            | ~ r2_hidden(sK1(X0,X1,X2),X0)
            | ~ r2_hidden(sK1(X0,X1,X2),X2) )
          & ( ( ~ r2_hidden(sK1(X0,X1,X2),X1)
              & r2_hidden(sK1(X0,X1,X2),X0) )
            | r2_hidden(sK1(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f36,f37])).

fof(f50,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f87,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) != X2 ) ),
    inference(definition_unfolding,[],[f50,f82])).

fof(f102,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1)))) ) ),
    inference(equality_resolution,[],[f87])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f60,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f90,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f60,f82])).

fof(f80,plain,(
    k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 ),
    inference(cnf_transformation,[],[f46])).

fof(f15,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
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
    inference(ennf_transformation,[],[f15])).

fof(f27,plain,(
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
    inference(flattening,[],[f26])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0))))
      | ~ v13_waybel_0(X1,k3_yellow_1(X0))
      | ~ v2_waybel_0(X1,k3_yellow_1(X0))
      | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0)))
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f96,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0))))
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f72,f70,f70,f70,f70])).

fof(f76,plain,(
    v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f46])).

fof(f100,plain,(
    v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) ),
    inference(definition_unfolding,[],[f76,f70])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f23,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f69,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f68,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

cnf(c_11,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK2(X0,X1),X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1467,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK2(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_10,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK2(X0,X1),X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1468,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK2(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_24,negated_conjecture,
    ( v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_20,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
    | v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0)) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_437,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
    | ~ l1_struct_0(X1)
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0))
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_29])).

cnf(c_438,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | ~ l1_struct_0(sK3)
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
    inference(unflattening,[status(thm)],[c_437])).

cnf(c_28,negated_conjecture,
    ( l1_struct_0(sK3) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_442,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_438,c_28])).

cnf(c_443,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
    inference(renaming,[status(thm)],[c_442])).

cnf(c_505,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v1_xboole_0(X0)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0))
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_443])).

cnf(c_506,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
    | v1_xboole_0(sK4)
    | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
    inference(unflattening,[status(thm)],[c_505])).

cnf(c_27,negated_conjecture,
    ( ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_25,negated_conjecture,
    ( v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_23,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_508,plain,
    ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_506,c_27,c_25,c_23])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X2))) = k7_subset_1(X1,X0,X2) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_555,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = k7_subset_1(X2,X0,X1)
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X2)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_23])).

cnf(c_556,plain,
    ( k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,X0))) = k7_subset_1(X1,sK4,X0)
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X1) ),
    inference(unflattening,[status(thm)],[c_555])).

cnf(c_1802,plain,
    ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,X0) = k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,X0))) ),
    inference(equality_resolution,[status(thm)],[c_556])).

cnf(c_1862,plain,
    ( k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,k1_tarski(k1_xboole_0)))) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
    inference(superposition,[status(thm)],[c_508,c_1802])).

cnf(c_14,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,k1_tarski(X2)))))
    | X2 = X0 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1464,plain,
    ( X0 = X1
    | r2_hidden(X1,X2) != iProver_top
    | r2_hidden(X1,k5_xboole_0(X2,k1_setfam_1(k1_enumset1(X2,X2,k1_tarski(X0))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2559,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(X0,k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4))) = iProver_top
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1862,c_1464])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X2,k1_setfam_1(k1_enumset1(X2,X2,X1)))) ),
    inference(cnf_transformation,[],[f102])).

cnf(c_1472,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X2,k1_setfam_1(k1_enumset1(X2,X2,X1)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2861,plain,
    ( r2_hidden(X0,k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4))) != iProver_top
    | r2_hidden(X0,k1_tarski(k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1862,c_1472])).

cnf(c_3075,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(X0,k1_tarski(k1_xboole_0)) != iProver_top
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2559,c_2861])).

cnf(c_3832,plain,
    ( sK2(X0,k1_tarski(k1_xboole_0)) = k1_xboole_0
    | r1_xboole_0(X0,k1_tarski(k1_xboole_0)) = iProver_top
    | r2_hidden(sK2(X0,k1_tarski(k1_xboole_0)),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1468,c_3075])).

cnf(c_8677,plain,
    ( sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0
    | r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1467,c_3832])).

cnf(c_13,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = X0 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1465,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_8681,plain,
    ( sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0
    | k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,k1_tarski(k1_xboole_0)))) = sK4 ),
    inference(superposition,[status(thm)],[c_8677,c_1465])).

cnf(c_8682,plain,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) = sK4
    | sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_8681,c_1862])).

cnf(c_22,negated_conjecture,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 ),
    inference(cnf_transformation,[],[f80])).

cnf(c_9029,plain,
    ( sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_8682,c_22])).

cnf(c_21,plain,
    ( ~ v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
    | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_26,negated_conjecture,
    ( v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_389,plain,
    ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_26])).

cnf(c_390,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | v1_xboole_0(sK4)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(unflattening,[status(thm)],[c_389])).

cnf(c_392,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(X1)
    | ~ r2_hidden(X1,sK4)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_390,c_27])).

cnf(c_393,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(renaming,[status(thm)],[c_392])).

cnf(c_478,plain,
    ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_393])).

cnf(c_523,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
    | ~ r2_hidden(X1,sK4)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_478])).

cnf(c_564,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_523])).

cnf(c_692,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))) ),
    inference(equality_resolution_simp,[status(thm)],[c_564])).

cnf(c_936,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ v1_xboole_0(X0)
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_692])).

cnf(c_1458,plain,
    ( r2_hidden(X0,sK4) != iProver_top
    | v1_xboole_0(X0) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_936])).

cnf(c_2568,plain,
    ( r1_xboole_0(sK4,X0) = iProver_top
    | v1_xboole_0(sK2(sK4,X0)) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_1467,c_1458])).

cnf(c_937,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_692])).

cnf(c_971,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_937])).

cnf(c_19,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_426,plain,
    ( ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_29])).

cnf(c_427,plain,
    ( ~ l1_struct_0(sK3)
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_426])).

cnf(c_42,plain,
    ( v2_struct_0(sK3)
    | ~ l1_struct_0(sK3)
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_429,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_427,c_29,c_28,c_42])).

cnf(c_1460,plain,
    ( v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_429])).

cnf(c_18,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_472,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_28])).

cnf(c_473,plain,
    ( u1_struct_0(sK3) = k2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_472])).

cnf(c_1479,plain,
    ( v1_xboole_0(k2_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1460,c_473])).

cnf(c_935,plain,
    ( v1_xboole_0(X0)
    | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_692])).

cnf(c_1459,plain,
    ( k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
    | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
    | v1_xboole_0(X0) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_935])).

cnf(c_2199,plain,
    ( k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
    | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
    | v1_xboole_0(k2_struct_0(sK3)) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1459])).

cnf(c_2257,plain,
    ( v1_xboole_0(k2_struct_0(sK3)) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2199])).

cnf(c_3524,plain,
    ( v1_xboole_0(sK2(sK4,X0)) != iProver_top
    | r1_xboole_0(sK4,X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2568,c_971,c_1479,c_2257])).

cnf(c_3525,plain,
    ( r1_xboole_0(sK4,X0) = iProver_top
    | v1_xboole_0(sK2(sK4,X0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_3524])).

cnf(c_9036,plain,
    ( r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_9029,c_3525])).

cnf(c_8,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_72,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_9147,plain,
    ( r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_9036,c_72])).

cnf(c_9151,plain,
    ( k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,k1_tarski(k1_xboole_0)))) = sK4 ),
    inference(superposition,[status(thm)],[c_9147,c_1465])).

cnf(c_9727,plain,
    ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) = sK4 ),
    inference(demodulation,[status(thm)],[c_9151,c_1862])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_9727,c_22])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 09:19:38 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.64/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.64/0.98  
% 3.64/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.64/0.98  
% 3.64/0.98  ------  iProver source info
% 3.64/0.98  
% 3.64/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.64/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.64/0.98  git: non_committed_changes: false
% 3.64/0.98  git: last_make_outside_of_git: false
% 3.64/0.98  
% 3.64/0.98  ------ 
% 3.64/0.98  
% 3.64/0.98  ------ Input Options
% 3.64/0.98  
% 3.64/0.98  --out_options                           all
% 3.64/0.98  --tptp_safe_out                         true
% 3.64/0.98  --problem_path                          ""
% 3.64/0.98  --include_path                          ""
% 3.64/0.98  --clausifier                            res/vclausify_rel
% 3.64/0.98  --clausifier_options                    ""
% 3.64/0.98  --stdin                                 false
% 3.64/0.98  --stats_out                             all
% 3.64/0.98  
% 3.64/0.98  ------ General Options
% 3.64/0.98  
% 3.64/0.98  --fof                                   false
% 3.64/0.98  --time_out_real                         305.
% 3.64/0.98  --time_out_virtual                      -1.
% 3.64/0.98  --symbol_type_check                     false
% 3.64/0.98  --clausify_out                          false
% 3.64/0.98  --sig_cnt_out                           false
% 3.64/0.98  --trig_cnt_out                          false
% 3.64/0.98  --trig_cnt_out_tolerance                1.
% 3.64/0.98  --trig_cnt_out_sk_spl                   false
% 3.64/0.98  --abstr_cl_out                          false
% 3.64/0.98  
% 3.64/0.98  ------ Global Options
% 3.64/0.98  
% 3.64/0.98  --schedule                              default
% 3.64/0.98  --add_important_lit                     false
% 3.64/0.98  --prop_solver_per_cl                    1000
% 3.64/0.98  --min_unsat_core                        false
% 3.64/0.98  --soft_assumptions                      false
% 3.64/0.98  --soft_lemma_size                       3
% 3.64/0.98  --prop_impl_unit_size                   0
% 3.64/0.98  --prop_impl_unit                        []
% 3.64/0.98  --share_sel_clauses                     true
% 3.64/0.98  --reset_solvers                         false
% 3.64/0.98  --bc_imp_inh                            [conj_cone]
% 3.64/0.98  --conj_cone_tolerance                   3.
% 3.64/0.98  --extra_neg_conj                        none
% 3.64/0.98  --large_theory_mode                     true
% 3.64/0.98  --prolific_symb_bound                   200
% 3.64/0.98  --lt_threshold                          2000
% 3.64/0.98  --clause_weak_htbl                      true
% 3.64/0.98  --gc_record_bc_elim                     false
% 3.64/0.98  
% 3.64/0.98  ------ Preprocessing Options
% 3.64/0.98  
% 3.64/0.98  --preprocessing_flag                    true
% 3.64/0.98  --time_out_prep_mult                    0.1
% 3.64/0.98  --splitting_mode                        input
% 3.64/0.98  --splitting_grd                         true
% 3.64/0.98  --splitting_cvd                         false
% 3.64/0.98  --splitting_cvd_svl                     false
% 3.64/0.98  --splitting_nvd                         32
% 3.64/0.98  --sub_typing                            true
% 3.64/0.98  --prep_gs_sim                           true
% 3.64/0.98  --prep_unflatten                        true
% 3.64/0.98  --prep_res_sim                          true
% 3.64/0.98  --prep_upred                            true
% 3.64/0.98  --prep_sem_filter                       exhaustive
% 3.64/0.98  --prep_sem_filter_out                   false
% 3.64/0.98  --pred_elim                             true
% 3.64/0.98  --res_sim_input                         true
% 3.64/0.98  --eq_ax_congr_red                       true
% 3.64/0.98  --pure_diseq_elim                       true
% 3.64/0.98  --brand_transform                       false
% 3.64/0.98  --non_eq_to_eq                          false
% 3.64/0.98  --prep_def_merge                        true
% 3.64/0.98  --prep_def_merge_prop_impl              false
% 3.64/0.98  --prep_def_merge_mbd                    true
% 3.64/0.98  --prep_def_merge_tr_red                 false
% 3.64/0.98  --prep_def_merge_tr_cl                  false
% 3.64/0.98  --smt_preprocessing                     true
% 3.64/0.98  --smt_ac_axioms                         fast
% 3.64/0.98  --preprocessed_out                      false
% 3.64/0.98  --preprocessed_stats                    false
% 3.64/0.98  
% 3.64/0.98  ------ Abstraction refinement Options
% 3.64/0.98  
% 3.64/0.98  --abstr_ref                             []
% 3.64/0.98  --abstr_ref_prep                        false
% 3.64/0.98  --abstr_ref_until_sat                   false
% 3.64/0.98  --abstr_ref_sig_restrict                funpre
% 3.64/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.64/0.98  --abstr_ref_under                       []
% 3.64/0.98  
% 3.64/0.98  ------ SAT Options
% 3.64/0.98  
% 3.64/0.98  --sat_mode                              false
% 3.64/0.98  --sat_fm_restart_options                ""
% 3.64/0.98  --sat_gr_def                            false
% 3.64/0.98  --sat_epr_types                         true
% 3.64/0.98  --sat_non_cyclic_types                  false
% 3.64/0.98  --sat_finite_models                     false
% 3.64/0.98  --sat_fm_lemmas                         false
% 3.64/0.98  --sat_fm_prep                           false
% 3.64/0.98  --sat_fm_uc_incr                        true
% 3.64/0.98  --sat_out_model                         small
% 3.64/0.98  --sat_out_clauses                       false
% 3.64/0.98  
% 3.64/0.98  ------ QBF Options
% 3.64/0.98  
% 3.64/0.98  --qbf_mode                              false
% 3.64/0.98  --qbf_elim_univ                         false
% 3.64/0.98  --qbf_dom_inst                          none
% 3.64/0.98  --qbf_dom_pre_inst                      false
% 3.64/0.98  --qbf_sk_in                             false
% 3.64/0.98  --qbf_pred_elim                         true
% 3.64/0.98  --qbf_split                             512
% 3.64/0.98  
% 3.64/0.98  ------ BMC1 Options
% 3.64/0.98  
% 3.64/0.98  --bmc1_incremental                      false
% 3.64/0.98  --bmc1_axioms                           reachable_all
% 3.64/0.98  --bmc1_min_bound                        0
% 3.64/0.98  --bmc1_max_bound                        -1
% 3.64/0.98  --bmc1_max_bound_default                -1
% 3.64/0.98  --bmc1_symbol_reachability              true
% 3.64/0.98  --bmc1_property_lemmas                  false
% 3.64/0.98  --bmc1_k_induction                      false
% 3.64/0.98  --bmc1_non_equiv_states                 false
% 3.64/0.98  --bmc1_deadlock                         false
% 3.64/0.98  --bmc1_ucm                              false
% 3.64/0.98  --bmc1_add_unsat_core                   none
% 3.64/0.98  --bmc1_unsat_core_children              false
% 3.64/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.64/0.98  --bmc1_out_stat                         full
% 3.64/0.98  --bmc1_ground_init                      false
% 3.64/0.98  --bmc1_pre_inst_next_state              false
% 3.64/0.98  --bmc1_pre_inst_state                   false
% 3.64/0.98  --bmc1_pre_inst_reach_state             false
% 3.64/0.98  --bmc1_out_unsat_core                   false
% 3.64/0.98  --bmc1_aig_witness_out                  false
% 3.64/0.98  --bmc1_verbose                          false
% 3.64/0.98  --bmc1_dump_clauses_tptp                false
% 3.64/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.64/0.98  --bmc1_dump_file                        -
% 3.64/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.64/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.64/0.98  --bmc1_ucm_extend_mode                  1
% 3.64/0.98  --bmc1_ucm_init_mode                    2
% 3.64/0.98  --bmc1_ucm_cone_mode                    none
% 3.64/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.64/0.98  --bmc1_ucm_relax_model                  4
% 3.64/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.64/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.64/0.98  --bmc1_ucm_layered_model                none
% 3.64/0.98  --bmc1_ucm_max_lemma_size               10
% 3.64/0.98  
% 3.64/0.98  ------ AIG Options
% 3.64/0.98  
% 3.64/0.98  --aig_mode                              false
% 3.64/0.98  
% 3.64/0.98  ------ Instantiation Options
% 3.64/0.98  
% 3.64/0.98  --instantiation_flag                    true
% 3.64/0.98  --inst_sos_flag                         true
% 3.64/0.98  --inst_sos_phase                        true
% 3.64/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.64/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.64/0.98  --inst_lit_sel_side                     num_symb
% 3.64/0.98  --inst_solver_per_active                1400
% 3.64/0.98  --inst_solver_calls_frac                1.
% 3.64/0.98  --inst_passive_queue_type               priority_queues
% 3.64/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.64/0.98  --inst_passive_queues_freq              [25;2]
% 3.64/0.98  --inst_dismatching                      true
% 3.64/0.98  --inst_eager_unprocessed_to_passive     true
% 3.64/0.98  --inst_prop_sim_given                   true
% 3.64/0.98  --inst_prop_sim_new                     false
% 3.64/0.98  --inst_subs_new                         false
% 3.64/0.98  --inst_eq_res_simp                      false
% 3.64/0.98  --inst_subs_given                       false
% 3.64/0.98  --inst_orphan_elimination               true
% 3.64/0.98  --inst_learning_loop_flag               true
% 3.64/0.98  --inst_learning_start                   3000
% 3.64/0.98  --inst_learning_factor                  2
% 3.64/0.98  --inst_start_prop_sim_after_learn       3
% 3.64/0.98  --inst_sel_renew                        solver
% 3.64/0.98  --inst_lit_activity_flag                true
% 3.64/0.98  --inst_restr_to_given                   false
% 3.64/0.98  --inst_activity_threshold               500
% 3.64/0.98  --inst_out_proof                        true
% 3.64/0.98  
% 3.64/0.98  ------ Resolution Options
% 3.64/0.98  
% 3.64/0.98  --resolution_flag                       true
% 3.64/0.98  --res_lit_sel                           adaptive
% 3.64/0.98  --res_lit_sel_side                      none
% 3.64/0.98  --res_ordering                          kbo
% 3.64/0.98  --res_to_prop_solver                    active
% 3.64/0.98  --res_prop_simpl_new                    false
% 3.64/0.98  --res_prop_simpl_given                  true
% 3.64/0.98  --res_passive_queue_type                priority_queues
% 3.64/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.64/0.98  --res_passive_queues_freq               [15;5]
% 3.64/0.98  --res_forward_subs                      full
% 3.64/0.98  --res_backward_subs                     full
% 3.64/0.98  --res_forward_subs_resolution           true
% 3.64/0.98  --res_backward_subs_resolution          true
% 3.64/0.98  --res_orphan_elimination                true
% 3.64/0.98  --res_time_limit                        2.
% 3.64/0.98  --res_out_proof                         true
% 3.64/0.98  
% 3.64/0.98  ------ Superposition Options
% 3.64/0.98  
% 3.64/0.98  --superposition_flag                    true
% 3.64/0.98  --sup_passive_queue_type                priority_queues
% 3.64/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.64/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.64/0.98  --demod_completeness_check              fast
% 3.64/0.98  --demod_use_ground                      true
% 3.64/0.98  --sup_to_prop_solver                    passive
% 3.64/0.98  --sup_prop_simpl_new                    true
% 3.64/0.98  --sup_prop_simpl_given                  true
% 3.64/0.98  --sup_fun_splitting                     true
% 3.64/0.98  --sup_smt_interval                      50000
% 3.64/0.98  
% 3.64/0.98  ------ Superposition Simplification Setup
% 3.64/0.98  
% 3.64/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.64/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.64/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.64/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.64/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.64/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.64/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.64/0.98  --sup_immed_triv                        [TrivRules]
% 3.64/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.98  --sup_immed_bw_main                     []
% 3.64/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.64/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.64/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.98  --sup_input_bw                          []
% 3.64/0.98  
% 3.64/0.98  ------ Combination Options
% 3.64/0.98  
% 3.64/0.98  --comb_res_mult                         3
% 3.64/0.98  --comb_sup_mult                         2
% 3.64/0.98  --comb_inst_mult                        10
% 3.64/0.98  
% 3.64/0.98  ------ Debug Options
% 3.64/0.98  
% 3.64/0.98  --dbg_backtrace                         false
% 3.64/0.98  --dbg_dump_prop_clauses                 false
% 3.64/0.98  --dbg_dump_prop_clauses_file            -
% 3.64/0.98  --dbg_out_stat                          false
% 3.64/0.98  ------ Parsing...
% 3.64/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.64/0.98  
% 3.64/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 3.64/0.98  
% 3.64/0.98  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.64/0.98  
% 3.64/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.64/0.98  ------ Proving...
% 3.64/0.98  ------ Problem Properties 
% 3.64/0.98  
% 3.64/0.98  
% 3.64/0.98  clauses                                 26
% 3.64/0.98  conjectures                             2
% 3.64/0.98  EPR                                     6
% 3.64/0.98  Horn                                    17
% 3.64/0.98  unary                                   7
% 3.64/0.98  binary                                  11
% 3.64/0.98  lits                                    56
% 3.64/0.98  lits eq                                 14
% 3.64/0.98  fd_pure                                 0
% 3.64/0.98  fd_pseudo                               0
% 3.64/0.98  fd_cond                                 0
% 3.64/0.98  fd_pseudo_cond                          4
% 3.64/0.98  AC symbols                              0
% 3.64/0.98  
% 3.64/0.98  ------ Schedule dynamic 5 is on 
% 3.64/0.98  
% 3.64/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.64/0.98  
% 3.64/0.98  
% 3.64/0.98  ------ 
% 3.64/0.98  Current options:
% 3.64/0.98  ------ 
% 3.64/0.98  
% 3.64/0.98  ------ Input Options
% 3.64/0.98  
% 3.64/0.98  --out_options                           all
% 3.64/0.98  --tptp_safe_out                         true
% 3.64/0.98  --problem_path                          ""
% 3.64/0.98  --include_path                          ""
% 3.64/0.98  --clausifier                            res/vclausify_rel
% 3.64/0.98  --clausifier_options                    ""
% 3.64/0.98  --stdin                                 false
% 3.64/0.98  --stats_out                             all
% 3.64/0.98  
% 3.64/0.98  ------ General Options
% 3.64/0.98  
% 3.64/0.98  --fof                                   false
% 3.64/0.98  --time_out_real                         305.
% 3.64/0.98  --time_out_virtual                      -1.
% 3.64/0.98  --symbol_type_check                     false
% 3.64/0.98  --clausify_out                          false
% 3.64/0.98  --sig_cnt_out                           false
% 3.64/0.98  --trig_cnt_out                          false
% 3.64/0.98  --trig_cnt_out_tolerance                1.
% 3.64/0.98  --trig_cnt_out_sk_spl                   false
% 3.64/0.98  --abstr_cl_out                          false
% 3.64/0.98  
% 3.64/0.98  ------ Global Options
% 3.64/0.98  
% 3.64/0.98  --schedule                              default
% 3.64/0.98  --add_important_lit                     false
% 3.64/0.98  --prop_solver_per_cl                    1000
% 3.64/0.98  --min_unsat_core                        false
% 3.64/0.98  --soft_assumptions                      false
% 3.64/0.98  --soft_lemma_size                       3
% 3.64/0.98  --prop_impl_unit_size                   0
% 3.64/0.98  --prop_impl_unit                        []
% 3.64/0.98  --share_sel_clauses                     true
% 3.64/0.98  --reset_solvers                         false
% 3.64/0.98  --bc_imp_inh                            [conj_cone]
% 3.64/0.98  --conj_cone_tolerance                   3.
% 3.64/0.98  --extra_neg_conj                        none
% 3.64/0.98  --large_theory_mode                     true
% 3.64/0.98  --prolific_symb_bound                   200
% 3.64/0.98  --lt_threshold                          2000
% 3.64/0.98  --clause_weak_htbl                      true
% 3.64/0.98  --gc_record_bc_elim                     false
% 3.64/0.98  
% 3.64/0.98  ------ Preprocessing Options
% 3.64/0.98  
% 3.64/0.98  --preprocessing_flag                    true
% 3.64/0.98  --time_out_prep_mult                    0.1
% 3.64/0.98  --splitting_mode                        input
% 3.64/0.98  --splitting_grd                         true
% 3.64/0.98  --splitting_cvd                         false
% 3.64/0.98  --splitting_cvd_svl                     false
% 3.64/0.98  --splitting_nvd                         32
% 3.64/0.98  --sub_typing                            true
% 3.64/0.98  --prep_gs_sim                           true
% 3.64/0.98  --prep_unflatten                        true
% 3.64/0.98  --prep_res_sim                          true
% 3.64/0.98  --prep_upred                            true
% 3.64/0.98  --prep_sem_filter                       exhaustive
% 3.64/0.98  --prep_sem_filter_out                   false
% 3.64/0.98  --pred_elim                             true
% 3.64/0.98  --res_sim_input                         true
% 3.64/0.98  --eq_ax_congr_red                       true
% 3.64/0.98  --pure_diseq_elim                       true
% 3.64/0.98  --brand_transform                       false
% 3.64/0.98  --non_eq_to_eq                          false
% 3.64/0.98  --prep_def_merge                        true
% 3.64/0.98  --prep_def_merge_prop_impl              false
% 3.64/0.98  --prep_def_merge_mbd                    true
% 3.64/0.98  --prep_def_merge_tr_red                 false
% 3.64/0.98  --prep_def_merge_tr_cl                  false
% 3.64/0.98  --smt_preprocessing                     true
% 3.64/0.98  --smt_ac_axioms                         fast
% 3.64/0.98  --preprocessed_out                      false
% 3.64/0.98  --preprocessed_stats                    false
% 3.64/0.98  
% 3.64/0.98  ------ Abstraction refinement Options
% 3.64/0.98  
% 3.64/0.98  --abstr_ref                             []
% 3.64/0.98  --abstr_ref_prep                        false
% 3.64/0.98  --abstr_ref_until_sat                   false
% 3.64/0.98  --abstr_ref_sig_restrict                funpre
% 3.64/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.64/0.98  --abstr_ref_under                       []
% 3.64/0.98  
% 3.64/0.98  ------ SAT Options
% 3.64/0.98  
% 3.64/0.98  --sat_mode                              false
% 3.64/0.98  --sat_fm_restart_options                ""
% 3.64/0.98  --sat_gr_def                            false
% 3.64/0.98  --sat_epr_types                         true
% 3.64/0.98  --sat_non_cyclic_types                  false
% 3.64/0.98  --sat_finite_models                     false
% 3.64/0.98  --sat_fm_lemmas                         false
% 3.64/0.98  --sat_fm_prep                           false
% 3.64/0.98  --sat_fm_uc_incr                        true
% 3.64/0.98  --sat_out_model                         small
% 3.64/0.98  --sat_out_clauses                       false
% 3.64/0.98  
% 3.64/0.98  ------ QBF Options
% 3.64/0.98  
% 3.64/0.98  --qbf_mode                              false
% 3.64/0.98  --qbf_elim_univ                         false
% 3.64/0.98  --qbf_dom_inst                          none
% 3.64/0.98  --qbf_dom_pre_inst                      false
% 3.64/0.98  --qbf_sk_in                             false
% 3.64/0.98  --qbf_pred_elim                         true
% 3.64/0.98  --qbf_split                             512
% 3.64/0.98  
% 3.64/0.98  ------ BMC1 Options
% 3.64/0.98  
% 3.64/0.98  --bmc1_incremental                      false
% 3.64/0.98  --bmc1_axioms                           reachable_all
% 3.64/0.98  --bmc1_min_bound                        0
% 3.64/0.98  --bmc1_max_bound                        -1
% 3.64/0.98  --bmc1_max_bound_default                -1
% 3.64/0.98  --bmc1_symbol_reachability              true
% 3.64/0.98  --bmc1_property_lemmas                  false
% 3.64/0.98  --bmc1_k_induction                      false
% 3.64/0.98  --bmc1_non_equiv_states                 false
% 3.64/0.98  --bmc1_deadlock                         false
% 3.64/0.98  --bmc1_ucm                              false
% 3.64/0.98  --bmc1_add_unsat_core                   none
% 3.64/0.98  --bmc1_unsat_core_children              false
% 3.64/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.64/0.98  --bmc1_out_stat                         full
% 3.64/0.98  --bmc1_ground_init                      false
% 3.64/0.98  --bmc1_pre_inst_next_state              false
% 3.64/0.98  --bmc1_pre_inst_state                   false
% 3.64/0.98  --bmc1_pre_inst_reach_state             false
% 3.64/0.98  --bmc1_out_unsat_core                   false
% 3.64/0.98  --bmc1_aig_witness_out                  false
% 3.64/0.98  --bmc1_verbose                          false
% 3.64/0.98  --bmc1_dump_clauses_tptp                false
% 3.64/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.64/0.98  --bmc1_dump_file                        -
% 3.64/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.64/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.64/0.98  --bmc1_ucm_extend_mode                  1
% 3.64/0.98  --bmc1_ucm_init_mode                    2
% 3.64/0.98  --bmc1_ucm_cone_mode                    none
% 3.64/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.64/0.98  --bmc1_ucm_relax_model                  4
% 3.64/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.64/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.64/0.98  --bmc1_ucm_layered_model                none
% 3.64/0.98  --bmc1_ucm_max_lemma_size               10
% 3.64/0.98  
% 3.64/0.98  ------ AIG Options
% 3.64/0.98  
% 3.64/0.98  --aig_mode                              false
% 3.64/0.98  
% 3.64/0.98  ------ Instantiation Options
% 3.64/0.98  
% 3.64/0.98  --instantiation_flag                    true
% 3.64/0.98  --inst_sos_flag                         true
% 3.64/0.98  --inst_sos_phase                        true
% 3.64/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.64/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.64/0.98  --inst_lit_sel_side                     none
% 3.64/0.98  --inst_solver_per_active                1400
% 3.64/0.98  --inst_solver_calls_frac                1.
% 3.64/0.98  --inst_passive_queue_type               priority_queues
% 3.64/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.64/0.98  --inst_passive_queues_freq              [25;2]
% 3.64/0.98  --inst_dismatching                      true
% 3.64/0.98  --inst_eager_unprocessed_to_passive     true
% 3.64/0.98  --inst_prop_sim_given                   true
% 3.64/0.98  --inst_prop_sim_new                     false
% 3.64/0.98  --inst_subs_new                         false
% 3.64/0.98  --inst_eq_res_simp                      false
% 3.64/0.98  --inst_subs_given                       false
% 3.64/0.98  --inst_orphan_elimination               true
% 3.64/0.98  --inst_learning_loop_flag               true
% 3.64/0.98  --inst_learning_start                   3000
% 3.64/0.98  --inst_learning_factor                  2
% 3.64/0.98  --inst_start_prop_sim_after_learn       3
% 3.64/0.98  --inst_sel_renew                        solver
% 3.64/0.98  --inst_lit_activity_flag                true
% 3.64/0.98  --inst_restr_to_given                   false
% 3.64/0.98  --inst_activity_threshold               500
% 3.64/0.98  --inst_out_proof                        true
% 3.64/0.98  
% 3.64/0.98  ------ Resolution Options
% 3.64/0.98  
% 3.64/0.98  --resolution_flag                       false
% 3.64/0.98  --res_lit_sel                           adaptive
% 3.64/0.98  --res_lit_sel_side                      none
% 3.64/0.98  --res_ordering                          kbo
% 3.64/0.98  --res_to_prop_solver                    active
% 3.64/0.98  --res_prop_simpl_new                    false
% 3.64/0.98  --res_prop_simpl_given                  true
% 3.64/0.98  --res_passive_queue_type                priority_queues
% 3.64/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.64/0.98  --res_passive_queues_freq               [15;5]
% 3.64/0.98  --res_forward_subs                      full
% 3.64/0.98  --res_backward_subs                     full
% 3.64/0.98  --res_forward_subs_resolution           true
% 3.64/0.98  --res_backward_subs_resolution          true
% 3.64/0.98  --res_orphan_elimination                true
% 3.64/0.98  --res_time_limit                        2.
% 3.64/0.98  --res_out_proof                         true
% 3.64/0.98  
% 3.64/0.98  ------ Superposition Options
% 3.64/0.98  
% 3.64/0.98  --superposition_flag                    true
% 3.64/0.98  --sup_passive_queue_type                priority_queues
% 3.64/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.64/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.64/0.98  --demod_completeness_check              fast
% 3.64/0.98  --demod_use_ground                      true
% 3.64/0.98  --sup_to_prop_solver                    passive
% 3.64/0.98  --sup_prop_simpl_new                    true
% 3.64/0.98  --sup_prop_simpl_given                  true
% 3.64/0.98  --sup_fun_splitting                     true
% 3.64/0.98  --sup_smt_interval                      50000
% 3.64/0.98  
% 3.64/0.98  ------ Superposition Simplification Setup
% 3.64/0.98  
% 3.64/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.64/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.64/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.64/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.64/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.64/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.64/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.64/0.98  --sup_immed_triv                        [TrivRules]
% 3.64/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.98  --sup_immed_bw_main                     []
% 3.64/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.64/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.64/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.98  --sup_input_bw                          []
% 3.64/0.98  
% 3.64/0.98  ------ Combination Options
% 3.64/0.98  
% 3.64/0.98  --comb_res_mult                         3
% 3.64/0.98  --comb_sup_mult                         2
% 3.64/0.98  --comb_inst_mult                        10
% 3.64/0.98  
% 3.64/0.98  ------ Debug Options
% 3.64/0.98  
% 3.64/0.98  --dbg_backtrace                         false
% 3.64/0.98  --dbg_dump_prop_clauses                 false
% 3.64/0.98  --dbg_dump_prop_clauses_file            -
% 3.64/0.98  --dbg_out_stat                          false
% 3.64/0.98  
% 3.64/0.98  
% 3.64/0.98  
% 3.64/0.98  
% 3.64/0.98  ------ Proving...
% 3.64/0.98  
% 3.64/0.98  
% 3.64/0.98  % SZS status Theorem for theBenchmark.p
% 3.64/0.98  
% 3.64/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.64/0.98  
% 3.64/0.98  fof(f4,axiom,(
% 3.64/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f18,plain,(
% 3.64/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.64/0.98    inference(rectify,[],[f4])).
% 3.64/0.98  
% 3.64/0.98  fof(f19,plain,(
% 3.64/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 3.64/0.98    inference(ennf_transformation,[],[f18])).
% 3.64/0.98  
% 3.64/0.98  fof(f39,plain,(
% 3.64/0.98    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK2(X0,X1),X1) & r2_hidden(sK2(X0,X1),X0)))),
% 3.64/0.98    introduced(choice_axiom,[])).
% 3.64/0.98  
% 3.64/0.98  fof(f40,plain,(
% 3.64/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK2(X0,X1),X1) & r2_hidden(sK2(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 3.64/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f19,f39])).
% 3.64/0.98  
% 3.64/0.98  fof(f56,plain,(
% 3.64/0.98    ( ! [X0,X1] : (r2_hidden(sK2(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f40])).
% 3.64/0.98  
% 3.64/0.98  fof(f57,plain,(
% 3.64/0.98    ( ! [X0,X1] : (r2_hidden(sK2(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f40])).
% 3.64/0.98  
% 3.64/0.98  fof(f16,conjecture,(
% 3.64/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f17,negated_conjecture,(
% 3.64/0.98    ~! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 3.64/0.98    inference(negated_conjecture,[],[f16])).
% 3.64/0.98  
% 3.64/0.98  fof(f28,plain,(
% 3.64/0.98    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1))) & (l1_struct_0(X0) & ~v2_struct_0(X0)))),
% 3.64/0.98    inference(ennf_transformation,[],[f17])).
% 3.64/0.98  
% 3.64/0.98  fof(f29,plain,(
% 3.64/0.98    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0))),
% 3.64/0.98    inference(flattening,[],[f28])).
% 3.64/0.98  
% 3.64/0.98  fof(f45,plain,(
% 3.64/0.98    ( ! [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),sK4)) != sK4 & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(sK4))) )),
% 3.64/0.98    introduced(choice_axiom,[])).
% 3.64/0.98  
% 3.64/0.98  fof(f44,plain,(
% 3.64/0.98    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (? [X1] : (k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK3))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK3))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))) & ~v1_xboole_0(X1)) & l1_struct_0(sK3) & ~v2_struct_0(sK3))),
% 3.64/0.98    introduced(choice_axiom,[])).
% 3.64/0.98  
% 3.64/0.98  fof(f46,plain,(
% 3.64/0.98    (k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))) & v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) & v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3))) & v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))) & ~v1_xboole_0(sK4)) & l1_struct_0(sK3) & ~v2_struct_0(sK3)),
% 3.64/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f29,f45,f44])).
% 3.64/0.98  
% 3.64/0.98  fof(f78,plain,(
% 3.64/0.98    v13_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f13,axiom,(
% 3.64/0.98    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f70,plain,(
% 3.64/0.98    ( ! [X0] : (k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))) )),
% 3.64/0.98    inference(cnf_transformation,[],[f13])).
% 3.64/0.98  
% 3.64/0.98  fof(f98,plain,(
% 3.64/0.98    v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))),
% 3.64/0.98    inference(definition_unfolding,[],[f78,f70])).
% 3.64/0.98  
% 3.64/0.98  fof(f14,axiom,(
% 3.64/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & ~v1_xboole_0(X1)) => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f24,plain,(
% 3.64/0.98    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 3.64/0.98    inference(ennf_transformation,[],[f14])).
% 3.64/0.98  
% 3.64/0.98  fof(f25,plain,(
% 3.64/0.98    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 3.64/0.98    inference(flattening,[],[f24])).
% 3.64/0.98  
% 3.64/0.98  fof(f71,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f25])).
% 3.64/0.98  
% 3.64/0.98  fof(f95,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.64/0.98    inference(definition_unfolding,[],[f71,f70,f70,f70,f70])).
% 3.64/0.98  
% 3.64/0.98  fof(f73,plain,(
% 3.64/0.98    ~v2_struct_0(sK3)),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f74,plain,(
% 3.64/0.98    l1_struct_0(sK3)),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f75,plain,(
% 3.64/0.98    ~v1_xboole_0(sK4)),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f77,plain,(
% 3.64/0.98    v2_waybel_0(sK4,k3_yellow_1(k2_struct_0(sK3)))),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f99,plain,(
% 3.64/0.98    v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))),
% 3.64/0.98    inference(definition_unfolding,[],[f77,f70])).
% 3.64/0.98  
% 3.64/0.98  fof(f79,plain,(
% 3.64/0.98    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK3)))))),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f97,plain,(
% 3.64/0.98    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))),
% 3.64/0.98    inference(definition_unfolding,[],[f79,f70])).
% 3.64/0.98  
% 3.64/0.98  fof(f9,axiom,(
% 3.64/0.98    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f20,plain,(
% 3.64/0.98    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.64/0.98    inference(ennf_transformation,[],[f9])).
% 3.64/0.98  
% 3.64/0.98  fof(f66,plain,(
% 3.64/0.98    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.64/0.98    inference(cnf_transformation,[],[f20])).
% 3.64/0.98  
% 3.64/0.98  fof(f5,axiom,(
% 3.64/0.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f59,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.64/0.98    inference(cnf_transformation,[],[f5])).
% 3.64/0.98  
% 3.64/0.98  fof(f10,axiom,(
% 3.64/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f67,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.64/0.98    inference(cnf_transformation,[],[f10])).
% 3.64/0.98  
% 3.64/0.98  fof(f7,axiom,(
% 3.64/0.98    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f62,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f7])).
% 3.64/0.98  
% 3.64/0.98  fof(f81,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k1_enumset1(X0,X0,X1))) )),
% 3.64/0.98    inference(definition_unfolding,[],[f67,f62])).
% 3.64/0.98  
% 3.64/0.98  fof(f82,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1)))) )),
% 3.64/0.98    inference(definition_unfolding,[],[f59,f81])).
% 3.64/0.98  
% 3.64/0.98  fof(f94,plain,(
% 3.64/0.98    ( ! [X2,X0,X1] : (k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.64/0.98    inference(definition_unfolding,[],[f66,f82])).
% 3.64/0.98  
% 3.64/0.98  fof(f8,axiom,(
% 3.64/0.98    ! [X0,X1,X2] : (r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) <=> (X0 != X2 & r2_hidden(X0,X1)))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f42,plain,(
% 3.64/0.98    ! [X0,X1,X2] : ((r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | (X0 = X2 | ~r2_hidden(X0,X1))) & ((X0 != X2 & r2_hidden(X0,X1)) | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))))),
% 3.64/0.98    inference(nnf_transformation,[],[f8])).
% 3.64/0.98  
% 3.64/0.98  fof(f43,plain,(
% 3.64/0.98    ! [X0,X1,X2] : ((r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | X0 = X2 | ~r2_hidden(X0,X1)) & ((X0 != X2 & r2_hidden(X0,X1)) | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))))),
% 3.64/0.98    inference(flattening,[],[f42])).
% 3.64/0.98  
% 3.64/0.98  fof(f65,plain,(
% 3.64/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | X0 = X2 | ~r2_hidden(X0,X1)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f43])).
% 3.64/0.98  
% 3.64/0.98  fof(f91,plain,(
% 3.64/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,k1_tarski(X2))))) | X0 = X2 | ~r2_hidden(X0,X1)) )),
% 3.64/0.98    inference(definition_unfolding,[],[f65,f82])).
% 3.64/0.98  
% 3.64/0.98  fof(f2,axiom,(
% 3.64/0.98    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f34,plain,(
% 3.64/0.98    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.64/0.98    inference(nnf_transformation,[],[f2])).
% 3.64/0.98  
% 3.64/0.98  fof(f35,plain,(
% 3.64/0.98    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.64/0.98    inference(flattening,[],[f34])).
% 3.64/0.98  
% 3.64/0.98  fof(f36,plain,(
% 3.64/0.98    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.64/0.98    inference(rectify,[],[f35])).
% 3.64/0.98  
% 3.64/0.98  fof(f37,plain,(
% 3.64/0.98    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK1(X0,X1,X2),X1) | ~r2_hidden(sK1(X0,X1,X2),X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & ((~r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(sK1(X0,X1,X2),X2))))),
% 3.64/0.98    introduced(choice_axiom,[])).
% 3.64/0.98  
% 3.64/0.98  fof(f38,plain,(
% 3.64/0.98    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK1(X0,X1,X2),X1) | ~r2_hidden(sK1(X0,X1,X2),X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & ((~r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.64/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f36,f37])).
% 3.64/0.98  
% 3.64/0.98  fof(f50,plain,(
% 3.64/0.98    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 3.64/0.98    inference(cnf_transformation,[],[f38])).
% 3.64/0.98  
% 3.64/0.98  fof(f87,plain,(
% 3.64/0.98    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) != X2) )),
% 3.64/0.98    inference(definition_unfolding,[],[f50,f82])).
% 3.64/0.98  
% 3.64/0.98  fof(f102,plain,(
% 3.64/0.98    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))))) )),
% 3.64/0.98    inference(equality_resolution,[],[f87])).
% 3.64/0.98  
% 3.64/0.98  fof(f6,axiom,(
% 3.64/0.98    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f41,plain,(
% 3.64/0.98    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 3.64/0.98    inference(nnf_transformation,[],[f6])).
% 3.64/0.98  
% 3.64/0.98  fof(f60,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f41])).
% 3.64/0.98  
% 3.64/0.98  fof(f90,plain,(
% 3.64/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.64/0.98    inference(definition_unfolding,[],[f60,f82])).
% 3.64/0.98  
% 3.64/0.98  fof(f80,plain,(
% 3.64/0.98    k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f15,axiom,(
% 3.64/0.98    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) & v13_waybel_0(X1,k3_yellow_1(X0)) & v2_waybel_0(X1,k3_yellow_1(X0)) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) & ~v1_xboole_0(X1)) => ! [X2] : ~(v1_xboole_0(X2) & r2_hidden(X2,X1))))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f26,plain,(
% 3.64/0.98    ! [X0] : (! [X1] : (! [X2] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1))) | v1_xboole_0(X0))),
% 3.64/0.98    inference(ennf_transformation,[],[f15])).
% 3.64/0.98  
% 3.64/0.98  fof(f27,plain,(
% 3.64/0.98    ! [X0] : (! [X1] : (! [X2] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 3.64/0.98    inference(flattening,[],[f26])).
% 3.64/0.98  
% 3.64/0.98  fof(f72,plain,(
% 3.64/0.98    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.64/0.98    inference(cnf_transformation,[],[f27])).
% 3.64/0.98  
% 3.64/0.98  fof(f96,plain,(
% 3.64/0.98    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0)))) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.64/0.98    inference(definition_unfolding,[],[f72,f70,f70,f70,f70])).
% 3.64/0.98  
% 3.64/0.98  fof(f76,plain,(
% 3.64/0.98    v1_subset_1(sK4,u1_struct_0(k3_yellow_1(k2_struct_0(sK3))))),
% 3.64/0.98    inference(cnf_transformation,[],[f46])).
% 3.64/0.98  
% 3.64/0.98  fof(f100,plain,(
% 3.64/0.98    v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))),
% 3.64/0.98    inference(definition_unfolding,[],[f76,f70])).
% 3.64/0.98  
% 3.64/0.98  fof(f12,axiom,(
% 3.64/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 3.64/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.98  
% 3.64/0.98  fof(f22,plain,(
% 3.64/0.98    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 3.64/0.98    inference(ennf_transformation,[],[f12])).
% 3.64/0.98  
% 3.64/0.98  fof(f23,plain,(
% 3.64/0.98    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 3.64/0.98    inference(flattening,[],[f22])).
% 3.64/0.98  
% 3.64/0.98  fof(f69,plain,(
% 3.64/0.98    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f23])).
% 3.64/0.99  
% 3.64/0.99  fof(f11,axiom,(
% 3.64/0.99    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f21,plain,(
% 3.64/0.99    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 3.64/0.99    inference(ennf_transformation,[],[f11])).
% 3.64/0.99  
% 3.64/0.99  fof(f68,plain,(
% 3.64/0.99    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f21])).
% 3.64/0.99  
% 3.64/0.99  fof(f3,axiom,(
% 3.64/0.99    v1_xboole_0(k1_xboole_0)),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f55,plain,(
% 3.64/0.99    v1_xboole_0(k1_xboole_0)),
% 3.64/0.99    inference(cnf_transformation,[],[f3])).
% 3.64/0.99  
% 3.64/0.99  cnf(c_11,plain,
% 3.64/0.99      ( r1_xboole_0(X0,X1) | r2_hidden(sK2(X0,X1),X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1467,plain,
% 3.64/0.99      ( r1_xboole_0(X0,X1) = iProver_top
% 3.64/0.99      | r2_hidden(sK2(X0,X1),X0) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_10,plain,
% 3.64/0.99      ( r1_xboole_0(X0,X1) | r2_hidden(sK2(X0,X1),X1) ),
% 3.64/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1468,plain,
% 3.64/0.99      ( r1_xboole_0(X0,X1) = iProver_top
% 3.64/0.99      | r2_hidden(sK2(X0,X1),X1) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_24,negated_conjecture,
% 3.64/0.99      ( v13_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f98]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_20,plain,
% 3.64/0.99      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
% 3.64/0.99      | v2_struct_0(X1)
% 3.64/0.99      | ~ l1_struct_0(X1)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0)) ),
% 3.64/0.99      inference(cnf_transformation,[],[f95]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_29,negated_conjecture,
% 3.64/0.99      ( ~ v2_struct_0(sK3) ),
% 3.64/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_437,plain,
% 3.64/0.99      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(X1))))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1))))))
% 3.64/0.99      | ~ l1_struct_0(X1)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X1)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(X1,k3_yellow19(X1,k2_struct_0(X1),X0))
% 3.64/0.99      | sK3 != X1 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_20,c_29]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_438,plain,
% 3.64/0.99      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.64/0.99      | ~ l1_struct_0(sK3)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_437]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_28,negated_conjecture,
% 3.64/0.99      ( l1_struct_0(sK3) ),
% 3.64/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_442,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_438,c_28]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_443,plain,
% 3.64/0.99      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0)) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_442]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_505,plain,
% 3.64/0.99      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),X0,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),X0))
% 3.64/0.99      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
% 3.64/0.99      | sK4 != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_24,c_443]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_506,plain,
% 3.64/0.99      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))))
% 3.64/0.99      | v1_xboole_0(sK4)
% 3.64/0.99      | k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_505]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_27,negated_conjecture,
% 3.64/0.99      ( ~ v1_xboole_0(sK4) ),
% 3.64/0.99      inference(cnf_transformation,[],[f75]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_25,negated_conjecture,
% 3.64/0.99      ( v2_waybel_0(sK4,k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f99]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_23,negated_conjecture,
% 3.64/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f97]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_508,plain,
% 3.64/0.99      ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,k1_tarski(k1_xboole_0)) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_506,c_27,c_25,c_23]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_17,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.64/0.99      | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X2))) = k7_subset_1(X1,X0,X2) ),
% 3.64/0.99      inference(cnf_transformation,[],[f94]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_555,plain,
% 3.64/0.99      ( k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = k7_subset_1(X2,X0,X1)
% 3.64/0.99      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X2)
% 3.64/0.99      | sK4 != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_23]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_556,plain,
% 3.64/0.99      ( k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,X0))) = k7_subset_1(X1,sK4,X0)
% 3.64/0.99      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(X1) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_555]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1802,plain,
% 3.64/0.99      ( k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))),sK4,X0) = k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,X0))) ),
% 3.64/0.99      inference(equality_resolution,[status(thm)],[c_556]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1862,plain,
% 3.64/0.99      ( k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,k1_tarski(k1_xboole_0)))) = k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_508,c_1802]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_14,plain,
% 3.64/0.99      ( ~ r2_hidden(X0,X1)
% 3.64/0.99      | r2_hidden(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,k1_tarski(X2)))))
% 3.64/0.99      | X2 = X0 ),
% 3.64/0.99      inference(cnf_transformation,[],[f91]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1464,plain,
% 3.64/0.99      ( X0 = X1
% 3.64/0.99      | r2_hidden(X1,X2) != iProver_top
% 3.64/0.99      | r2_hidden(X1,k5_xboole_0(X2,k1_setfam_1(k1_enumset1(X2,X2,k1_tarski(X0))))) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2559,plain,
% 3.64/0.99      ( k1_xboole_0 = X0
% 3.64/0.99      | r2_hidden(X0,k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4))) = iProver_top
% 3.64/0.99      | r2_hidden(X0,sK4) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1862,c_1464]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6,plain,
% 3.64/0.99      ( ~ r2_hidden(X0,X1)
% 3.64/0.99      | ~ r2_hidden(X0,k5_xboole_0(X2,k1_setfam_1(k1_enumset1(X2,X2,X1)))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f102]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1472,plain,
% 3.64/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.64/0.99      | r2_hidden(X0,k5_xboole_0(X2,k1_setfam_1(k1_enumset1(X2,X2,X1)))) != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2861,plain,
% 3.64/0.99      ( r2_hidden(X0,k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4))) != iProver_top
% 3.64/0.99      | r2_hidden(X0,k1_tarski(k1_xboole_0)) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1862,c_1472]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3075,plain,
% 3.64/0.99      ( k1_xboole_0 = X0
% 3.64/0.99      | r2_hidden(X0,k1_tarski(k1_xboole_0)) != iProver_top
% 3.64/0.99      | r2_hidden(X0,sK4) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_2559,c_2861]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3832,plain,
% 3.64/0.99      ( sK2(X0,k1_tarski(k1_xboole_0)) = k1_xboole_0
% 3.64/0.99      | r1_xboole_0(X0,k1_tarski(k1_xboole_0)) = iProver_top
% 3.64/0.99      | r2_hidden(sK2(X0,k1_tarski(k1_xboole_0)),sK4) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1468,c_3075]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_8677,plain,
% 3.64/0.99      ( sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0
% 3.64/0.99      | r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1467,c_3832]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_13,plain,
% 3.64/0.99      ( ~ r1_xboole_0(X0,X1)
% 3.64/0.99      | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = X0 ),
% 3.64/0.99      inference(cnf_transformation,[],[f90]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1465,plain,
% 3.64/0.99      ( k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) = X0
% 3.64/0.99      | r1_xboole_0(X0,X1) != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_8681,plain,
% 3.64/0.99      ( sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0
% 3.64/0.99      | k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,k1_tarski(k1_xboole_0)))) = sK4 ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_8677,c_1465]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_8682,plain,
% 3.64/0.99      ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) = sK4
% 3.64/0.99      | sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
% 3.64/0.99      inference(demodulation,[status(thm)],[c_8681,c_1862]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_22,negated_conjecture,
% 3.64/0.99      ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) != sK4 ),
% 3.64/0.99      inference(cnf_transformation,[],[f80]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_9029,plain,
% 3.64/0.99      ( sK2(sK4,k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_8682,c_22]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_21,plain,
% 3.64/0.99      ( ~ v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
% 3.64/0.99      | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
% 3.64/0.99      | ~ r2_hidden(X2,X0)
% 3.64/0.99      | ~ v1_xboole_0(X2)
% 3.64/0.99      | v1_xboole_0(X1)
% 3.64/0.99      | v1_xboole_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f96]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_26,negated_conjecture,
% 3.64/0.99      ( v1_subset_1(sK4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f100]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_389,plain,
% 3.64/0.99      ( ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
% 3.64/0.99      | ~ r2_hidden(X2,X0)
% 3.64/0.99      | ~ v1_xboole_0(X2)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | v1_xboole_0(X1)
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | sK4 != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_21,c_26]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_390,plain,
% 3.64/0.99      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.64/0.99      | ~ r2_hidden(X1,sK4)
% 3.64/0.99      | ~ v1_xboole_0(X1)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | v1_xboole_0(sK4)
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_389]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_392,plain,
% 3.64/0.99      ( v1_xboole_0(X0)
% 3.64/0.99      | ~ v1_xboole_0(X1)
% 3.64/0.99      | ~ r2_hidden(X1,sK4)
% 3.64/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.64/0.99      | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_390,c_27]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_393,plain,
% 3.64/0.99      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | ~ v13_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.64/0.99      | ~ r2_hidden(X1,sK4)
% 3.64/0.99      | ~ v1_xboole_0(X1)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_392]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_478,plain,
% 3.64/0.99      ( ~ v2_waybel_0(sK4,k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.64/0.99      | ~ r2_hidden(X1,sK4)
% 3.64/0.99      | ~ v1_xboole_0(X1)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | sK4 != sK4 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_24,c_393]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_523,plain,
% 3.64/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))
% 3.64/0.99      | ~ r2_hidden(X1,sK4)
% 3.64/0.99      | ~ v1_xboole_0(X1)
% 3.64/0.99      | v1_xboole_0(X0)
% 3.64/0.99      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | sK4 != sK4 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_25,c_478]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_564,plain,
% 3.64/0.99      ( ~ r2_hidden(X0,sK4)
% 3.64/0.99      | ~ v1_xboole_0(X0)
% 3.64/0.99      | v1_xboole_0(X1)
% 3.64/0.99      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))
% 3.64/0.99      | sK4 != sK4 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_23,c_523]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_692,plain,
% 3.64/0.99      ( ~ r2_hidden(X0,sK4)
% 3.64/0.99      | ~ v1_xboole_0(X0)
% 3.64/0.99      | v1_xboole_0(X1)
% 3.64/0.99      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X1))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X1)))
% 3.64/0.99      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))) ),
% 3.64/0.99      inference(equality_resolution_simp,[status(thm)],[c_564]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_936,plain,
% 3.64/0.99      ( ~ r2_hidden(X0,sK4) | ~ v1_xboole_0(X0) | ~ sP1_iProver_split ),
% 3.64/0.99      inference(splitting,
% 3.64/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 3.64/0.99                [c_692]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1458,plain,
% 3.64/0.99      ( r2_hidden(X0,sK4) != iProver_top
% 3.64/0.99      | v1_xboole_0(X0) != iProver_top
% 3.64/0.99      | sP1_iProver_split != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_936]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2568,plain,
% 3.64/0.99      ( r1_xboole_0(sK4,X0) = iProver_top
% 3.64/0.99      | v1_xboole_0(sK2(sK4,X0)) != iProver_top
% 3.64/0.99      | sP1_iProver_split != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1467,c_1458]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_937,plain,
% 3.64/0.99      ( sP1_iProver_split | sP0_iProver_split ),
% 3.64/0.99      inference(splitting,
% 3.64/0.99                [splitting(split),new_symbols(definition,[])],
% 3.64/0.99                [c_692]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_971,plain,
% 3.64/0.99      ( sP1_iProver_split = iProver_top
% 3.64/0.99      | sP0_iProver_split = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_937]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_19,plain,
% 3.64/0.99      ( v2_struct_0(X0)
% 3.64/0.99      | ~ l1_struct_0(X0)
% 3.64/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 3.64/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_426,plain,
% 3.64/0.99      ( ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK3 != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_29]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_427,plain,
% 3.64/0.99      ( ~ l1_struct_0(sK3) | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_426]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_42,plain,
% 3.64/0.99      ( v2_struct_0(sK3)
% 3.64/0.99      | ~ l1_struct_0(sK3)
% 3.64/0.99      | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_19]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_429,plain,
% 3.64/0.99      ( ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_427,c_29,c_28,c_42]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1460,plain,
% 3.64/0.99      ( v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_429]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_18,plain,
% 3.64/0.99      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_472,plain,
% 3.64/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK3 != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_28]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_473,plain,
% 3.64/0.99      ( u1_struct_0(sK3) = k2_struct_0(sK3) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_472]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1479,plain,
% 3.64/0.99      ( v1_xboole_0(k2_struct_0(sK3)) != iProver_top ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_1460,c_473]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_935,plain,
% 3.64/0.99      ( v1_xboole_0(X0)
% 3.64/0.99      | k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
% 3.64/0.99      | ~ sP0_iProver_split ),
% 3.64/0.99      inference(splitting,
% 3.64/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 3.64/0.99                [c_692]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1459,plain,
% 3.64/0.99      ( k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(X0))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(X0)))
% 3.64/0.99      | k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))) != k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X0))))
% 3.64/0.99      | v1_xboole_0(X0) = iProver_top
% 3.64/0.99      | sP0_iProver_split != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_935]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2199,plain,
% 3.64/0.99      ( k3_lattice3(k1_lattice3(k2_struct_0(sK3))) != k3_lattice3(k1_lattice3(k2_struct_0(sK3)))
% 3.64/0.99      | u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3)))) != u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK3))))
% 3.64/0.99      | v1_xboole_0(k2_struct_0(sK3)) = iProver_top
% 3.64/0.99      | sP0_iProver_split != iProver_top ),
% 3.64/0.99      inference(equality_resolution,[status(thm)],[c_1459]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2257,plain,
% 3.64/0.99      ( v1_xboole_0(k2_struct_0(sK3)) = iProver_top
% 3.64/0.99      | sP0_iProver_split != iProver_top ),
% 3.64/0.99      inference(equality_resolution_simp,[status(thm)],[c_2199]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3524,plain,
% 3.64/0.99      ( v1_xboole_0(sK2(sK4,X0)) != iProver_top
% 3.64/0.99      | r1_xboole_0(sK4,X0) = iProver_top ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_2568,c_971,c_1479,c_2257]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3525,plain,
% 3.64/0.99      ( r1_xboole_0(sK4,X0) = iProver_top
% 3.64/0.99      | v1_xboole_0(sK2(sK4,X0)) != iProver_top ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_3524]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_9036,plain,
% 3.64/0.99      ( r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top
% 3.64/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_9029,c_3525]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_8,plain,
% 3.64/0.99      ( v1_xboole_0(k1_xboole_0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f55]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_72,plain,
% 3.64/0.99      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_9147,plain,
% 3.64/0.99      ( r1_xboole_0(sK4,k1_tarski(k1_xboole_0)) = iProver_top ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_9036,c_72]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_9151,plain,
% 3.64/0.99      ( k5_xboole_0(sK4,k1_setfam_1(k1_enumset1(sK4,sK4,k1_tarski(k1_xboole_0)))) = sK4 ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_9147,c_1465]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_9727,plain,
% 3.64/0.99      ( k2_yellow19(sK3,k3_yellow19(sK3,k2_struct_0(sK3),sK4)) = sK4 ),
% 3.64/0.99      inference(demodulation,[status(thm)],[c_9151,c_1862]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(contradiction,plain,
% 3.64/0.99      ( $false ),
% 3.64/0.99      inference(minisat,[status(thm)],[c_9727,c_22]) ).
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.64/0.99  
% 3.64/0.99  ------                               Statistics
% 3.64/0.99  
% 3.64/0.99  ------ General
% 3.64/0.99  
% 3.64/0.99  abstr_ref_over_cycles:                  0
% 3.64/0.99  abstr_ref_under_cycles:                 0
% 3.64/0.99  gc_basic_clause_elim:                   0
% 3.64/0.99  forced_gc_time:                         0
% 3.64/0.99  parsing_time:                           0.009
% 3.64/0.99  unif_index_cands_time:                  0.
% 3.64/0.99  unif_index_add_time:                    0.
% 3.64/0.99  orderings_time:                         0.
% 3.64/0.99  out_proof_time:                         0.024
% 3.64/0.99  total_time:                             0.336
% 3.64/0.99  num_of_symbols:                         60
% 3.64/0.99  num_of_terms:                           11124
% 3.64/0.99  
% 3.64/0.99  ------ Preprocessing
% 3.64/0.99  
% 3.64/0.99  num_of_splits:                          2
% 3.64/0.99  num_of_split_atoms:                     2
% 3.64/0.99  num_of_reused_defs:                     0
% 3.64/0.99  num_eq_ax_congr_red:                    28
% 3.64/0.99  num_of_sem_filtered_clauses:            1
% 3.64/0.99  num_of_subtypes:                        0
% 3.64/0.99  monotx_restored_types:                  0
% 3.64/0.99  sat_num_of_epr_types:                   0
% 3.64/0.99  sat_num_of_non_cyclic_types:            0
% 3.64/0.99  sat_guarded_non_collapsed_types:        0
% 3.64/0.99  num_pure_diseq_elim:                    0
% 3.64/0.99  simp_replaced_by:                       0
% 3.64/0.99  res_preprocessed:                       139
% 3.64/0.99  prep_upred:                             0
% 3.64/0.99  prep_unflattend:                        6
% 3.64/0.99  smt_new_axioms:                         0
% 3.64/0.99  pred_elim_cands:                        3
% 3.64/0.99  pred_elim:                              6
% 3.64/0.99  pred_elim_cl:                           6
% 3.64/0.99  pred_elim_cycles:                       8
% 3.64/0.99  merged_defs:                            8
% 3.64/0.99  merged_defs_ncl:                        0
% 3.64/0.99  bin_hyper_res:                          8
% 3.64/0.99  prep_cycles:                            4
% 3.64/0.99  pred_elim_time:                         0.007
% 3.64/0.99  splitting_time:                         0.
% 3.64/0.99  sem_filter_time:                        0.
% 3.64/0.99  monotx_time:                            0.
% 3.64/0.99  subtype_inf_time:                       0.
% 3.64/0.99  
% 3.64/0.99  ------ Problem properties
% 3.64/0.99  
% 3.64/0.99  clauses:                                26
% 3.64/0.99  conjectures:                            2
% 3.64/0.99  epr:                                    6
% 3.64/0.99  horn:                                   17
% 3.64/0.99  ground:                                 7
% 3.64/0.99  unary:                                  7
% 3.64/0.99  binary:                                 11
% 3.64/0.99  lits:                                   56
% 3.64/0.99  lits_eq:                                14
% 3.64/0.99  fd_pure:                                0
% 3.64/0.99  fd_pseudo:                              0
% 3.64/0.99  fd_cond:                                0
% 3.64/0.99  fd_pseudo_cond:                         4
% 3.64/0.99  ac_symbols:                             0
% 3.64/0.99  
% 3.64/0.99  ------ Propositional Solver
% 3.64/0.99  
% 3.64/0.99  prop_solver_calls:                      28
% 3.64/0.99  prop_fast_solver_calls:                 1039
% 3.64/0.99  smt_solver_calls:                       0
% 3.64/0.99  smt_fast_solver_calls:                  0
% 3.64/0.99  prop_num_of_clauses:                    4117
% 3.64/0.99  prop_preprocess_simplified:             9928
% 3.64/0.99  prop_fo_subsumed:                       27
% 3.64/0.99  prop_solver_time:                       0.
% 3.64/0.99  smt_solver_time:                        0.
% 3.64/0.99  smt_fast_solver_time:                   0.
% 3.64/0.99  prop_fast_solver_time:                  0.
% 3.64/0.99  prop_unsat_core_time:                   0.
% 3.64/0.99  
% 3.64/0.99  ------ QBF
% 3.64/0.99  
% 3.64/0.99  qbf_q_res:                              0
% 3.64/0.99  qbf_num_tautologies:                    0
% 3.64/0.99  qbf_prep_cycles:                        0
% 3.64/0.99  
% 3.64/0.99  ------ BMC1
% 3.64/0.99  
% 3.64/0.99  bmc1_current_bound:                     -1
% 3.64/0.99  bmc1_last_solved_bound:                 -1
% 3.64/0.99  bmc1_unsat_core_size:                   -1
% 3.64/0.99  bmc1_unsat_core_parents_size:           -1
% 3.64/0.99  bmc1_merge_next_fun:                    0
% 3.64/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.64/0.99  
% 3.64/0.99  ------ Instantiation
% 3.64/0.99  
% 3.64/0.99  inst_num_of_clauses:                    1073
% 3.64/0.99  inst_num_in_passive:                    434
% 3.64/0.99  inst_num_in_active:                     402
% 3.64/0.99  inst_num_in_unprocessed:                237
% 3.64/0.99  inst_num_of_loops:                      550
% 3.64/0.99  inst_num_of_learning_restarts:          0
% 3.64/0.99  inst_num_moves_active_passive:          148
% 3.64/0.99  inst_lit_activity:                      0
% 3.64/0.99  inst_lit_activity_moves:                0
% 3.64/0.99  inst_num_tautologies:                   0
% 3.64/0.99  inst_num_prop_implied:                  0
% 3.64/0.99  inst_num_existing_simplified:           0
% 3.64/0.99  inst_num_eq_res_simplified:             0
% 3.64/0.99  inst_num_child_elim:                    0
% 3.64/0.99  inst_num_of_dismatching_blockings:      832
% 3.64/0.99  inst_num_of_non_proper_insts:           1079
% 3.64/0.99  inst_num_of_duplicates:                 0
% 3.64/0.99  inst_inst_num_from_inst_to_res:         0
% 3.64/0.99  inst_dismatching_checking_time:         0.
% 3.64/0.99  
% 3.64/0.99  ------ Resolution
% 3.64/0.99  
% 3.64/0.99  res_num_of_clauses:                     0
% 3.64/0.99  res_num_in_passive:                     0
% 3.64/0.99  res_num_in_active:                      0
% 3.64/0.99  res_num_of_loops:                       143
% 3.64/0.99  res_forward_subset_subsumed:            75
% 3.64/0.99  res_backward_subset_subsumed:           0
% 3.64/0.99  res_forward_subsumed:                   0
% 3.64/0.99  res_backward_subsumed:                  0
% 3.64/0.99  res_forward_subsumption_resolution:     0
% 3.64/0.99  res_backward_subsumption_resolution:    0
% 3.64/0.99  res_clause_to_clause_subsumption:       1134
% 3.64/0.99  res_orphan_elimination:                 0
% 3.64/0.99  res_tautology_del:                      83
% 3.64/0.99  res_num_eq_res_simplified:              1
% 3.64/0.99  res_num_sel_changes:                    0
% 3.64/0.99  res_moves_from_active_to_pass:          0
% 3.64/0.99  
% 3.64/0.99  ------ Superposition
% 3.64/0.99  
% 3.64/0.99  sup_time_total:                         0.
% 3.64/0.99  sup_time_generating:                    0.
% 3.64/0.99  sup_time_sim_full:                      0.
% 3.64/0.99  sup_time_sim_immed:                     0.
% 3.64/0.99  
% 3.64/0.99  sup_num_of_clauses:                     260
% 3.64/0.99  sup_num_in_active:                      101
% 3.64/0.99  sup_num_in_passive:                     159
% 3.64/0.99  sup_num_of_loops:                       108
% 3.64/0.99  sup_fw_superposition:                   148
% 3.64/0.99  sup_bw_superposition:                   270
% 3.64/0.99  sup_immediate_simplified:               122
% 3.64/0.99  sup_given_eliminated:                   0
% 3.64/0.99  comparisons_done:                       0
% 3.64/0.99  comparisons_avoided:                    10
% 3.64/0.99  
% 3.64/0.99  ------ Simplifications
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  sim_fw_subset_subsumed:                 26
% 3.64/0.99  sim_bw_subset_subsumed:                 5
% 3.64/0.99  sim_fw_subsumed:                        73
% 3.64/0.99  sim_bw_subsumed:                        10
% 3.64/0.99  sim_fw_subsumption_res:                 0
% 3.64/0.99  sim_bw_subsumption_res:                 0
% 3.64/0.99  sim_tautology_del:                      32
% 3.64/0.99  sim_eq_tautology_del:                   7
% 3.64/0.99  sim_eq_res_simp:                        6
% 3.64/0.99  sim_fw_demodulated:                     14
% 3.64/0.99  sim_bw_demodulated:                     1
% 3.64/0.99  sim_light_normalised:                   8
% 3.64/0.99  sim_joinable_taut:                      0
% 3.64/0.99  sim_joinable_simp:                      0
% 3.64/0.99  sim_ac_normalised:                      0
% 3.64/0.99  sim_smt_subsumption:                    0
% 3.64/0.99  
%------------------------------------------------------------------------------
