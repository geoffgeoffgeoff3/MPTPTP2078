%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:10:51 EST 2020

% Result     : CounterSatisfiable 1.46s
% Output     : Saturation 1.46s
% Verified   : 
% Statistics : Number of formulae       :  196 (6036 expanded)
%              Number of clauses        :  130 (1205 expanded)
%              Number of leaves         :   22 (1693 expanded)
%              Depth                    :   15
%              Number of atoms          :  283 (9008 expanded)
%              Number of equality atoms :  236 (7128 expanded)
%              Maximal formula depth    :   10 (   2 average)
%              Maximal clause size      :   10 (   1 average)
%              Maximal term depth       :    8 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f17,axiom,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0)) ),
    inference(cnf_transformation,[],[f17])).

fof(f11,axiom,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f64,plain,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_xboole_0) ),
    inference(definition_unfolding,[],[f52,f46])).

fof(f72,plain,(
    ! [X0] : m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) ),
    inference(definition_unfolding,[],[f48,f64])).

fof(f12,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f12])).

fof(f71,plain,(
    ! [X0] : k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(definition_unfolding,[],[f47,f64])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f20,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f20])).

fof(f10,axiom,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f61,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f55,f45])).

fof(f62,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f39,f61])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f51,f62])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f63,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) ),
    inference(definition_unfolding,[],[f44,f62])).

fof(f65,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k5_xboole_0(X1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1)))) ),
    inference(definition_unfolding,[],[f36,f63,f63])).

fof(f6,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f6])).

fof(f69,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))))))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f41,f62,f63])).

fof(f8,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f22,conjecture,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ~ ( k2_struct_0(X0) = X1
                & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) )
            & ~ ( k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)
                & k2_struct_0(X0) != X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0] :
        ( l1_struct_0(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( ~ ( k2_struct_0(X0) = X1
                  & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) )
              & ~ ( k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)
                  & k2_struct_0(X0) != X1 ) ) ) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f26,plain,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
       => ( ~ ( k2_struct_0(X0) = X1
              & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) )
          & ~ ( k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)
              & k2_struct_0(X0) != X1 ) ) ) ),
    inference(pure_predicate_removal,[],[f23])).

fof(f33,plain,(
    ? [X0,X1] :
      ( ( ( k2_struct_0(X0) = X1
          & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) )
        | ( k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)
          & k2_struct_0(X0) != X1 ) )
      & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) ),
    inference(ennf_transformation,[],[f26])).

fof(f34,plain,
    ( ? [X0,X1] :
        ( ( ( k2_struct_0(X0) = X1
            & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) )
          | ( k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)
            & k2_struct_0(X0) != X1 ) )
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
   => ( ( ( k2_struct_0(sK0) = sK1
          & k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) )
        | ( k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)
          & k2_struct_0(sK0) != sK1 ) )
      & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ( ( k2_struct_0(sK0) = sK1
        & k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) )
      | ( k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)
        & k2_struct_0(sK0) != sK1 ) )
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f33,f34])).

fof(f56,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f35])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f29])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f73,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_enumset1(X2,X2,X2,X1)))) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f50,f63])).

fof(f19,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f19])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => k3_subset_1(X0,k7_subset_1(X0,X1,X2)) = k4_subset_1(X0,k3_subset_1(X0,X1),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k3_subset_1(X0,k7_subset_1(X0,X1,X2)) = k4_subset_1(X0,k3_subset_1(X0,X1),X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( k3_subset_1(X0,k7_subset_1(X0,X1,X2)) = k4_subset_1(X0,k3_subset_1(X0,X1),X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f7,axiom,(
    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f7])).

fof(f70,plain,(
    ! [X0] : k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f42,f62])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f5,axiom,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f5])).

fof(f68,plain,(
    ! [X0] : k1_xboole_0 = k1_setfam_1(k2_enumset1(X0,X0,X0,k1_xboole_0)) ),
    inference(definition_unfolding,[],[f40,f61])).

fof(f3,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f3])).

fof(f38,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f25])).

fof(f67,plain,(
    ! [X0] : k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f38,f61])).

fof(f57,plain,
    ( k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)
    | k2_struct_0(sK0) != sK1 ),
    inference(cnf_transformation,[],[f35])).

fof(f60,plain,
    ( k2_struct_0(sK0) = sK1
    | k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_116,plain,
    ( X0_2 = X0_2 ),
    theory(equality)).

cnf(c_8,plain,
    ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_461,plain,
    ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_7,plain,
    ( k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_470,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_461,c_7])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X2))) = k7_subset_1(X1,X0,X2) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_458,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k7_subset_1(X2,X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_722,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k7_subset_1(X0,X0,X1) ),
    inference(superposition,[status(thm)],[c_470,c_458])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k5_xboole_0(X1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1)))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_2730,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
    inference(demodulation,[status(thm)],[c_722,c_0])).

cnf(c_2754,plain,
    ( k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
    inference(demodulation,[status(thm)],[c_2730,c_722])).

cnf(c_4,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))))))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1391,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))))))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_0,c_4])).

cnf(c_3090,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X1,k7_subset_1(X0,X0,X1))))) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1391,c_722])).

cnf(c_3098,plain,
    ( k7_subset_1(X0,X0,k5_xboole_0(X1,k7_subset_1(X0,X0,X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3090,c_722])).

cnf(c_4812,plain,
    ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),X0)) = k5_xboole_0(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_3098,c_2754])).

cnf(c_6,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_4854,plain,
    ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),X0)) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
    inference(demodulation,[status(thm)],[c_4812,c_6])).

cnf(c_5472,plain,
    ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
    inference(superposition,[status(thm)],[c_2754,c_4854])).

cnf(c_6375,plain,
    ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)))) = k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) ),
    inference(superposition,[status(thm)],[c_5472,c_4854])).

cnf(c_6385,plain,
    ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)))) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
    inference(light_normalisation,[status(thm)],[c_6375,c_5472])).

cnf(c_6377,plain,
    ( k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5472,c_3098])).

cnf(c_6386,plain,
    ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k1_xboole_0) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
    inference(demodulation,[status(thm)],[c_6385,c_6377])).

cnf(c_6378,plain,
    ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k1_setfam_1(k2_enumset1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1))))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5472,c_3090])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_455,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | k5_xboole_0(X0,k5_xboole_0(X2,k1_setfam_1(k2_enumset1(X2,X2,X2,X0)))) = k4_subset_1(X1,X0,X2) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_459,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k4_subset_1(X2,X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2731,plain,
    ( k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) = k4_subset_1(X2,X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_722,c_459])).

cnf(c_4459,plain,
    ( k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) = k4_subset_1(X0,X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_470,c_2731])).

cnf(c_5854,plain,
    ( k5_xboole_0(u1_struct_0(sK0),k7_subset_1(sK1,sK1,u1_struct_0(sK0))) = k4_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1) ),
    inference(superposition,[status(thm)],[c_455,c_4459])).

cnf(c_721,plain,
    ( k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,X0))) = k7_subset_1(u1_struct_0(sK0),sK1,X0) ),
    inference(superposition,[status(thm)],[c_455,c_458])).

cnf(c_2733,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,X0) = k7_subset_1(sK1,sK1,X0) ),
    inference(demodulation,[status(thm)],[c_722,c_721])).

cnf(c_1264,plain,
    ( k5_xboole_0(sK1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_455,c_459])).

cnf(c_1498,plain,
    ( k5_xboole_0(sK1,k5_xboole_0(u1_struct_0(sK0),k1_setfam_1(k2_enumset1(u1_struct_0(sK0),u1_struct_0(sK0),u1_struct_0(sK0),sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
    inference(superposition,[status(thm)],[c_470,c_1264])).

cnf(c_1387,plain,
    ( k5_xboole_0(sK1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,sK1)))) = k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0)) ),
    inference(superposition,[status(thm)],[c_721,c_0])).

cnf(c_1751,plain,
    ( k5_xboole_0(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
    inference(superposition,[status(thm)],[c_1498,c_1387])).

cnf(c_3125,plain,
    ( k5_xboole_0(u1_struct_0(sK0),k7_subset_1(sK1,sK1,u1_struct_0(sK0))) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
    inference(demodulation,[status(thm)],[c_2733,c_1751])).

cnf(c_13,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_456,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | k4_subset_1(X1,k3_subset_1(X1,X0),X2) = k3_subset_1(X1,k7_subset_1(X1,X0,X2)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_457,plain,
    ( k4_subset_1(X0,k3_subset_1(X0,X1),X2) = k3_subset_1(X0,k7_subset_1(X0,X1,X2))
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3769,plain,
    ( k4_subset_1(X0,k3_subset_1(X0,k1_xboole_0),X1) = k3_subset_1(X0,k7_subset_1(X0,k1_xboole_0,X1))
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_456,c_457])).

cnf(c_720,plain,
    ( k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) = k7_subset_1(X1,k1_xboole_0,X0) ),
    inference(superposition,[status(thm)],[c_456,c_458])).

cnf(c_5,plain,
    ( k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1953,plain,
    ( k7_subset_1(X0,k1_xboole_0,X1) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_720,c_5])).

cnf(c_3784,plain,
    ( k4_subset_1(X0,X0,X1) = X0
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3769,c_7,c_1953])).

cnf(c_3939,plain,
    ( k4_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1) = u1_struct_0(sK0) ),
    inference(superposition,[status(thm)],[c_455,c_3784])).

cnf(c_5859,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) = u1_struct_0(sK0) ),
    inference(light_normalisation,[status(thm)],[c_5854,c_3125,c_3939])).

cnf(c_1749,plain,
    ( k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1498,c_4])).

cnf(c_2773,plain,
    ( k7_subset_1(sK1,sK1,k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_722,c_1749])).

cnf(c_5943,plain,
    ( k7_subset_1(sK1,sK1,u1_struct_0(sK0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5859,c_2773])).

cnf(c_3770,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),X0) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),sK1,X0))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_455,c_457])).

cnf(c_3779,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),X0) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,X0))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3770,c_2733])).

cnf(c_4076,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,u1_struct_0(sK0))) ),
    inference(superposition,[status(thm)],[c_470,c_3779])).

cnf(c_6005,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_5943,c_4076])).

cnf(c_6006,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) = u1_struct_0(sK0) ),
    inference(demodulation,[status(thm)],[c_6005,c_7])).

cnf(c_5948,plain,
    ( k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,u1_struct_0(sK0)))) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5859,c_1749])).

cnf(c_1938,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1749,c_721])).

cnf(c_5947,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5859,c_1938])).

cnf(c_2735,plain,
    ( k5_xboole_0(sK1,k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
    inference(demodulation,[status(thm)],[c_722,c_1498])).

cnf(c_5945,plain,
    ( k5_xboole_0(sK1,k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = u1_struct_0(sK0) ),
    inference(demodulation,[status(thm)],[c_5859,c_2735])).

cnf(c_2732,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k7_subset_1(X1,X1,X0))))) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_722,c_4])).

cnf(c_2861,plain,
    ( k7_subset_1(X0,X0,k5_xboole_0(X0,k7_subset_1(X1,X1,X0))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2732,c_722])).

cnf(c_4810,plain,
    ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) = k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_2861,c_2754])).

cnf(c_4860,plain,
    ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) = k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) ),
    inference(demodulation,[status(thm)],[c_4810,c_6])).

cnf(c_5569,plain,
    ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),X0)) = k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) ),
    inference(superposition,[status(thm)],[c_2754,c_4860])).

cnf(c_3771,plain,
    ( k4_subset_1(X0,k3_subset_1(X0,X0),X1) = k3_subset_1(X0,k7_subset_1(X0,X0,X1))
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_470,c_457])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_460,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2124,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_456,c_460])).

cnf(c_2132,plain,
    ( k3_subset_1(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_2124,c_7])).

cnf(c_3774,plain,
    ( k3_subset_1(X0,k7_subset_1(X0,X0,X1)) = k4_subset_1(X0,k1_xboole_0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3771,c_2132])).

cnf(c_5151,plain,
    ( k3_subset_1(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = k4_subset_1(u1_struct_0(sK0),k1_xboole_0,sK1) ),
    inference(superposition,[status(thm)],[c_455,c_3774])).

cnf(c_1263,plain,
    ( k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k1_xboole_0)))) = k4_subset_1(X1,k1_xboole_0,X0)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_456,c_459])).

cnf(c_3,plain,
    ( k1_setfam_1(k2_enumset1(X0,X0,X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1276,plain,
    ( k4_subset_1(X0,k1_xboole_0,X1) = k5_xboole_0(k1_xboole_0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1263,c_3,c_6])).

cnf(c_1388,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)))) = k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k1_xboole_0)) ),
    inference(superposition,[status(thm)],[c_3,c_0])).

cnf(c_1399,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_1388,c_5,c_6])).

cnf(c_2873,plain,
    ( k4_subset_1(X0,k1_xboole_0,X1) = X1
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1276,c_1399])).

cnf(c_2880,plain,
    ( k4_subset_1(u1_struct_0(sK0),k1_xboole_0,sK1) = sK1 ),
    inference(superposition,[status(thm)],[c_455,c_2873])).

cnf(c_5156,plain,
    ( k3_subset_1(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_5151,c_2880])).

cnf(c_1022,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(sK1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,sK1))))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_721,c_4])).

cnf(c_1392,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(X0,k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,X0))))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_0,c_1022])).

cnf(c_1394,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0))) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1392,c_721])).

cnf(c_3123,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2733,c_1394])).

cnf(c_4836,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(sK1,k7_subset_1(X0,X0,sK1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2754,c_3123])).

cnf(c_4458,plain,
    ( k5_xboole_0(sK1,k7_subset_1(X0,X0,sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_455,c_2731])).

cnf(c_4074,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k1_xboole_0) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,k1_xboole_0)) ),
    inference(superposition,[status(thm)],[c_456,c_3779])).

cnf(c_2768,plain,
    ( k7_subset_1(X0,X0,k1_xboole_0) = k5_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_3,c_722])).

cnf(c_2788,plain,
    ( k7_subset_1(X0,X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_2768,c_6])).

cnf(c_4084,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k1_xboole_0) = k3_subset_1(u1_struct_0(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_4074,c_2788])).

cnf(c_4075,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),sK1) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,sK1)) ),
    inference(superposition,[status(thm)],[c_455,c_3779])).

cnf(c_1206,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(sK1,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5,c_1022])).

cnf(c_2,plain,
    ( k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1019,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,sK1) = k5_xboole_0(sK1,sK1) ),
    inference(superposition,[status(thm)],[c_2,c_721])).

cnf(c_1214,plain,
    ( k5_xboole_0(sK1,sK1) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1206,c_6,c_1019])).

cnf(c_1242,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,sK1) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1214,c_1019])).

cnf(c_3144,plain,
    ( k7_subset_1(sK1,sK1,sK1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2733,c_1242])).

cnf(c_4080,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),sK1) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_4075,c_3144])).

cnf(c_4081,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),sK1) = u1_struct_0(sK0) ),
    inference(demodulation,[status(thm)],[c_4080,c_7])).

cnf(c_3940,plain,
    ( k4_subset_1(X0,X0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_470,c_3784])).

cnf(c_3938,plain,
    ( k4_subset_1(X0,X0,k1_xboole_0) = X0 ),
    inference(superposition,[status(thm)],[c_456,c_3784])).

cnf(c_3389,plain,
    ( k7_subset_1(sK1,sK1,k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3123,c_2733])).

cnf(c_1021,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0))))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_721,c_4])).

cnf(c_2771,plain,
    ( k7_subset_1(X0,X0,k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_722,c_1021])).

cnf(c_3359,plain,
    ( k7_subset_1(X0,X0,k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_2771,c_2733])).

cnf(c_3472,plain,
    ( k7_subset_1(k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3389,c_3359])).

cnf(c_3474,plain,
    ( k7_subset_1(k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3472,c_6])).

cnf(c_1561,plain,
    ( k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0)) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1387,c_1264])).

cnf(c_3122,plain,
    ( k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2733,c_1561])).

cnf(c_2881,plain,
    ( k4_subset_1(X0,k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_470,c_2873])).

cnf(c_2879,plain,
    ( k4_subset_1(X0,k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_456,c_2873])).

cnf(c_2767,plain,
    ( k7_subset_1(X0,X0,X0) = k5_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_2,c_722])).

cnf(c_932,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k1_xboole_0)))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5,c_4])).

cnf(c_944,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_932,c_2,c_6])).

cnf(c_2791,plain,
    ( k7_subset_1(X0,X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_2767,c_944])).

cnf(c_2125,plain,
    ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_455,c_460])).

cnf(c_1496,plain,
    ( k5_xboole_0(sK1,k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_456,c_1264])).

cnf(c_1507,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) = sK1 ),
    inference(demodulation,[status(thm)],[c_1496,c_5,c_6])).

cnf(c_1497,plain,
    ( k5_xboole_0(sK1,k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,sK1) ),
    inference(superposition,[status(thm)],[c_455,c_1264])).

cnf(c_1502,plain,
    ( k5_xboole_0(sK1,k7_subset_1(u1_struct_0(sK0),sK1,sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,sK1) ),
    inference(demodulation,[status(thm)],[c_1497,c_721])).

cnf(c_1503,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,sK1) = k5_xboole_0(sK1,k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_1502,c_1242])).

cnf(c_1504,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,sK1) = sK1 ),
    inference(demodulation,[status(thm)],[c_1503,c_6])).

cnf(c_1465,plain,
    ( k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1399,c_5])).

cnf(c_1020,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) = k5_xboole_0(sK1,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_3,c_721])).

cnf(c_1028,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) = sK1 ),
    inference(demodulation,[status(thm)],[c_1020,c_6])).

cnf(c_724,plain,
    ( k7_subset_1(X0,X0,X1) = k7_subset_1(X2,X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_722,c_458])).

cnf(c_17,negated_conjecture,
    ( k2_struct_0(sK0) != sK1
    | k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_14,negated_conjecture,
    ( k2_struct_0(sK0) = sK1
    | k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(cnf_transformation,[],[f60])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n005.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:38:17 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.46/1.06  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.46/1.06  
% 1.46/1.06  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.46/1.06  
% 1.46/1.06  ------  iProver source info
% 1.46/1.06  
% 1.46/1.06  git: date: 2020-06-30 10:37:57 +0100
% 1.46/1.06  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.46/1.06  git: non_committed_changes: false
% 1.46/1.06  git: last_make_outside_of_git: false
% 1.46/1.06  
% 1.46/1.06  ------ 
% 1.46/1.06  
% 1.46/1.06  ------ Input Options
% 1.46/1.06  
% 1.46/1.06  --out_options                           all
% 1.46/1.06  --tptp_safe_out                         true
% 1.46/1.06  --problem_path                          ""
% 1.46/1.06  --include_path                          ""
% 1.46/1.06  --clausifier                            res/vclausify_rel
% 1.46/1.06  --clausifier_options                    --mode clausify
% 1.46/1.06  --stdin                                 false
% 1.46/1.06  --stats_out                             all
% 1.46/1.06  
% 1.46/1.06  ------ General Options
% 1.46/1.06  
% 1.46/1.06  --fof                                   false
% 1.46/1.06  --time_out_real                         305.
% 1.46/1.06  --time_out_virtual                      -1.
% 1.46/1.06  --symbol_type_check                     false
% 1.46/1.06  --clausify_out                          false
% 1.46/1.06  --sig_cnt_out                           false
% 1.46/1.06  --trig_cnt_out                          false
% 1.46/1.06  --trig_cnt_out_tolerance                1.
% 1.46/1.06  --trig_cnt_out_sk_spl                   false
% 1.46/1.06  --abstr_cl_out                          false
% 1.46/1.06  
% 1.46/1.06  ------ Global Options
% 1.46/1.06  
% 1.46/1.06  --schedule                              default
% 1.46/1.06  --add_important_lit                     false
% 1.46/1.06  --prop_solver_per_cl                    1000
% 1.46/1.06  --min_unsat_core                        false
% 1.46/1.06  --soft_assumptions                      false
% 1.46/1.06  --soft_lemma_size                       3
% 1.46/1.06  --prop_impl_unit_size                   0
% 1.46/1.06  --prop_impl_unit                        []
% 1.46/1.06  --share_sel_clauses                     true
% 1.46/1.06  --reset_solvers                         false
% 1.46/1.06  --bc_imp_inh                            [conj_cone]
% 1.46/1.06  --conj_cone_tolerance                   3.
% 1.46/1.06  --extra_neg_conj                        none
% 1.46/1.06  --large_theory_mode                     true
% 1.46/1.06  --prolific_symb_bound                   200
% 1.46/1.06  --lt_threshold                          2000
% 1.46/1.06  --clause_weak_htbl                      true
% 1.46/1.06  --gc_record_bc_elim                     false
% 1.46/1.06  
% 1.46/1.06  ------ Preprocessing Options
% 1.46/1.06  
% 1.46/1.06  --preprocessing_flag                    true
% 1.46/1.06  --time_out_prep_mult                    0.1
% 1.46/1.06  --splitting_mode                        input
% 1.46/1.06  --splitting_grd                         true
% 1.46/1.06  --splitting_cvd                         false
% 1.46/1.06  --splitting_cvd_svl                     false
% 1.46/1.06  --splitting_nvd                         32
% 1.46/1.06  --sub_typing                            true
% 1.46/1.06  --prep_gs_sim                           true
% 1.46/1.06  --prep_unflatten                        true
% 1.46/1.06  --prep_res_sim                          true
% 1.46/1.06  --prep_upred                            true
% 1.46/1.06  --prep_sem_filter                       exhaustive
% 1.46/1.06  --prep_sem_filter_out                   false
% 1.46/1.06  --pred_elim                             true
% 1.46/1.06  --res_sim_input                         true
% 1.46/1.06  --eq_ax_congr_red                       true
% 1.46/1.06  --pure_diseq_elim                       true
% 1.46/1.06  --brand_transform                       false
% 1.46/1.06  --non_eq_to_eq                          false
% 1.46/1.06  --prep_def_merge                        true
% 1.46/1.06  --prep_def_merge_prop_impl              false
% 1.46/1.06  --prep_def_merge_mbd                    true
% 1.46/1.06  --prep_def_merge_tr_red                 false
% 1.46/1.06  --prep_def_merge_tr_cl                  false
% 1.46/1.06  --smt_preprocessing                     true
% 1.46/1.06  --smt_ac_axioms                         fast
% 1.46/1.06  --preprocessed_out                      false
% 1.46/1.06  --preprocessed_stats                    false
% 1.46/1.06  
% 1.46/1.06  ------ Abstraction refinement Options
% 1.46/1.06  
% 1.46/1.06  --abstr_ref                             []
% 1.46/1.06  --abstr_ref_prep                        false
% 1.46/1.06  --abstr_ref_until_sat                   false
% 1.46/1.06  --abstr_ref_sig_restrict                funpre
% 1.46/1.06  --abstr_ref_af_restrict_to_split_sk     false
% 1.46/1.06  --abstr_ref_under                       []
% 1.46/1.06  
% 1.46/1.06  ------ SAT Options
% 1.46/1.06  
% 1.46/1.06  --sat_mode                              false
% 1.46/1.06  --sat_fm_restart_options                ""
% 1.46/1.06  --sat_gr_def                            false
% 1.46/1.06  --sat_epr_types                         true
% 1.46/1.06  --sat_non_cyclic_types                  false
% 1.46/1.06  --sat_finite_models                     false
% 1.46/1.06  --sat_fm_lemmas                         false
% 1.46/1.06  --sat_fm_prep                           false
% 1.46/1.06  --sat_fm_uc_incr                        true
% 1.46/1.06  --sat_out_model                         small
% 1.46/1.06  --sat_out_clauses                       false
% 1.46/1.06  
% 1.46/1.06  ------ QBF Options
% 1.46/1.06  
% 1.46/1.06  --qbf_mode                              false
% 1.46/1.06  --qbf_elim_univ                         false
% 1.46/1.06  --qbf_dom_inst                          none
% 1.46/1.06  --qbf_dom_pre_inst                      false
% 1.46/1.06  --qbf_sk_in                             false
% 1.46/1.06  --qbf_pred_elim                         true
% 1.46/1.06  --qbf_split                             512
% 1.46/1.06  
% 1.46/1.06  ------ BMC1 Options
% 1.46/1.06  
% 1.46/1.06  --bmc1_incremental                      false
% 1.46/1.06  --bmc1_axioms                           reachable_all
% 1.46/1.06  --bmc1_min_bound                        0
% 1.46/1.06  --bmc1_max_bound                        -1
% 1.46/1.06  --bmc1_max_bound_default                -1
% 1.46/1.06  --bmc1_symbol_reachability              true
% 1.46/1.06  --bmc1_property_lemmas                  false
% 1.46/1.06  --bmc1_k_induction                      false
% 1.46/1.06  --bmc1_non_equiv_states                 false
% 1.46/1.06  --bmc1_deadlock                         false
% 1.46/1.06  --bmc1_ucm                              false
% 1.46/1.06  --bmc1_add_unsat_core                   none
% 1.46/1.06  --bmc1_unsat_core_children              false
% 1.46/1.06  --bmc1_unsat_core_extrapolate_axioms    false
% 1.46/1.06  --bmc1_out_stat                         full
% 1.46/1.06  --bmc1_ground_init                      false
% 1.46/1.06  --bmc1_pre_inst_next_state              false
% 1.46/1.06  --bmc1_pre_inst_state                   false
% 1.46/1.06  --bmc1_pre_inst_reach_state             false
% 1.46/1.06  --bmc1_out_unsat_core                   false
% 1.46/1.06  --bmc1_aig_witness_out                  false
% 1.46/1.06  --bmc1_verbose                          false
% 1.46/1.06  --bmc1_dump_clauses_tptp                false
% 1.46/1.06  --bmc1_dump_unsat_core_tptp             false
% 1.46/1.06  --bmc1_dump_file                        -
% 1.46/1.06  --bmc1_ucm_expand_uc_limit              128
% 1.46/1.06  --bmc1_ucm_n_expand_iterations          6
% 1.46/1.06  --bmc1_ucm_extend_mode                  1
% 1.46/1.06  --bmc1_ucm_init_mode                    2
% 1.46/1.06  --bmc1_ucm_cone_mode                    none
% 1.46/1.06  --bmc1_ucm_reduced_relation_type        0
% 1.46/1.06  --bmc1_ucm_relax_model                  4
% 1.46/1.06  --bmc1_ucm_full_tr_after_sat            true
% 1.46/1.06  --bmc1_ucm_expand_neg_assumptions       false
% 1.46/1.06  --bmc1_ucm_layered_model                none
% 1.46/1.06  --bmc1_ucm_max_lemma_size               10
% 1.46/1.06  
% 1.46/1.06  ------ AIG Options
% 1.46/1.06  
% 1.46/1.06  --aig_mode                              false
% 1.46/1.06  
% 1.46/1.06  ------ Instantiation Options
% 1.46/1.06  
% 1.46/1.06  --instantiation_flag                    true
% 1.46/1.06  --inst_sos_flag                         false
% 1.46/1.06  --inst_sos_phase                        true
% 1.46/1.06  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.46/1.06  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.46/1.06  --inst_lit_sel_side                     num_symb
% 1.46/1.06  --inst_solver_per_active                1400
% 1.46/1.06  --inst_solver_calls_frac                1.
% 1.46/1.06  --inst_passive_queue_type               priority_queues
% 1.46/1.06  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.46/1.06  --inst_passive_queues_freq              [25;2]
% 1.46/1.06  --inst_dismatching                      true
% 1.46/1.06  --inst_eager_unprocessed_to_passive     true
% 1.46/1.06  --inst_prop_sim_given                   true
% 1.46/1.06  --inst_prop_sim_new                     false
% 1.46/1.06  --inst_subs_new                         false
% 1.46/1.06  --inst_eq_res_simp                      false
% 1.46/1.06  --inst_subs_given                       false
% 1.46/1.06  --inst_orphan_elimination               true
% 1.46/1.06  --inst_learning_loop_flag               true
% 1.46/1.06  --inst_learning_start                   3000
% 1.46/1.06  --inst_learning_factor                  2
% 1.46/1.06  --inst_start_prop_sim_after_learn       3
% 1.46/1.06  --inst_sel_renew                        solver
% 1.46/1.06  --inst_lit_activity_flag                true
% 1.46/1.06  --inst_restr_to_given                   false
% 1.46/1.06  --inst_activity_threshold               500
% 1.46/1.06  --inst_out_proof                        true
% 1.46/1.06  
% 1.46/1.06  ------ Resolution Options
% 1.46/1.06  
% 1.46/1.06  --resolution_flag                       true
% 1.46/1.06  --res_lit_sel                           adaptive
% 1.46/1.06  --res_lit_sel_side                      none
% 1.46/1.06  --res_ordering                          kbo
% 1.46/1.06  --res_to_prop_solver                    active
% 1.46/1.06  --res_prop_simpl_new                    false
% 1.46/1.06  --res_prop_simpl_given                  true
% 1.46/1.06  --res_passive_queue_type                priority_queues
% 1.46/1.06  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.46/1.06  --res_passive_queues_freq               [15;5]
% 1.46/1.06  --res_forward_subs                      full
% 1.46/1.06  --res_backward_subs                     full
% 1.46/1.06  --res_forward_subs_resolution           true
% 1.46/1.06  --res_backward_subs_resolution          true
% 1.46/1.06  --res_orphan_elimination                true
% 1.46/1.06  --res_time_limit                        2.
% 1.46/1.06  --res_out_proof                         true
% 1.46/1.06  
% 1.46/1.06  ------ Superposition Options
% 1.46/1.06  
% 1.46/1.06  --superposition_flag                    true
% 1.46/1.06  --sup_passive_queue_type                priority_queues
% 1.46/1.06  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.46/1.06  --sup_passive_queues_freq               [8;1;4]
% 1.46/1.06  --demod_completeness_check              fast
% 1.46/1.06  --demod_use_ground                      true
% 1.46/1.06  --sup_to_prop_solver                    passive
% 1.46/1.06  --sup_prop_simpl_new                    true
% 1.46/1.06  --sup_prop_simpl_given                  true
% 1.46/1.06  --sup_fun_splitting                     false
% 1.46/1.06  --sup_smt_interval                      50000
% 1.46/1.06  
% 1.46/1.06  ------ Superposition Simplification Setup
% 1.46/1.06  
% 1.46/1.06  --sup_indices_passive                   []
% 1.46/1.06  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/1.06  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/1.06  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/1.06  --sup_full_triv                         [TrivRules;PropSubs]
% 1.46/1.06  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/1.06  --sup_full_bw                           [BwDemod]
% 1.46/1.06  --sup_immed_triv                        [TrivRules]
% 1.46/1.06  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.46/1.06  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/1.06  --sup_immed_bw_main                     []
% 1.46/1.06  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/1.06  --sup_input_triv                        [Unflattening;TrivRules]
% 1.46/1.06  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/1.06  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/1.06  
% 1.46/1.06  ------ Combination Options
% 1.46/1.06  
% 1.46/1.06  --comb_res_mult                         3
% 1.46/1.06  --comb_sup_mult                         2
% 1.46/1.06  --comb_inst_mult                        10
% 1.46/1.06  
% 1.46/1.06  ------ Debug Options
% 1.46/1.06  
% 1.46/1.06  --dbg_backtrace                         false
% 1.46/1.06  --dbg_dump_prop_clauses                 false
% 1.46/1.06  --dbg_dump_prop_clauses_file            -
% 1.46/1.06  --dbg_out_stat                          false
% 1.46/1.06  ------ Parsing...
% 1.46/1.06  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.46/1.06  
% 1.46/1.06  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.46/1.06  
% 1.46/1.06  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.46/1.06  
% 1.46/1.06  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.46/1.06  ------ Proving...
% 1.46/1.06  ------ Problem Properties 
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  clauses                                 17
% 1.46/1.06  conjectures                             3
% 1.46/1.06  EPR                                     0
% 1.46/1.06  Horn                                    16
% 1.46/1.06  unary                                   11
% 1.46/1.06  binary                                  4
% 1.46/1.06  lits                                    25
% 1.46/1.06  lits eq                                 16
% 1.46/1.06  fd_pure                                 0
% 1.46/1.06  fd_pseudo                               0
% 1.46/1.06  fd_cond                                 0
% 1.46/1.06  fd_pseudo_cond                          0
% 1.46/1.06  AC symbols                              0
% 1.46/1.06  
% 1.46/1.06  ------ Schedule dynamic 5 is on 
% 1.46/1.06  
% 1.46/1.06  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  ------ 
% 1.46/1.06  Current options:
% 1.46/1.06  ------ 
% 1.46/1.06  
% 1.46/1.06  ------ Input Options
% 1.46/1.06  
% 1.46/1.06  --out_options                           all
% 1.46/1.06  --tptp_safe_out                         true
% 1.46/1.06  --problem_path                          ""
% 1.46/1.06  --include_path                          ""
% 1.46/1.06  --clausifier                            res/vclausify_rel
% 1.46/1.06  --clausifier_options                    --mode clausify
% 1.46/1.06  --stdin                                 false
% 1.46/1.06  --stats_out                             all
% 1.46/1.06  
% 1.46/1.06  ------ General Options
% 1.46/1.06  
% 1.46/1.06  --fof                                   false
% 1.46/1.06  --time_out_real                         305.
% 1.46/1.06  --time_out_virtual                      -1.
% 1.46/1.06  --symbol_type_check                     false
% 1.46/1.06  --clausify_out                          false
% 1.46/1.06  --sig_cnt_out                           false
% 1.46/1.06  --trig_cnt_out                          false
% 1.46/1.06  --trig_cnt_out_tolerance                1.
% 1.46/1.06  --trig_cnt_out_sk_spl                   false
% 1.46/1.06  --abstr_cl_out                          false
% 1.46/1.06  
% 1.46/1.06  ------ Global Options
% 1.46/1.06  
% 1.46/1.06  --schedule                              default
% 1.46/1.06  --add_important_lit                     false
% 1.46/1.06  --prop_solver_per_cl                    1000
% 1.46/1.06  --min_unsat_core                        false
% 1.46/1.06  --soft_assumptions                      false
% 1.46/1.06  --soft_lemma_size                       3
% 1.46/1.06  --prop_impl_unit_size                   0
% 1.46/1.06  --prop_impl_unit                        []
% 1.46/1.06  --share_sel_clauses                     true
% 1.46/1.06  --reset_solvers                         false
% 1.46/1.06  --bc_imp_inh                            [conj_cone]
% 1.46/1.06  --conj_cone_tolerance                   3.
% 1.46/1.06  --extra_neg_conj                        none
% 1.46/1.06  --large_theory_mode                     true
% 1.46/1.06  --prolific_symb_bound                   200
% 1.46/1.06  --lt_threshold                          2000
% 1.46/1.06  --clause_weak_htbl                      true
% 1.46/1.06  --gc_record_bc_elim                     false
% 1.46/1.06  
% 1.46/1.06  ------ Preprocessing Options
% 1.46/1.06  
% 1.46/1.06  --preprocessing_flag                    true
% 1.46/1.06  --time_out_prep_mult                    0.1
% 1.46/1.06  --splitting_mode                        input
% 1.46/1.06  --splitting_grd                         true
% 1.46/1.06  --splitting_cvd                         false
% 1.46/1.06  --splitting_cvd_svl                     false
% 1.46/1.06  --splitting_nvd                         32
% 1.46/1.06  --sub_typing                            true
% 1.46/1.06  --prep_gs_sim                           true
% 1.46/1.06  --prep_unflatten                        true
% 1.46/1.06  --prep_res_sim                          true
% 1.46/1.06  --prep_upred                            true
% 1.46/1.06  --prep_sem_filter                       exhaustive
% 1.46/1.06  --prep_sem_filter_out                   false
% 1.46/1.06  --pred_elim                             true
% 1.46/1.06  --res_sim_input                         true
% 1.46/1.06  --eq_ax_congr_red                       true
% 1.46/1.06  --pure_diseq_elim                       true
% 1.46/1.06  --brand_transform                       false
% 1.46/1.06  --non_eq_to_eq                          false
% 1.46/1.06  --prep_def_merge                        true
% 1.46/1.06  --prep_def_merge_prop_impl              false
% 1.46/1.06  --prep_def_merge_mbd                    true
% 1.46/1.06  --prep_def_merge_tr_red                 false
% 1.46/1.06  --prep_def_merge_tr_cl                  false
% 1.46/1.06  --smt_preprocessing                     true
% 1.46/1.06  --smt_ac_axioms                         fast
% 1.46/1.06  --preprocessed_out                      false
% 1.46/1.06  --preprocessed_stats                    false
% 1.46/1.06  
% 1.46/1.06  ------ Abstraction refinement Options
% 1.46/1.06  
% 1.46/1.06  --abstr_ref                             []
% 1.46/1.06  --abstr_ref_prep                        false
% 1.46/1.06  --abstr_ref_until_sat                   false
% 1.46/1.06  --abstr_ref_sig_restrict                funpre
% 1.46/1.06  --abstr_ref_af_restrict_to_split_sk     false
% 1.46/1.06  --abstr_ref_under                       []
% 1.46/1.06  
% 1.46/1.06  ------ SAT Options
% 1.46/1.06  
% 1.46/1.06  --sat_mode                              false
% 1.46/1.06  --sat_fm_restart_options                ""
% 1.46/1.06  --sat_gr_def                            false
% 1.46/1.06  --sat_epr_types                         true
% 1.46/1.06  --sat_non_cyclic_types                  false
% 1.46/1.06  --sat_finite_models                     false
% 1.46/1.06  --sat_fm_lemmas                         false
% 1.46/1.06  --sat_fm_prep                           false
% 1.46/1.06  --sat_fm_uc_incr                        true
% 1.46/1.06  --sat_out_model                         small
% 1.46/1.06  --sat_out_clauses                       false
% 1.46/1.06  
% 1.46/1.06  ------ QBF Options
% 1.46/1.06  
% 1.46/1.06  --qbf_mode                              false
% 1.46/1.06  --qbf_elim_univ                         false
% 1.46/1.06  --qbf_dom_inst                          none
% 1.46/1.06  --qbf_dom_pre_inst                      false
% 1.46/1.06  --qbf_sk_in                             false
% 1.46/1.06  --qbf_pred_elim                         true
% 1.46/1.06  --qbf_split                             512
% 1.46/1.06  
% 1.46/1.06  ------ BMC1 Options
% 1.46/1.06  
% 1.46/1.06  --bmc1_incremental                      false
% 1.46/1.06  --bmc1_axioms                           reachable_all
% 1.46/1.06  --bmc1_min_bound                        0
% 1.46/1.06  --bmc1_max_bound                        -1
% 1.46/1.06  --bmc1_max_bound_default                -1
% 1.46/1.06  --bmc1_symbol_reachability              true
% 1.46/1.06  --bmc1_property_lemmas                  false
% 1.46/1.06  --bmc1_k_induction                      false
% 1.46/1.06  --bmc1_non_equiv_states                 false
% 1.46/1.06  --bmc1_deadlock                         false
% 1.46/1.06  --bmc1_ucm                              false
% 1.46/1.06  --bmc1_add_unsat_core                   none
% 1.46/1.06  --bmc1_unsat_core_children              false
% 1.46/1.06  --bmc1_unsat_core_extrapolate_axioms    false
% 1.46/1.06  --bmc1_out_stat                         full
% 1.46/1.06  --bmc1_ground_init                      false
% 1.46/1.06  --bmc1_pre_inst_next_state              false
% 1.46/1.06  --bmc1_pre_inst_state                   false
% 1.46/1.06  --bmc1_pre_inst_reach_state             false
% 1.46/1.06  --bmc1_out_unsat_core                   false
% 1.46/1.06  --bmc1_aig_witness_out                  false
% 1.46/1.06  --bmc1_verbose                          false
% 1.46/1.06  --bmc1_dump_clauses_tptp                false
% 1.46/1.06  --bmc1_dump_unsat_core_tptp             false
% 1.46/1.06  --bmc1_dump_file                        -
% 1.46/1.06  --bmc1_ucm_expand_uc_limit              128
% 1.46/1.06  --bmc1_ucm_n_expand_iterations          6
% 1.46/1.06  --bmc1_ucm_extend_mode                  1
% 1.46/1.06  --bmc1_ucm_init_mode                    2
% 1.46/1.06  --bmc1_ucm_cone_mode                    none
% 1.46/1.06  --bmc1_ucm_reduced_relation_type        0
% 1.46/1.06  --bmc1_ucm_relax_model                  4
% 1.46/1.06  --bmc1_ucm_full_tr_after_sat            true
% 1.46/1.06  --bmc1_ucm_expand_neg_assumptions       false
% 1.46/1.06  --bmc1_ucm_layered_model                none
% 1.46/1.06  --bmc1_ucm_max_lemma_size               10
% 1.46/1.06  
% 1.46/1.06  ------ AIG Options
% 1.46/1.06  
% 1.46/1.06  --aig_mode                              false
% 1.46/1.06  
% 1.46/1.06  ------ Instantiation Options
% 1.46/1.06  
% 1.46/1.06  --instantiation_flag                    true
% 1.46/1.06  --inst_sos_flag                         false
% 1.46/1.06  --inst_sos_phase                        true
% 1.46/1.06  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.46/1.06  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.46/1.06  --inst_lit_sel_side                     none
% 1.46/1.06  --inst_solver_per_active                1400
% 1.46/1.06  --inst_solver_calls_frac                1.
% 1.46/1.06  --inst_passive_queue_type               priority_queues
% 1.46/1.06  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.46/1.06  --inst_passive_queues_freq              [25;2]
% 1.46/1.06  --inst_dismatching                      true
% 1.46/1.06  --inst_eager_unprocessed_to_passive     true
% 1.46/1.06  --inst_prop_sim_given                   true
% 1.46/1.06  --inst_prop_sim_new                     false
% 1.46/1.06  --inst_subs_new                         false
% 1.46/1.06  --inst_eq_res_simp                      false
% 1.46/1.06  --inst_subs_given                       false
% 1.46/1.06  --inst_orphan_elimination               true
% 1.46/1.06  --inst_learning_loop_flag               true
% 1.46/1.06  --inst_learning_start                   3000
% 1.46/1.06  --inst_learning_factor                  2
% 1.46/1.06  --inst_start_prop_sim_after_learn       3
% 1.46/1.06  --inst_sel_renew                        solver
% 1.46/1.06  --inst_lit_activity_flag                true
% 1.46/1.06  --inst_restr_to_given                   false
% 1.46/1.06  --inst_activity_threshold               500
% 1.46/1.06  --inst_out_proof                        true
% 1.46/1.06  
% 1.46/1.06  ------ Resolution Options
% 1.46/1.06  
% 1.46/1.06  --resolution_flag                       false
% 1.46/1.06  --res_lit_sel                           adaptive
% 1.46/1.06  --res_lit_sel_side                      none
% 1.46/1.06  --res_ordering                          kbo
% 1.46/1.06  --res_to_prop_solver                    active
% 1.46/1.06  --res_prop_simpl_new                    false
% 1.46/1.06  --res_prop_simpl_given                  true
% 1.46/1.06  --res_passive_queue_type                priority_queues
% 1.46/1.06  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.46/1.06  --res_passive_queues_freq               [15;5]
% 1.46/1.06  --res_forward_subs                      full
% 1.46/1.06  --res_backward_subs                     full
% 1.46/1.06  --res_forward_subs_resolution           true
% 1.46/1.06  --res_backward_subs_resolution          true
% 1.46/1.06  --res_orphan_elimination                true
% 1.46/1.06  --res_time_limit                        2.
% 1.46/1.06  --res_out_proof                         true
% 1.46/1.06  
% 1.46/1.06  ------ Superposition Options
% 1.46/1.06  
% 1.46/1.06  --superposition_flag                    true
% 1.46/1.06  --sup_passive_queue_type                priority_queues
% 1.46/1.06  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.46/1.06  --sup_passive_queues_freq               [8;1;4]
% 1.46/1.06  --demod_completeness_check              fast
% 1.46/1.06  --demod_use_ground                      true
% 1.46/1.06  --sup_to_prop_solver                    passive
% 1.46/1.06  --sup_prop_simpl_new                    true
% 1.46/1.06  --sup_prop_simpl_given                  true
% 1.46/1.06  --sup_fun_splitting                     false
% 1.46/1.06  --sup_smt_interval                      50000
% 1.46/1.06  
% 1.46/1.06  ------ Superposition Simplification Setup
% 1.46/1.06  
% 1.46/1.06  --sup_indices_passive                   []
% 1.46/1.06  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/1.06  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/1.06  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/1.06  --sup_full_triv                         [TrivRules;PropSubs]
% 1.46/1.06  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/1.06  --sup_full_bw                           [BwDemod]
% 1.46/1.06  --sup_immed_triv                        [TrivRules]
% 1.46/1.06  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.46/1.06  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/1.06  --sup_immed_bw_main                     []
% 1.46/1.06  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/1.06  --sup_input_triv                        [Unflattening;TrivRules]
% 1.46/1.06  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/1.06  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/1.06  
% 1.46/1.06  ------ Combination Options
% 1.46/1.06  
% 1.46/1.06  --comb_res_mult                         3
% 1.46/1.06  --comb_sup_mult                         2
% 1.46/1.06  --comb_inst_mult                        10
% 1.46/1.06  
% 1.46/1.06  ------ Debug Options
% 1.46/1.06  
% 1.46/1.06  --dbg_backtrace                         false
% 1.46/1.06  --dbg_dump_prop_clauses                 false
% 1.46/1.06  --dbg_dump_prop_clauses_file            -
% 1.46/1.06  --dbg_out_stat                          false
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  ------ Proving...
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  % SZS status CounterSatisfiable for theBenchmark.p
% 1.46/1.06  
% 1.46/1.06  % SZS output start Saturation for theBenchmark.p
% 1.46/1.06  
% 1.46/1.06  fof(f13,axiom,(
% 1.46/1.06    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f48,plain,(
% 1.46/1.06    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f13])).
% 1.46/1.06  
% 1.46/1.06  fof(f17,axiom,(
% 1.46/1.06    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f52,plain,(
% 1.46/1.06    ( ! [X0] : (k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f17])).
% 1.46/1.06  
% 1.46/1.06  fof(f11,axiom,(
% 1.46/1.06    ! [X0] : k1_xboole_0 = k1_subset_1(X0)),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f46,plain,(
% 1.46/1.06    ( ! [X0] : (k1_xboole_0 = k1_subset_1(X0)) )),
% 1.46/1.06    inference(cnf_transformation,[],[f11])).
% 1.46/1.06  
% 1.46/1.06  fof(f64,plain,(
% 1.46/1.06    ( ! [X0] : (k2_subset_1(X0) = k3_subset_1(X0,k1_xboole_0)) )),
% 1.46/1.06    inference(definition_unfolding,[],[f52,f46])).
% 1.46/1.06  
% 1.46/1.06  fof(f72,plain,(
% 1.46/1.06    ( ! [X0] : (m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f48,f64])).
% 1.46/1.06  
% 1.46/1.06  fof(f12,axiom,(
% 1.46/1.06    ! [X0] : k2_subset_1(X0) = X0),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f47,plain,(
% 1.46/1.06    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 1.46/1.06    inference(cnf_transformation,[],[f12])).
% 1.46/1.06  
% 1.46/1.06  fof(f71,plain,(
% 1.46/1.06    ( ! [X0] : (k3_subset_1(X0,k1_xboole_0) = X0) )),
% 1.46/1.06    inference(definition_unfolding,[],[f47,f64])).
% 1.46/1.06  
% 1.46/1.06  fof(f16,axiom,(
% 1.46/1.06    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f31,plain,(
% 1.46/1.06    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/1.06    inference(ennf_transformation,[],[f16])).
% 1.46/1.06  
% 1.46/1.06  fof(f51,plain,(
% 1.46/1.06    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f31])).
% 1.46/1.06  
% 1.46/1.06  fof(f4,axiom,(
% 1.46/1.06    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f39,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f4])).
% 1.46/1.06  
% 1.46/1.06  fof(f20,axiom,(
% 1.46/1.06    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f55,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f20])).
% 1.46/1.06  
% 1.46/1.06  fof(f10,axiom,(
% 1.46/1.06    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1)),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f45,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.46/1.06    inference(cnf_transformation,[],[f10])).
% 1.46/1.06  
% 1.46/1.06  fof(f61,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f55,f45])).
% 1.46/1.06  
% 1.46/1.06  fof(f62,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1)))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f39,f61])).
% 1.46/1.06  
% 1.46/1.06  fof(f74,plain,(
% 1.46/1.06    ( ! [X2,X0,X1] : (k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f51,f62])).
% 1.46/1.06  
% 1.46/1.06  fof(f1,axiom,(
% 1.46/1.06    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f36,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 1.46/1.06    inference(cnf_transformation,[],[f1])).
% 1.46/1.06  
% 1.46/1.06  fof(f9,axiom,(
% 1.46/1.06    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f44,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f9])).
% 1.46/1.06  
% 1.46/1.06  fof(f63,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f44,f62])).
% 1.46/1.06  
% 1.46/1.06  fof(f65,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k5_xboole_0(X1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f36,f63,f63])).
% 1.46/1.06  
% 1.46/1.06  fof(f6,axiom,(
% 1.46/1.06    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f41,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0) )),
% 1.46/1.06    inference(cnf_transformation,[],[f6])).
% 1.46/1.06  
% 1.46/1.06  fof(f69,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))))))) = k1_xboole_0) )),
% 1.46/1.06    inference(definition_unfolding,[],[f41,f62,f63])).
% 1.46/1.06  
% 1.46/1.06  fof(f8,axiom,(
% 1.46/1.06    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f43,plain,(
% 1.46/1.06    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.46/1.06    inference(cnf_transformation,[],[f8])).
% 1.46/1.06  
% 1.46/1.06  fof(f22,conjecture,(
% 1.46/1.06    ! [X0] : (l1_struct_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (~(k2_struct_0(X0) = X1 & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) & ~(k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) & k2_struct_0(X0) != X1))))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f23,negated_conjecture,(
% 1.46/1.06    ~! [X0] : (l1_struct_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (~(k2_struct_0(X0) = X1 & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) & ~(k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) & k2_struct_0(X0) != X1))))),
% 1.46/1.06    inference(negated_conjecture,[],[f22])).
% 1.46/1.06  
% 1.46/1.06  fof(f26,plain,(
% 1.46/1.06    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (~(k2_struct_0(X0) = X1 & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) & ~(k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) & k2_struct_0(X0) != X1)))),
% 1.46/1.06    inference(pure_predicate_removal,[],[f23])).
% 1.46/1.06  
% 1.46/1.06  fof(f33,plain,(
% 1.46/1.06    ? [X0,X1] : (((k2_struct_0(X0) = X1 & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | (k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) & k2_struct_0(X0) != X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))),
% 1.46/1.06    inference(ennf_transformation,[],[f26])).
% 1.46/1.06  
% 1.46/1.06  fof(f34,plain,(
% 1.46/1.06    ? [X0,X1] : (((k2_struct_0(X0) = X1 & k1_xboole_0 != k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | (k1_xboole_0 = k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) & k2_struct_0(X0) != X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (((k2_struct_0(sK0) = sK1 & k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) | (k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) & k2_struct_0(sK0) != sK1)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))))),
% 1.46/1.06    introduced(choice_axiom,[])).
% 1.46/1.06  
% 1.46/1.06  fof(f35,plain,(
% 1.46/1.06    ((k2_struct_0(sK0) = sK1 & k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) | (k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) & k2_struct_0(sK0) != sK1)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.46/1.06    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f33,f34])).
% 1.46/1.06  
% 1.46/1.06  fof(f56,plain,(
% 1.46/1.06    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.46/1.06    inference(cnf_transformation,[],[f35])).
% 1.46/1.06  
% 1.46/1.06  fof(f15,axiom,(
% 1.46/1.06    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f29,plain,(
% 1.46/1.06    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 1.46/1.06    inference(ennf_transformation,[],[f15])).
% 1.46/1.06  
% 1.46/1.06  fof(f30,plain,(
% 1.46/1.06    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/1.06    inference(flattening,[],[f29])).
% 1.46/1.06  
% 1.46/1.06  fof(f50,plain,(
% 1.46/1.06    ( ! [X2,X0,X1] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f30])).
% 1.46/1.06  
% 1.46/1.06  fof(f73,plain,(
% 1.46/1.06    ( ! [X2,X0,X1] : (k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_enumset1(X2,X2,X2,X1)))) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f50,f63])).
% 1.46/1.06  
% 1.46/1.06  fof(f19,axiom,(
% 1.46/1.06    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f54,plain,(
% 1.46/1.06    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f19])).
% 1.46/1.06  
% 1.46/1.06  fof(f18,axiom,(
% 1.46/1.06    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k3_subset_1(X0,k7_subset_1(X0,X1,X2)) = k4_subset_1(X0,k3_subset_1(X0,X1),X2)))),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f32,plain,(
% 1.46/1.06    ! [X0,X1] : (! [X2] : (k3_subset_1(X0,k7_subset_1(X0,X1,X2)) = k4_subset_1(X0,k3_subset_1(X0,X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/1.06    inference(ennf_transformation,[],[f18])).
% 1.46/1.06  
% 1.46/1.06  fof(f53,plain,(
% 1.46/1.06    ( ! [X2,X0,X1] : (k3_subset_1(X0,k7_subset_1(X0,X1,X2)) = k4_subset_1(X0,k3_subset_1(X0,X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f32])).
% 1.46/1.06  
% 1.46/1.06  fof(f7,axiom,(
% 1.46/1.06    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f42,plain,(
% 1.46/1.06    ( ! [X0] : (k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0) )),
% 1.46/1.06    inference(cnf_transformation,[],[f7])).
% 1.46/1.06  
% 1.46/1.06  fof(f70,plain,(
% 1.46/1.06    ( ! [X0] : (k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) = k1_xboole_0) )),
% 1.46/1.06    inference(definition_unfolding,[],[f42,f62])).
% 1.46/1.06  
% 1.46/1.06  fof(f14,axiom,(
% 1.46/1.06    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f28,plain,(
% 1.46/1.06    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/1.06    inference(ennf_transformation,[],[f14])).
% 1.46/1.06  
% 1.46/1.06  fof(f49,plain,(
% 1.46/1.06    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/1.06    inference(cnf_transformation,[],[f28])).
% 1.46/1.06  
% 1.46/1.06  fof(f5,axiom,(
% 1.46/1.06    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f40,plain,(
% 1.46/1.06    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0) )),
% 1.46/1.06    inference(cnf_transformation,[],[f5])).
% 1.46/1.06  
% 1.46/1.06  fof(f68,plain,(
% 1.46/1.06    ( ! [X0] : (k1_xboole_0 = k1_setfam_1(k2_enumset1(X0,X0,X0,k1_xboole_0))) )),
% 1.46/1.06    inference(definition_unfolding,[],[f40,f61])).
% 1.46/1.06  
% 1.46/1.06  fof(f3,axiom,(
% 1.46/1.06    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 1.46/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/1.06  
% 1.46/1.06  fof(f25,plain,(
% 1.46/1.06    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 1.46/1.06    inference(rectify,[],[f3])).
% 1.46/1.06  
% 1.46/1.06  fof(f38,plain,(
% 1.46/1.06    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 1.46/1.06    inference(cnf_transformation,[],[f25])).
% 1.46/1.06  
% 1.46/1.06  fof(f67,plain,(
% 1.46/1.06    ( ! [X0] : (k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0) )),
% 1.46/1.06    inference(definition_unfolding,[],[f38,f61])).
% 1.46/1.06  
% 1.46/1.06  fof(f57,plain,(
% 1.46/1.06    k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) | k2_struct_0(sK0) != sK1),
% 1.46/1.06    inference(cnf_transformation,[],[f35])).
% 1.46/1.06  
% 1.46/1.06  fof(f60,plain,(
% 1.46/1.06    k2_struct_0(sK0) = sK1 | k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)),
% 1.46/1.06    inference(cnf_transformation,[],[f35])).
% 1.46/1.06  
% 1.46/1.06  cnf(c_116,plain,( X0_2 = X0_2 ),theory(equality) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_8,plain,
% 1.46/1.06      ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) ),
% 1.46/1.06      inference(cnf_transformation,[],[f72]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_461,plain,
% 1.46/1.06      ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) = iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_7,plain,
% 1.46/1.06      ( k3_subset_1(X0,k1_xboole_0) = X0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f71]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_470,plain,
% 1.46/1.06      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_461,c_7]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_11,plain,
% 1.46/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/1.06      | k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X2))) = k7_subset_1(X1,X0,X2) ),
% 1.46/1.06      inference(cnf_transformation,[],[f74]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_458,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k7_subset_1(X2,X0,X1)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_722,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k7_subset_1(X0,X0,X1) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_458]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_0,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k5_xboole_0(X1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1)))) ),
% 1.46/1.06      inference(cnf_transformation,[],[f65]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2730,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_722,c_0]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2754,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_2730,c_722]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))))))) = k1_xboole_0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f69]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1391,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))))))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_0,c_4]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3090,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X1,k7_subset_1(X0,X0,X1))))) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_1391,c_722]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3098,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,k5_xboole_0(X1,k7_subset_1(X0,X0,X1))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3090,c_722]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4812,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),X0)) = k5_xboole_0(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k1_xboole_0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3098,c_2754]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f43]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4854,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),X0)) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_4812,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5472,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2754,c_4854]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6375,plain,
% 1.46/1.06      ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)))) = k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_5472,c_4854]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6385,plain,
% 1.46/1.06      ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)))) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_6375,c_5472]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6377,plain,
% 1.46/1.06      ( k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_5472,c_3098]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6386,plain,
% 1.46/1.06      ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k1_xboole_0) = k5_xboole_0(X1,k7_subset_1(X0,X0,X1)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_6385,c_6377]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6378,plain,
% 1.46/1.06      ( k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k1_setfam_1(k2_enumset1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1))))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_5472,c_3090]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_18,negated_conjecture,
% 1.46/1.06      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.46/1.06      inference(cnf_transformation,[],[f56]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_455,plain,
% 1.46/1.06      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_10,plain,
% 1.46/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/1.06      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 1.46/1.06      | k5_xboole_0(X0,k5_xboole_0(X2,k1_setfam_1(k2_enumset1(X2,X2,X2,X0)))) = k4_subset_1(X1,X0,X2) ),
% 1.46/1.06      inference(cnf_transformation,[],[f73]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_459,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) = k4_subset_1(X2,X0,X1)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2731,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) = k4_subset_1(X2,X0,X1)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_722,c_459]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4459,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) = k4_subset_1(X0,X0,X1)
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_2731]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5854,plain,
% 1.46/1.06      ( k5_xboole_0(u1_struct_0(sK0),k7_subset_1(sK1,sK1,u1_struct_0(sK0))) = k4_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_4459]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_721,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,X0))) = k7_subset_1(u1_struct_0(sK0),sK1,X0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_458]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2733,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,X0) = k7_subset_1(sK1,sK1,X0) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_722,c_721]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1264,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_459]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1498,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k5_xboole_0(u1_struct_0(sK0),k1_setfam_1(k2_enumset1(u1_struct_0(sK0),u1_struct_0(sK0),u1_struct_0(sK0),sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_1264]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1387,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,sK1)))) = k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_721,c_0]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1751,plain,
% 1.46/1.06      ( k5_xboole_0(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_1498,c_1387]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3125,plain,
% 1.46/1.06      ( k5_xboole_0(u1_struct_0(sK0),k7_subset_1(sK1,sK1,u1_struct_0(sK0))) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_2733,c_1751]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_13,plain,
% 1.46/1.06      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.46/1.06      inference(cnf_transformation,[],[f54]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_456,plain,
% 1.46/1.06      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_12,plain,
% 1.46/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/1.06      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 1.46/1.06      | k4_subset_1(X1,k3_subset_1(X1,X0),X2) = k3_subset_1(X1,k7_subset_1(X1,X0,X2)) ),
% 1.46/1.06      inference(cnf_transformation,[],[f53]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_457,plain,
% 1.46/1.06      ( k4_subset_1(X0,k3_subset_1(X0,X1),X2) = k3_subset_1(X0,k7_subset_1(X0,X1,X2))
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
% 1.46/1.06      | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3769,plain,
% 1.46/1.06      ( k4_subset_1(X0,k3_subset_1(X0,k1_xboole_0),X1) = k3_subset_1(X0,k7_subset_1(X0,k1_xboole_0,X1))
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_457]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_720,plain,
% 1.46/1.06      ( k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) = k7_subset_1(X1,k1_xboole_0,X0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_458]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5,plain,
% 1.46/1.06      ( k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f70]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1953,plain,
% 1.46/1.06      ( k7_subset_1(X0,k1_xboole_0,X1) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_720,c_5]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3784,plain,
% 1.46/1.06      ( k4_subset_1(X0,X0,X1) = X0
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_3769,c_7,c_1953]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3939,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1) = u1_struct_0(sK0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_3784]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5859,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) = u1_struct_0(sK0) ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_5854,c_3125,c_3939]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1749,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_1498,c_4]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2773,plain,
% 1.46/1.06      ( k7_subset_1(sK1,sK1,k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_722,c_1749]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5943,plain,
% 1.46/1.06      ( k7_subset_1(sK1,sK1,u1_struct_0(sK0)) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_5859,c_2773]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3770,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),X0) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),sK1,X0))
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_457]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3779,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),X0) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,X0))
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_3770,c_2733]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4076,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,u1_struct_0(sK0))) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_3779]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6005,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_5943,c_4076]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_6006,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) = u1_struct_0(sK0) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_6005,c_7]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5948,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,u1_struct_0(sK0)))) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_5859,c_1749]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1938,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_1749,c_721]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5947,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_5859,c_1938]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2735,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,u1_struct_0(sK0)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_722,c_1498]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5945,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = u1_struct_0(sK0) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_5859,c_2735]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2732,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k7_subset_1(X1,X1,X0))))) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_722,c_4]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2861,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,k5_xboole_0(X0,k7_subset_1(X1,X1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2732,c_722]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4810,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) = k5_xboole_0(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k1_xboole_0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2861,c_2754]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4860,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),k5_xboole_0(X0,k7_subset_1(X1,X1,X0)),X0)) = k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_4810,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5569,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),k5_xboole_0(X1,k7_subset_1(X0,X0,X1)),X0)) = k5_xboole_0(X0,k7_subset_1(X1,X1,X0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2754,c_4860]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3771,plain,
% 1.46/1.06      ( k4_subset_1(X0,k3_subset_1(X0,X0),X1) = k3_subset_1(X0,k7_subset_1(X0,X0,X1))
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_457]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_9,plain,
% 1.46/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/1.06      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f49]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_460,plain,
% 1.46/1.06      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2124,plain,
% 1.46/1.06      ( k3_subset_1(X0,k3_subset_1(X0,k1_xboole_0)) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_460]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2132,plain,
% 1.46/1.06      ( k3_subset_1(X0,X0) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_2124,c_7]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3774,plain,
% 1.46/1.06      ( k3_subset_1(X0,k7_subset_1(X0,X0,X1)) = k4_subset_1(X0,k1_xboole_0,X1)
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_3771,c_2132]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5151,plain,
% 1.46/1.06      ( k3_subset_1(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = k4_subset_1(u1_struct_0(sK0),k1_xboole_0,sK1) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_3774]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1263,plain,
% 1.46/1.06      ( k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k1_xboole_0)))) = k4_subset_1(X1,k1_xboole_0,X0)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_459]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3,plain,
% 1.46/1.06      ( k1_setfam_1(k2_enumset1(X0,X0,X0,k1_xboole_0)) = k1_xboole_0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f68]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1276,plain,
% 1.46/1.06      ( k4_subset_1(X0,k1_xboole_0,X1) = k5_xboole_0(k1_xboole_0,X1)
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_1263,c_3,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1388,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)))) = k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k1_xboole_0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3,c_0]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1399,plain,
% 1.46/1.06      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_1388,c_5,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2873,plain,
% 1.46/1.06      ( k4_subset_1(X0,k1_xboole_0,X1) = X1
% 1.46/1.06      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1276,c_1399]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2880,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k1_xboole_0,sK1) = sK1 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_2873]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_5156,plain,
% 1.46/1.06      ( k3_subset_1(u1_struct_0(sK0),k7_subset_1(u1_struct_0(sK0),u1_struct_0(sK0),sK1)) = sK1 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_5151,c_2880]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1022,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(sK1,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,sK1))))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_721,c_4]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1392,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(X0,k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,X0))))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_0,c_1022]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1394,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_1392,c_721]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3123,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_2733,c_1394]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4836,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(sK1,k7_subset_1(X0,X0,sK1))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2754,c_3123]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4458,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k7_subset_1(X0,X0,sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_2731]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4074,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k1_xboole_0) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,k1_xboole_0)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_3779]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2768,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,k1_xboole_0) = k5_xboole_0(X0,k1_xboole_0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3,c_722]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2788,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,k1_xboole_0) = X0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_2768,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4084,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k1_xboole_0) = k3_subset_1(u1_struct_0(sK0),sK1) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_4074,c_2788]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4075,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),sK1) = k3_subset_1(u1_struct_0(sK0),k7_subset_1(sK1,sK1,sK1)) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_3779]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1206,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k5_xboole_0(sK1,k1_xboole_0)) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_5,c_1022]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2,plain,
% 1.46/1.06      ( k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0 ),
% 1.46/1.06      inference(cnf_transformation,[],[f67]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1019,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,sK1) = k5_xboole_0(sK1,sK1) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2,c_721]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1214,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,sK1) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1206,c_6,c_1019]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1242,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,sK1) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1214,c_1019]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3144,plain,
% 1.46/1.06      ( k7_subset_1(sK1,sK1,sK1) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2733,c_1242]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4080,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),sK1) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0) ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_4075,c_3144]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_4081,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),sK1) = u1_struct_0(sK0) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_4080,c_7]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3940,plain,
% 1.46/1.06      ( k4_subset_1(X0,X0,X0) = X0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_3784]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3938,plain,
% 1.46/1.06      ( k4_subset_1(X0,X0,k1_xboole_0) = X0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_3784]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3389,plain,
% 1.46/1.06      ( k7_subset_1(sK1,sK1,k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3123,c_2733]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1021,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0))))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_721,c_4]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2771,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_722,c_1021]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3359,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_2771,c_2733]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3472,plain,
% 1.46/1.06      ( k7_subset_1(k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k1_xboole_0)) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3389,c_3359]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3474,plain,
% 1.46/1.06      ( k7_subset_1(k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)),k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0))) = k1_xboole_0 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_3472,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1561,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(u1_struct_0(sK0),sK1,X0)) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1387,c_1264]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_3122,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k7_subset_1(sK1,sK1,X0)) = k4_subset_1(u1_struct_0(sK0),sK1,X0)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_2733,c_1561]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2881,plain,
% 1.46/1.06      ( k4_subset_1(X0,k1_xboole_0,X0) = X0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_470,c_2873]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2879,plain,
% 1.46/1.06      ( k4_subset_1(X0,k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_2873]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2767,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,X0) = k5_xboole_0(X0,X0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_2,c_722]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_932,plain,
% 1.46/1.06      ( k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,k5_xboole_0(X0,k1_xboole_0)))) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_5,c_4]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_944,plain,
% 1.46/1.06      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_932,c_2,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2791,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,X0) = k1_xboole_0 ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_2767,c_944]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_2125,plain,
% 1.46/1.06      ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_460]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1496,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_456,c_1264]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1507,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) = sK1 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1496,c_5,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1497,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k5_xboole_0(sK1,k1_setfam_1(k2_enumset1(sK1,sK1,sK1,sK1)))) = k4_subset_1(u1_struct_0(sK0),sK1,sK1) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_455,c_1264]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1502,plain,
% 1.46/1.06      ( k5_xboole_0(sK1,k7_subset_1(u1_struct_0(sK0),sK1,sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,sK1) ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1497,c_721]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1503,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),sK1,sK1) = k5_xboole_0(sK1,k1_xboole_0) ),
% 1.46/1.06      inference(light_normalisation,[status(thm)],[c_1502,c_1242]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1504,plain,
% 1.46/1.06      ( k4_subset_1(u1_struct_0(sK0),sK1,sK1) = sK1 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1503,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1465,plain,
% 1.46/1.06      ( k1_setfam_1(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)) = k1_xboole_0 ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_1399,c_5]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1020,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) = k5_xboole_0(sK1,k1_xboole_0) ),
% 1.46/1.06      inference(superposition,[status(thm)],[c_3,c_721]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_1028,plain,
% 1.46/1.06      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_xboole_0) = sK1 ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_1020,c_6]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_724,plain,
% 1.46/1.06      ( k7_subset_1(X0,X0,X1) = k7_subset_1(X2,X0,X1)
% 1.46/1.06      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top ),
% 1.46/1.06      inference(demodulation,[status(thm)],[c_722,c_458]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_17,negated_conjecture,
% 1.46/1.06      ( k2_struct_0(sK0) != sK1
% 1.46/1.06      | k1_xboole_0 != k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
% 1.46/1.06      inference(cnf_transformation,[],[f57]) ).
% 1.46/1.06  
% 1.46/1.06  cnf(c_14,negated_conjecture,
% 1.46/1.06      ( k2_struct_0(sK0) = sK1
% 1.46/1.06      | k1_xboole_0 = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
% 1.46/1.06      inference(cnf_transformation,[],[f60]) ).
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  % SZS output end Saturation for theBenchmark.p
% 1.46/1.06  
% 1.46/1.06  ------                               Statistics
% 1.46/1.06  
% 1.46/1.06  ------ General
% 1.46/1.06  
% 1.46/1.06  abstr_ref_over_cycles:                  0
% 1.46/1.06  abstr_ref_under_cycles:                 0
% 1.46/1.06  gc_basic_clause_elim:                   0
% 1.46/1.06  forced_gc_time:                         0
% 1.46/1.06  parsing_time:                           0.022
% 1.46/1.06  unif_index_cands_time:                  0.
% 1.46/1.06  unif_index_add_time:                    0.
% 1.46/1.06  orderings_time:                         0.
% 1.46/1.06  out_proof_time:                         0.
% 1.46/1.06  total_time:                             0.272
% 1.46/1.06  num_of_symbols:                         44
% 1.46/1.06  num_of_terms:                           7325
% 1.46/1.06  
% 1.46/1.06  ------ Preprocessing
% 1.46/1.06  
% 1.46/1.06  num_of_splits:                          0
% 1.46/1.06  num_of_split_atoms:                     0
% 1.46/1.06  num_of_reused_defs:                     0
% 1.46/1.06  num_eq_ax_congr_red:                    9
% 1.46/1.06  num_of_sem_filtered_clauses:            1
% 1.46/1.06  num_of_subtypes:                        0
% 1.46/1.06  monotx_restored_types:                  0
% 1.46/1.06  sat_num_of_epr_types:                   0
% 1.46/1.06  sat_num_of_non_cyclic_types:            0
% 1.46/1.06  sat_guarded_non_collapsed_types:        0
% 1.46/1.06  num_pure_diseq_elim:                    0
% 1.46/1.06  simp_replaced_by:                       0
% 1.46/1.06  res_preprocessed:                       93
% 1.46/1.06  prep_upred:                             0
% 1.46/1.06  prep_unflattend:                        0
% 1.46/1.06  smt_new_axioms:                         0
% 1.46/1.06  pred_elim_cands:                        1
% 1.46/1.06  pred_elim:                              0
% 1.46/1.06  pred_elim_cl:                           0
% 1.46/1.06  pred_elim_cycles:                       2
% 1.46/1.06  merged_defs:                            8
% 1.46/1.06  merged_defs_ncl:                        0
% 1.46/1.06  bin_hyper_res:                          8
% 1.46/1.06  prep_cycles:                            4
% 1.46/1.06  pred_elim_time:                         0.001
% 1.46/1.06  splitting_time:                         0.
% 1.46/1.06  sem_filter_time:                        0.
% 1.46/1.06  monotx_time:                            0.
% 1.46/1.06  subtype_inf_time:                       0.
% 1.46/1.06  
% 1.46/1.06  ------ Problem properties
% 1.46/1.06  
% 1.46/1.06  clauses:                                17
% 1.46/1.06  conjectures:                            3
% 1.46/1.06  epr:                                    0
% 1.46/1.06  horn:                                   16
% 1.46/1.06  ground:                                 3
% 1.46/1.06  unary:                                  11
% 1.46/1.06  binary:                                 4
% 1.46/1.06  lits:                                   25
% 1.46/1.06  lits_eq:                                16
% 1.46/1.06  fd_pure:                                0
% 1.46/1.06  fd_pseudo:                              0
% 1.46/1.06  fd_cond:                                0
% 1.46/1.06  fd_pseudo_cond:                         0
% 1.46/1.06  ac_symbols:                             0
% 1.46/1.06  
% 1.46/1.06  ------ Propositional Solver
% 1.46/1.06  
% 1.46/1.06  prop_solver_calls:                      28
% 1.46/1.06  prop_fast_solver_calls:                 461
% 1.46/1.06  smt_solver_calls:                       0
% 1.46/1.06  smt_fast_solver_calls:                  0
% 1.46/1.06  prop_num_of_clauses:                    2087
% 1.46/1.06  prop_preprocess_simplified:             4959
% 1.46/1.06  prop_fo_subsumed:                       0
% 1.46/1.06  prop_solver_time:                       0.
% 1.46/1.06  smt_solver_time:                        0.
% 1.46/1.06  smt_fast_solver_time:                   0.
% 1.46/1.06  prop_fast_solver_time:                  0.
% 1.46/1.06  prop_unsat_core_time:                   0.
% 1.46/1.06  
% 1.46/1.06  ------ QBF
% 1.46/1.06  
% 1.46/1.06  qbf_q_res:                              0
% 1.46/1.06  qbf_num_tautologies:                    0
% 1.46/1.06  qbf_prep_cycles:                        0
% 1.46/1.06  
% 1.46/1.06  ------ BMC1
% 1.46/1.06  
% 1.46/1.06  bmc1_current_bound:                     -1
% 1.46/1.06  bmc1_last_solved_bound:                 -1
% 1.46/1.06  bmc1_unsat_core_size:                   -1
% 1.46/1.06  bmc1_unsat_core_parents_size:           -1
% 1.46/1.06  bmc1_merge_next_fun:                    0
% 1.46/1.06  bmc1_unsat_core_clauses_time:           0.
% 1.46/1.06  
% 1.46/1.06  ------ Instantiation
% 1.46/1.06  
% 1.46/1.06  inst_num_of_clauses:                    985
% 1.46/1.06  inst_num_in_passive:                    120
% 1.46/1.06  inst_num_in_active:                     463
% 1.46/1.06  inst_num_in_unprocessed:                402
% 1.46/1.06  inst_num_of_loops:                      480
% 1.46/1.06  inst_num_of_learning_restarts:          0
% 1.46/1.06  inst_num_moves_active_passive:          14
% 1.46/1.06  inst_lit_activity:                      0
% 1.46/1.06  inst_lit_activity_moves:                0
% 1.46/1.06  inst_num_tautologies:                   0
% 1.46/1.06  inst_num_prop_implied:                  0
% 1.46/1.06  inst_num_existing_simplified:           0
% 1.46/1.06  inst_num_eq_res_simplified:             0
% 1.46/1.06  inst_num_child_elim:                    0
% 1.46/1.06  inst_num_of_dismatching_blockings:      375
% 1.46/1.06  inst_num_of_non_proper_insts:           958
% 1.46/1.06  inst_num_of_duplicates:                 0
% 1.46/1.06  inst_inst_num_from_inst_to_res:         0
% 1.46/1.06  inst_dismatching_checking_time:         0.
% 1.46/1.06  
% 1.46/1.06  ------ Resolution
% 1.46/1.06  
% 1.46/1.06  res_num_of_clauses:                     0
% 1.46/1.06  res_num_in_passive:                     0
% 1.46/1.06  res_num_in_active:                      0
% 1.46/1.06  res_num_of_loops:                       97
% 1.46/1.06  res_forward_subset_subsumed:            44
% 1.46/1.06  res_backward_subset_subsumed:           0
% 1.46/1.06  res_forward_subsumed:                   0
% 1.46/1.06  res_backward_subsumed:                  0
% 1.46/1.06  res_forward_subsumption_resolution:     0
% 1.46/1.06  res_backward_subsumption_resolution:    0
% 1.46/1.06  res_clause_to_clause_subsumption:       454
% 1.46/1.06  res_orphan_elimination:                 0
% 1.46/1.06  res_tautology_del:                      79
% 1.46/1.06  res_num_eq_res_simplified:              0
% 1.46/1.06  res_num_sel_changes:                    0
% 1.46/1.06  res_moves_from_active_to_pass:          0
% 1.46/1.06  
% 1.46/1.06  ------ Superposition
% 1.46/1.06  
% 1.46/1.06  sup_time_total:                         0.
% 1.46/1.06  sup_time_generating:                    0.
% 1.46/1.06  sup_time_sim_full:                      0.
% 1.46/1.06  sup_time_sim_immed:                     0.
% 1.46/1.06  
% 1.46/1.06  sup_num_of_clauses:                     80
% 1.46/1.06  sup_num_in_active:                      68
% 1.46/1.06  sup_num_in_passive:                     12
% 1.46/1.06  sup_num_of_loops:                       94
% 1.46/1.06  sup_fw_superposition:                   523
% 1.46/1.06  sup_bw_superposition:                   242
% 1.46/1.06  sup_immediate_simplified:               351
% 1.46/1.06  sup_given_eliminated:                   1
% 1.46/1.06  comparisons_done:                       0
% 1.46/1.06  comparisons_avoided:                    0
% 1.46/1.06  
% 1.46/1.06  ------ Simplifications
% 1.46/1.06  
% 1.46/1.06  
% 1.46/1.06  sim_fw_subset_subsumed:                 0
% 1.46/1.06  sim_bw_subset_subsumed:                 0
% 1.46/1.06  sim_fw_subsumed:                        30
% 1.46/1.06  sim_bw_subsumed:                        5
% 1.46/1.06  sim_fw_subsumption_res:                 0
% 1.46/1.06  sim_bw_subsumption_res:                 0
% 1.46/1.06  sim_tautology_del:                      1
% 1.46/1.06  sim_eq_tautology_del:                   205
% 1.46/1.06  sim_eq_res_simp:                        0
% 1.46/1.06  sim_fw_demodulated:                     230
% 1.46/1.06  sim_bw_demodulated:                     30
% 1.46/1.06  sim_light_normalised:                   198
% 1.46/1.06  sim_joinable_taut:                      0
% 1.46/1.06  sim_joinable_simp:                      0
% 1.46/1.06  sim_ac_normalised:                      0
% 1.46/1.06  sim_smt_subsumption:                    0
% 1.46/1.06  
%------------------------------------------------------------------------------
