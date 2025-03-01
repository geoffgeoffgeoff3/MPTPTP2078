%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:26:07 EST 2020

% Result     : Theorem 2.17s
% Output     : CNFRefutation 2.17s
% Verified   : 
% Statistics : Number of formulae       :  140 ( 780 expanded)
%              Number of clauses        :   89 ( 285 expanded)
%              Number of leaves         :   15 ( 165 expanded)
%              Depth                    :   24
%              Number of atoms          :  406 (2883 expanded)
%              Number of equality atoms :  117 ( 354 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ? [X1] :
          ( v4_pre_topc(X1,X0)
          & v3_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ? [X1] :
          ( v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f22,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f22])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( v4_pre_topc(sK0(X0),X0)
        & m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0] :
      ( ( v4_pre_topc(sK0(X0),X0)
        & m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f28])).

fof(f45,plain,(
    ! [X0] :
      ( m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v1_xboole_0(X1) )
         => v2_tex_2(X1,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v1_xboole_0(X1) )
           => v2_tex_2(X1,X0) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f13,plain,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v1_xboole_0(X1) )
           => v2_tex_2(X1,X0) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ v2_tex_2(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f27,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ v2_tex_2(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f26])).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ v2_tex_2(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v1_xboole_0(X1) )
     => ( ~ v2_tex_2(sK4,X0)
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0)))
        & v1_xboole_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ v2_tex_2(X1,X0)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v1_xboole_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( ? [X1] :
          ( ~ v2_tex_2(X1,sK3)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
          & v1_xboole_0(X1) )
      & l1_pre_topc(sK3)
      & v2_pre_topc(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( ~ v2_tex_2(sK4,sK3)
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))
    & v1_xboole_0(sK4)
    & l1_pre_topc(sK3)
    & v2_pre_topc(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f27,f36,f35])).

fof(f53,plain,(
    v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f54,plain,(
    l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f56,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f37])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f55,plain,(
    v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f38,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f6,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f44,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f57,plain,(
    ~ v2_tex_2(sK4,sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f2,axiom,(
    ! [X0] :
      ( r1_tarski(X0,k1_xboole_0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f39,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v2_tex_2(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ~ ( ! [X3] :
                        ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                       => ~ ( k9_subset_1(u1_struct_0(X0),X1,X3) = X2
                            & v4_pre_topc(X3,X0) ) )
                    & r1_tarski(X2,X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tex_2(X1,X0)
          <=> ! [X2] :
                ( ? [X3] :
                    ( k9_subset_1(u1_struct_0(X0),X1,X3) = X2
                    & v4_pre_topc(X3,X0)
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                | ~ r1_tarski(X2,X1)
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tex_2(X1,X0)
          <=> ! [X2] :
                ( ? [X3] :
                    ( k9_subset_1(u1_struct_0(X0),X1,X3) = X2
                    & v4_pre_topc(X3,X0)
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                | ~ r1_tarski(X2,X1)
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f24])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tex_2(X1,X0)
              | ? [X2] :
                  ( ! [X3] :
                      ( k9_subset_1(u1_struct_0(X0),X1,X3) != X2
                      | ~ v4_pre_topc(X3,X0)
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  & r1_tarski(X2,X1)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X2] :
                  ( ? [X3] :
                      ( k9_subset_1(u1_struct_0(X0),X1,X3) = X2
                      & v4_pre_topc(X3,X0)
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r1_tarski(X2,X1)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tex_2(X1,X0)
              | ? [X2] :
                  ( ! [X3] :
                      ( k9_subset_1(u1_struct_0(X0),X1,X3) != X2
                      | ~ v4_pre_topc(X3,X0)
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  & r1_tarski(X2,X1)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X4] :
                  ( ? [X5] :
                      ( k9_subset_1(u1_struct_0(X0),X1,X5) = X4
                      & v4_pre_topc(X5,X0)
                      & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r1_tarski(X4,X1)
                  | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f30])).

fof(f33,plain,(
    ! [X4,X1,X0] :
      ( ? [X5] :
          ( k9_subset_1(u1_struct_0(X0),X1,X5) = X4
          & v4_pre_topc(X5,X0)
          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( k9_subset_1(u1_struct_0(X0),X1,sK2(X0,X1,X4)) = X4
        & v4_pre_topc(sK2(X0,X1,X4),X0)
        & m1_subset_1(sK2(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ! [X3] :
              ( k9_subset_1(u1_struct_0(X0),X1,X3) != X2
              | ~ v4_pre_topc(X3,X0)
              | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
          & r1_tarski(X2,X1)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ! [X3] :
            ( k9_subset_1(u1_struct_0(X0),X1,X3) != sK1(X0,X1)
            | ~ v4_pre_topc(X3,X0)
            | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
        & r1_tarski(sK1(X0,X1),X1)
        & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tex_2(X1,X0)
              | ( ! [X3] :
                    ( k9_subset_1(u1_struct_0(X0),X1,X3) != sK1(X0,X1)
                    | ~ v4_pre_topc(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & r1_tarski(sK1(X0,X1),X1)
                & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X4] :
                  ( ( k9_subset_1(u1_struct_0(X0),X1,sK2(X0,X1,X4)) = X4
                    & v4_pre_topc(sK2(X0,X1,X4),X0)
                    & m1_subset_1(sK2(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r1_tarski(X4,X1)
                  | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f31,f33,f32])).

fof(f51,plain,(
    ! [X0,X1] :
      ( v2_tex_2(X1,X0)
      | r1_tarski(sK1(X0,X1),X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f46,plain,(
    ! [X0] :
      ( v4_pre_topc(sK0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f52,plain,(
    ! [X0,X3,X1] :
      ( v2_tex_2(X1,X0)
      | k9_subset_1(u1_struct_0(X0),X1,X3) != sK1(X0,X1)
      | ~ v4_pre_topc(X3,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_8,plain,
    ( m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_19,negated_conjecture,
    ( v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_226,plain,
    ( m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_19])).

cnf(c_227,plain,
    ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ l1_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_226])).

cnf(c_18,negated_conjecture,
    ( l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_229,plain,
    ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_227,c_18])).

cnf(c_672,plain,
    ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(subtyping,[status(esa)],[c_229])).

cnf(c_884,plain,
    ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_672])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k9_subset_1(X1,X2,X0) = k3_xboole_0(X2,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_677,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
    | k9_subset_1(X1_45,X2_45,X0_45) = k3_xboole_0(X2_45,X0_45) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_879,plain,
    ( k9_subset_1(X0_45,X1_45,X2_45) = k3_xboole_0(X1_45,X2_45)
    | m1_subset_1(X2_45,k1_zfmisc_1(X0_45)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_677])).

cnf(c_1162,plain,
    ( k9_subset_1(u1_struct_0(sK3),X0_45,sK0(sK3)) = k3_xboole_0(X0_45,sK0(sK3)) ),
    inference(superposition,[status(thm)],[c_884,c_879])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_674,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_882,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_674])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k9_subset_1(X1,X0,X2) = k9_subset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_679,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
    | k9_subset_1(X1_45,X0_45,X2_45) = k9_subset_1(X1_45,X2_45,X0_45) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_877,plain,
    ( k9_subset_1(X0_45,X1_45,X2_45) = k9_subset_1(X0_45,X2_45,X1_45)
    | m1_subset_1(X1_45,k1_zfmisc_1(X0_45)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_679])).

cnf(c_1142,plain,
    ( k9_subset_1(u1_struct_0(sK3),X0_45,sK4) = k9_subset_1(u1_struct_0(sK3),sK4,X0_45) ),
    inference(superposition,[status(thm)],[c_882,c_877])).

cnf(c_17,negated_conjecture,
    ( v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_673,negated_conjecture,
    ( v1_xboole_0(sK4) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_883,plain,
    ( v1_xboole_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_673])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_680,plain,
    ( ~ v1_xboole_0(X0_45)
    | k1_xboole_0 = X0_45 ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_876,plain,
    ( k1_xboole_0 = X0_45
    | v1_xboole_0(X0_45) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_680])).

cnf(c_1093,plain,
    ( sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_883,c_876])).

cnf(c_1161,plain,
    ( k9_subset_1(u1_struct_0(sK3),X0_45,sK4) = k3_xboole_0(X0_45,sK4) ),
    inference(superposition,[status(thm)],[c_882,c_879])).

cnf(c_1419,plain,
    ( k9_subset_1(u1_struct_0(sK3),X0_45,k1_xboole_0) = k3_xboole_0(X0_45,k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_1161,c_1093])).

cnf(c_1426,plain,
    ( k9_subset_1(u1_struct_0(sK3),k1_xboole_0,X0_45) = k3_xboole_0(X0_45,k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_1142,c_1093,c_1419])).

cnf(c_1478,plain,
    ( k3_xboole_0(sK0(sK3),k1_xboole_0) = k3_xboole_0(k1_xboole_0,sK0(sK3)) ),
    inference(superposition,[status(thm)],[c_1162,c_1426])).

cnf(c_5,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_676,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0_45)) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_880,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0_45)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_676])).

cnf(c_1164,plain,
    ( k9_subset_1(X0_45,X1_45,k1_xboole_0) = k3_xboole_0(X1_45,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_880,c_879])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_678,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
    | m1_subset_1(k9_subset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X1_45)) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_878,plain,
    ( m1_subset_1(X0_45,k1_zfmisc_1(X1_45)) != iProver_top
    | m1_subset_1(k9_subset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X1_45)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_678])).

cnf(c_1668,plain,
    ( m1_subset_1(k3_xboole_0(X0_45,k1_xboole_0),k1_zfmisc_1(X1_45)) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1_45)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1164,c_878])).

cnf(c_2142,plain,
    ( m1_subset_1(k3_xboole_0(X0_45,k1_xboole_0),k1_zfmisc_1(X1_45)) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1668,c_880])).

cnf(c_2146,plain,
    ( m1_subset_1(k3_xboole_0(k1_xboole_0,sK0(sK3)),k1_zfmisc_1(X0_45)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1478,c_2142])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_675,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
    | ~ v1_xboole_0(X1_45)
    | v1_xboole_0(X0_45) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_881,plain,
    ( m1_subset_1(X0_45,k1_zfmisc_1(X1_45)) != iProver_top
    | v1_xboole_0(X1_45) != iProver_top
    | v1_xboole_0(X0_45) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_675])).

cnf(c_2311,plain,
    ( v1_xboole_0(X0_45) != iProver_top
    | v1_xboole_0(k3_xboole_0(k1_xboole_0,sK0(sK3))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2146,c_881])).

cnf(c_22,plain,
    ( v1_xboole_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_946,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(sK4))
    | v1_xboole_0(X0_45)
    | ~ v1_xboole_0(sK4) ),
    inference(instantiation,[status(thm)],[c_675])).

cnf(c_947,plain,
    ( m1_subset_1(X0_45,k1_zfmisc_1(sK4)) != iProver_top
    | v1_xboole_0(X0_45) = iProver_top
    | v1_xboole_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_946])).

cnf(c_949,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK4)) != iProver_top
    | v1_xboole_0(sK4) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_947])).

cnf(c_992,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_676])).

cnf(c_995,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_992])).

cnf(c_2332,plain,
    ( v1_xboole_0(k3_xboole_0(k1_xboole_0,sK0(sK3))) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2311])).

cnf(c_2540,plain,
    ( v1_xboole_0(k3_xboole_0(k1_xboole_0,sK0(sK3))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2311,c_22,c_949,c_995,c_2332])).

cnf(c_2545,plain,
    ( k3_xboole_0(k1_xboole_0,sK0(sK3)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2540,c_876])).

cnf(c_15,negated_conjecture,
    ( ~ v2_tex_2(sK4,sK3) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,k1_xboole_0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_10,plain,
    ( v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(sK1(X1,X0),X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_393,plain,
    ( v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(sK1(X1,X0),X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_18])).

cnf(c_394,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | r1_tarski(sK1(sK3,X0),X0) ),
    inference(unflattening,[status(thm)],[c_393])).

cnf(c_516,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | sK1(sK3,X0) != X1
    | k1_xboole_0 != X0
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_394])).

cnf(c_517,plain,
    ( v2_tex_2(k1_xboole_0,sK3)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK3)))
    | k1_xboole_0 = sK1(sK3,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_516])).

cnf(c_525,plain,
    ( v2_tex_2(k1_xboole_0,sK3)
    | k1_xboole_0 = sK1(sK3,k1_xboole_0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_517,c_5])).

cnf(c_578,plain,
    ( sK1(sK3,k1_xboole_0) = k1_xboole_0
    | sK3 != sK3
    | sK4 != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_525])).

cnf(c_604,plain,
    ( sK1(sK3,k1_xboole_0) = k1_xboole_0
    | sK4 != k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_578])).

cnf(c_669,plain,
    ( sK1(sK3,k1_xboole_0) = k1_xboole_0
    | sK4 != k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_604])).

cnf(c_1312,plain,
    ( sK1(sK3,k1_xboole_0) = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1093,c_669])).

cnf(c_1324,plain,
    ( sK1(sK3,k1_xboole_0) = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_1312])).

cnf(c_7,plain,
    ( v4_pre_topc(sK0(X0),X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_237,plain,
    ( v4_pre_topc(sK0(X0),X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_19])).

cnf(c_238,plain,
    ( v4_pre_topc(sK0(sK3),sK3)
    | ~ l1_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_237])).

cnf(c_240,plain,
    ( v4_pre_topc(sK0(sK3),sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_238,c_18])).

cnf(c_9,plain,
    ( v2_tex_2(X0,X1)
    | ~ v4_pre_topc(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k9_subset_1(u1_struct_0(X1),X0,X2) != sK1(X1,X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_408,plain,
    ( v2_tex_2(X0,X1)
    | ~ v4_pre_topc(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k9_subset_1(u1_struct_0(X1),X0,X2) != sK1(X1,X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_18])).

cnf(c_409,plain,
    ( v2_tex_2(X0,sK3)
    | ~ v4_pre_topc(X1,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),X0,X1) != sK1(sK3,X0) ),
    inference(unflattening,[status(thm)],[c_408])).

cnf(c_538,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),X0,X1) != sK1(sK3,X0)
    | sK0(sK3) != X1
    | sK3 != sK3 ),
    inference(resolution_lifted,[status(thm)],[c_240,c_409])).

cnf(c_539,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
    inference(unflattening,[status(thm)],[c_538])).

cnf(c_283,plain,
    ( v2_tex_2(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k9_subset_1(u1_struct_0(X1),X0,X2) != sK1(X1,X0)
    | sK0(sK3) != X2
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_240])).

cnf(c_284,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ l1_pre_topc(sK3)
    | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
    inference(unflattening,[status(thm)],[c_283])).

cnf(c_288,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_284,c_18,c_227])).

cnf(c_541,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v2_tex_2(X0,sK3)
    | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_539,c_288])).

cnf(c_542,plain,
    ( v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
    inference(renaming,[status(thm)],[c_541])).

cnf(c_570,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0)
    | sK3 != sK3
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_542])).

cnf(c_571,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))
    | k9_subset_1(u1_struct_0(sK3),sK4,sK0(sK3)) != sK1(sK3,sK4) ),
    inference(unflattening,[status(thm)],[c_570])).

cnf(c_573,plain,
    ( k9_subset_1(u1_struct_0(sK3),sK4,sK0(sK3)) != sK1(sK3,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_571,c_16])).

cnf(c_670,plain,
    ( k9_subset_1(u1_struct_0(sK3),sK4,sK0(sK3)) != sK1(sK3,sK4) ),
    inference(subtyping,[status(esa)],[c_573])).

cnf(c_1314,plain,
    ( k9_subset_1(u1_struct_0(sK3),k1_xboole_0,sK0(sK3)) != sK1(sK3,k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_1093,c_670])).

cnf(c_1327,plain,
    ( k9_subset_1(u1_struct_0(sK3),k1_xboole_0,sK0(sK3)) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1324,c_1314])).

cnf(c_1473,plain,
    ( k3_xboole_0(sK0(sK3),k1_xboole_0) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1327,c_1426])).

cnf(c_1851,plain,
    ( k3_xboole_0(k1_xboole_0,sK0(sK3)) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1478,c_1473])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2545,c_1851])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n008.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:03:45 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.17/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.17/0.97  
% 2.17/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.17/0.97  
% 2.17/0.97  ------  iProver source info
% 2.17/0.97  
% 2.17/0.97  git: date: 2020-06-30 10:37:57 +0100
% 2.17/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.17/0.97  git: non_committed_changes: false
% 2.17/0.97  git: last_make_outside_of_git: false
% 2.17/0.97  
% 2.17/0.97  ------ 
% 2.17/0.97  
% 2.17/0.97  ------ Input Options
% 2.17/0.97  
% 2.17/0.97  --out_options                           all
% 2.17/0.97  --tptp_safe_out                         true
% 2.17/0.97  --problem_path                          ""
% 2.17/0.97  --include_path                          ""
% 2.17/0.97  --clausifier                            res/vclausify_rel
% 2.17/0.97  --clausifier_options                    --mode clausify
% 2.17/0.97  --stdin                                 false
% 2.17/0.97  --stats_out                             all
% 2.17/0.97  
% 2.17/0.97  ------ General Options
% 2.17/0.97  
% 2.17/0.97  --fof                                   false
% 2.17/0.97  --time_out_real                         305.
% 2.17/0.97  --time_out_virtual                      -1.
% 2.17/0.97  --symbol_type_check                     false
% 2.17/0.97  --clausify_out                          false
% 2.17/0.97  --sig_cnt_out                           false
% 2.17/0.97  --trig_cnt_out                          false
% 2.17/0.97  --trig_cnt_out_tolerance                1.
% 2.17/0.97  --trig_cnt_out_sk_spl                   false
% 2.17/0.97  --abstr_cl_out                          false
% 2.17/0.97  
% 2.17/0.97  ------ Global Options
% 2.17/0.97  
% 2.17/0.97  --schedule                              default
% 2.17/0.97  --add_important_lit                     false
% 2.17/0.97  --prop_solver_per_cl                    1000
% 2.17/0.97  --min_unsat_core                        false
% 2.17/0.97  --soft_assumptions                      false
% 2.17/0.97  --soft_lemma_size                       3
% 2.17/0.97  --prop_impl_unit_size                   0
% 2.17/0.97  --prop_impl_unit                        []
% 2.17/0.97  --share_sel_clauses                     true
% 2.17/0.97  --reset_solvers                         false
% 2.17/0.97  --bc_imp_inh                            [conj_cone]
% 2.17/0.97  --conj_cone_tolerance                   3.
% 2.17/0.97  --extra_neg_conj                        none
% 2.17/0.97  --large_theory_mode                     true
% 2.17/0.97  --prolific_symb_bound                   200
% 2.17/0.97  --lt_threshold                          2000
% 2.17/0.97  --clause_weak_htbl                      true
% 2.17/0.97  --gc_record_bc_elim                     false
% 2.17/0.97  
% 2.17/0.97  ------ Preprocessing Options
% 2.17/0.97  
% 2.17/0.97  --preprocessing_flag                    true
% 2.17/0.97  --time_out_prep_mult                    0.1
% 2.17/0.97  --splitting_mode                        input
% 2.17/0.97  --splitting_grd                         true
% 2.17/0.97  --splitting_cvd                         false
% 2.17/0.97  --splitting_cvd_svl                     false
% 2.17/0.97  --splitting_nvd                         32
% 2.17/0.97  --sub_typing                            true
% 2.17/0.97  --prep_gs_sim                           true
% 2.17/0.97  --prep_unflatten                        true
% 2.17/0.97  --prep_res_sim                          true
% 2.17/0.97  --prep_upred                            true
% 2.17/0.97  --prep_sem_filter                       exhaustive
% 2.17/0.97  --prep_sem_filter_out                   false
% 2.17/0.97  --pred_elim                             true
% 2.17/0.97  --res_sim_input                         true
% 2.17/0.97  --eq_ax_congr_red                       true
% 2.17/0.97  --pure_diseq_elim                       true
% 2.17/0.97  --brand_transform                       false
% 2.17/0.97  --non_eq_to_eq                          false
% 2.17/0.97  --prep_def_merge                        true
% 2.17/0.97  --prep_def_merge_prop_impl              false
% 2.17/0.97  --prep_def_merge_mbd                    true
% 2.17/0.97  --prep_def_merge_tr_red                 false
% 2.17/0.97  --prep_def_merge_tr_cl                  false
% 2.17/0.97  --smt_preprocessing                     true
% 2.17/0.97  --smt_ac_axioms                         fast
% 2.17/0.97  --preprocessed_out                      false
% 2.17/0.97  --preprocessed_stats                    false
% 2.17/0.97  
% 2.17/0.97  ------ Abstraction refinement Options
% 2.17/0.97  
% 2.17/0.97  --abstr_ref                             []
% 2.17/0.97  --abstr_ref_prep                        false
% 2.17/0.97  --abstr_ref_until_sat                   false
% 2.17/0.97  --abstr_ref_sig_restrict                funpre
% 2.17/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.17/0.97  --abstr_ref_under                       []
% 2.17/0.97  
% 2.17/0.97  ------ SAT Options
% 2.17/0.97  
% 2.17/0.97  --sat_mode                              false
% 2.17/0.97  --sat_fm_restart_options                ""
% 2.17/0.97  --sat_gr_def                            false
% 2.17/0.97  --sat_epr_types                         true
% 2.17/0.97  --sat_non_cyclic_types                  false
% 2.17/0.97  --sat_finite_models                     false
% 2.17/0.97  --sat_fm_lemmas                         false
% 2.17/0.97  --sat_fm_prep                           false
% 2.17/0.97  --sat_fm_uc_incr                        true
% 2.17/0.97  --sat_out_model                         small
% 2.17/0.97  --sat_out_clauses                       false
% 2.17/0.97  
% 2.17/0.97  ------ QBF Options
% 2.17/0.97  
% 2.17/0.97  --qbf_mode                              false
% 2.17/0.97  --qbf_elim_univ                         false
% 2.17/0.97  --qbf_dom_inst                          none
% 2.17/0.97  --qbf_dom_pre_inst                      false
% 2.17/0.97  --qbf_sk_in                             false
% 2.17/0.97  --qbf_pred_elim                         true
% 2.17/0.97  --qbf_split                             512
% 2.17/0.97  
% 2.17/0.97  ------ BMC1 Options
% 2.17/0.97  
% 2.17/0.97  --bmc1_incremental                      false
% 2.17/0.97  --bmc1_axioms                           reachable_all
% 2.17/0.97  --bmc1_min_bound                        0
% 2.17/0.97  --bmc1_max_bound                        -1
% 2.17/0.97  --bmc1_max_bound_default                -1
% 2.17/0.97  --bmc1_symbol_reachability              true
% 2.17/0.97  --bmc1_property_lemmas                  false
% 2.17/0.97  --bmc1_k_induction                      false
% 2.17/0.97  --bmc1_non_equiv_states                 false
% 2.17/0.97  --bmc1_deadlock                         false
% 2.17/0.97  --bmc1_ucm                              false
% 2.17/0.97  --bmc1_add_unsat_core                   none
% 2.17/0.97  --bmc1_unsat_core_children              false
% 2.17/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.17/0.97  --bmc1_out_stat                         full
% 2.17/0.97  --bmc1_ground_init                      false
% 2.17/0.97  --bmc1_pre_inst_next_state              false
% 2.17/0.97  --bmc1_pre_inst_state                   false
% 2.17/0.97  --bmc1_pre_inst_reach_state             false
% 2.17/0.97  --bmc1_out_unsat_core                   false
% 2.17/0.97  --bmc1_aig_witness_out                  false
% 2.17/0.97  --bmc1_verbose                          false
% 2.17/0.97  --bmc1_dump_clauses_tptp                false
% 2.17/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.17/0.97  --bmc1_dump_file                        -
% 2.17/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.17/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.17/0.97  --bmc1_ucm_extend_mode                  1
% 2.17/0.97  --bmc1_ucm_init_mode                    2
% 2.17/0.97  --bmc1_ucm_cone_mode                    none
% 2.17/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.17/0.97  --bmc1_ucm_relax_model                  4
% 2.17/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.17/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.17/0.97  --bmc1_ucm_layered_model                none
% 2.17/0.97  --bmc1_ucm_max_lemma_size               10
% 2.17/0.97  
% 2.17/0.97  ------ AIG Options
% 2.17/0.97  
% 2.17/0.97  --aig_mode                              false
% 2.17/0.97  
% 2.17/0.97  ------ Instantiation Options
% 2.17/0.97  
% 2.17/0.97  --instantiation_flag                    true
% 2.17/0.97  --inst_sos_flag                         false
% 2.17/0.97  --inst_sos_phase                        true
% 2.17/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.17/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.17/0.97  --inst_lit_sel_side                     num_symb
% 2.17/0.97  --inst_solver_per_active                1400
% 2.17/0.97  --inst_solver_calls_frac                1.
% 2.17/0.97  --inst_passive_queue_type               priority_queues
% 2.17/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.17/0.97  --inst_passive_queues_freq              [25;2]
% 2.17/0.97  --inst_dismatching                      true
% 2.17/0.97  --inst_eager_unprocessed_to_passive     true
% 2.17/0.97  --inst_prop_sim_given                   true
% 2.17/0.97  --inst_prop_sim_new                     false
% 2.17/0.97  --inst_subs_new                         false
% 2.17/0.97  --inst_eq_res_simp                      false
% 2.17/0.97  --inst_subs_given                       false
% 2.17/0.97  --inst_orphan_elimination               true
% 2.17/0.97  --inst_learning_loop_flag               true
% 2.17/0.97  --inst_learning_start                   3000
% 2.17/0.97  --inst_learning_factor                  2
% 2.17/0.97  --inst_start_prop_sim_after_learn       3
% 2.17/0.97  --inst_sel_renew                        solver
% 2.17/0.97  --inst_lit_activity_flag                true
% 2.17/0.97  --inst_restr_to_given                   false
% 2.17/0.97  --inst_activity_threshold               500
% 2.17/0.97  --inst_out_proof                        true
% 2.17/0.97  
% 2.17/0.97  ------ Resolution Options
% 2.17/0.97  
% 2.17/0.97  --resolution_flag                       true
% 2.17/0.97  --res_lit_sel                           adaptive
% 2.17/0.97  --res_lit_sel_side                      none
% 2.17/0.97  --res_ordering                          kbo
% 2.17/0.97  --res_to_prop_solver                    active
% 2.17/0.97  --res_prop_simpl_new                    false
% 2.17/0.97  --res_prop_simpl_given                  true
% 2.17/0.97  --res_passive_queue_type                priority_queues
% 2.17/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.17/0.97  --res_passive_queues_freq               [15;5]
% 2.17/0.97  --res_forward_subs                      full
% 2.17/0.97  --res_backward_subs                     full
% 2.17/0.97  --res_forward_subs_resolution           true
% 2.17/0.97  --res_backward_subs_resolution          true
% 2.17/0.97  --res_orphan_elimination                true
% 2.17/0.97  --res_time_limit                        2.
% 2.17/0.97  --res_out_proof                         true
% 2.17/0.97  
% 2.17/0.97  ------ Superposition Options
% 2.17/0.97  
% 2.17/0.97  --superposition_flag                    true
% 2.17/0.97  --sup_passive_queue_type                priority_queues
% 2.17/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.17/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.17/0.97  --demod_completeness_check              fast
% 2.17/0.97  --demod_use_ground                      true
% 2.17/0.97  --sup_to_prop_solver                    passive
% 2.17/0.97  --sup_prop_simpl_new                    true
% 2.17/0.97  --sup_prop_simpl_given                  true
% 2.17/0.97  --sup_fun_splitting                     false
% 2.17/0.97  --sup_smt_interval                      50000
% 2.17/0.97  
% 2.17/0.97  ------ Superposition Simplification Setup
% 2.17/0.97  
% 2.17/0.97  --sup_indices_passive                   []
% 2.17/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.17/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/0.97  --sup_full_bw                           [BwDemod]
% 2.17/0.97  --sup_immed_triv                        [TrivRules]
% 2.17/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.17/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/0.97  --sup_immed_bw_main                     []
% 2.17/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.17/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/0.97  
% 2.17/0.97  ------ Combination Options
% 2.17/0.97  
% 2.17/0.97  --comb_res_mult                         3
% 2.17/0.97  --comb_sup_mult                         2
% 2.17/0.97  --comb_inst_mult                        10
% 2.17/0.97  
% 2.17/0.97  ------ Debug Options
% 2.17/0.97  
% 2.17/0.97  --dbg_backtrace                         false
% 2.17/0.97  --dbg_dump_prop_clauses                 false
% 2.17/0.97  --dbg_dump_prop_clauses_file            -
% 2.17/0.97  --dbg_out_stat                          false
% 2.17/0.97  ------ Parsing...
% 2.17/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.17/0.97  
% 2.17/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 2.17/0.97  
% 2.17/0.97  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.17/0.97  
% 2.17/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.17/0.97  ------ Proving...
% 2.17/0.97  ------ Problem Properties 
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  clauses                                 12
% 2.17/0.97  conjectures                             2
% 2.17/0.97  EPR                                     2
% 2.17/0.97  Horn                                    12
% 2.17/0.97  unary                                   6
% 2.17/0.97  binary                                  5
% 2.17/0.97  lits                                    19
% 2.17/0.97  lits eq                                 6
% 2.17/0.97  fd_pure                                 0
% 2.17/0.97  fd_pseudo                               0
% 2.17/0.97  fd_cond                                 1
% 2.17/0.97  fd_pseudo_cond                          0
% 2.17/0.97  AC symbols                              0
% 2.17/0.97  
% 2.17/0.97  ------ Schedule dynamic 5 is on 
% 2.17/0.97  
% 2.17/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  ------ 
% 2.17/0.97  Current options:
% 2.17/0.97  ------ 
% 2.17/0.97  
% 2.17/0.97  ------ Input Options
% 2.17/0.97  
% 2.17/0.97  --out_options                           all
% 2.17/0.97  --tptp_safe_out                         true
% 2.17/0.97  --problem_path                          ""
% 2.17/0.97  --include_path                          ""
% 2.17/0.97  --clausifier                            res/vclausify_rel
% 2.17/0.97  --clausifier_options                    --mode clausify
% 2.17/0.97  --stdin                                 false
% 2.17/0.97  --stats_out                             all
% 2.17/0.97  
% 2.17/0.97  ------ General Options
% 2.17/0.97  
% 2.17/0.97  --fof                                   false
% 2.17/0.97  --time_out_real                         305.
% 2.17/0.97  --time_out_virtual                      -1.
% 2.17/0.97  --symbol_type_check                     false
% 2.17/0.97  --clausify_out                          false
% 2.17/0.97  --sig_cnt_out                           false
% 2.17/0.97  --trig_cnt_out                          false
% 2.17/0.97  --trig_cnt_out_tolerance                1.
% 2.17/0.97  --trig_cnt_out_sk_spl                   false
% 2.17/0.97  --abstr_cl_out                          false
% 2.17/0.97  
% 2.17/0.97  ------ Global Options
% 2.17/0.97  
% 2.17/0.97  --schedule                              default
% 2.17/0.97  --add_important_lit                     false
% 2.17/0.97  --prop_solver_per_cl                    1000
% 2.17/0.97  --min_unsat_core                        false
% 2.17/0.97  --soft_assumptions                      false
% 2.17/0.97  --soft_lemma_size                       3
% 2.17/0.97  --prop_impl_unit_size                   0
% 2.17/0.97  --prop_impl_unit                        []
% 2.17/0.97  --share_sel_clauses                     true
% 2.17/0.97  --reset_solvers                         false
% 2.17/0.97  --bc_imp_inh                            [conj_cone]
% 2.17/0.97  --conj_cone_tolerance                   3.
% 2.17/0.97  --extra_neg_conj                        none
% 2.17/0.97  --large_theory_mode                     true
% 2.17/0.97  --prolific_symb_bound                   200
% 2.17/0.97  --lt_threshold                          2000
% 2.17/0.97  --clause_weak_htbl                      true
% 2.17/0.97  --gc_record_bc_elim                     false
% 2.17/0.97  
% 2.17/0.97  ------ Preprocessing Options
% 2.17/0.97  
% 2.17/0.97  --preprocessing_flag                    true
% 2.17/0.97  --time_out_prep_mult                    0.1
% 2.17/0.97  --splitting_mode                        input
% 2.17/0.97  --splitting_grd                         true
% 2.17/0.97  --splitting_cvd                         false
% 2.17/0.97  --splitting_cvd_svl                     false
% 2.17/0.97  --splitting_nvd                         32
% 2.17/0.97  --sub_typing                            true
% 2.17/0.97  --prep_gs_sim                           true
% 2.17/0.97  --prep_unflatten                        true
% 2.17/0.97  --prep_res_sim                          true
% 2.17/0.97  --prep_upred                            true
% 2.17/0.97  --prep_sem_filter                       exhaustive
% 2.17/0.97  --prep_sem_filter_out                   false
% 2.17/0.97  --pred_elim                             true
% 2.17/0.97  --res_sim_input                         true
% 2.17/0.97  --eq_ax_congr_red                       true
% 2.17/0.97  --pure_diseq_elim                       true
% 2.17/0.97  --brand_transform                       false
% 2.17/0.97  --non_eq_to_eq                          false
% 2.17/0.97  --prep_def_merge                        true
% 2.17/0.97  --prep_def_merge_prop_impl              false
% 2.17/0.97  --prep_def_merge_mbd                    true
% 2.17/0.97  --prep_def_merge_tr_red                 false
% 2.17/0.97  --prep_def_merge_tr_cl                  false
% 2.17/0.97  --smt_preprocessing                     true
% 2.17/0.97  --smt_ac_axioms                         fast
% 2.17/0.97  --preprocessed_out                      false
% 2.17/0.97  --preprocessed_stats                    false
% 2.17/0.97  
% 2.17/0.97  ------ Abstraction refinement Options
% 2.17/0.97  
% 2.17/0.97  --abstr_ref                             []
% 2.17/0.97  --abstr_ref_prep                        false
% 2.17/0.97  --abstr_ref_until_sat                   false
% 2.17/0.97  --abstr_ref_sig_restrict                funpre
% 2.17/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.17/0.97  --abstr_ref_under                       []
% 2.17/0.97  
% 2.17/0.97  ------ SAT Options
% 2.17/0.97  
% 2.17/0.97  --sat_mode                              false
% 2.17/0.97  --sat_fm_restart_options                ""
% 2.17/0.97  --sat_gr_def                            false
% 2.17/0.97  --sat_epr_types                         true
% 2.17/0.97  --sat_non_cyclic_types                  false
% 2.17/0.97  --sat_finite_models                     false
% 2.17/0.97  --sat_fm_lemmas                         false
% 2.17/0.97  --sat_fm_prep                           false
% 2.17/0.97  --sat_fm_uc_incr                        true
% 2.17/0.97  --sat_out_model                         small
% 2.17/0.97  --sat_out_clauses                       false
% 2.17/0.97  
% 2.17/0.97  ------ QBF Options
% 2.17/0.97  
% 2.17/0.97  --qbf_mode                              false
% 2.17/0.97  --qbf_elim_univ                         false
% 2.17/0.97  --qbf_dom_inst                          none
% 2.17/0.97  --qbf_dom_pre_inst                      false
% 2.17/0.97  --qbf_sk_in                             false
% 2.17/0.97  --qbf_pred_elim                         true
% 2.17/0.97  --qbf_split                             512
% 2.17/0.97  
% 2.17/0.97  ------ BMC1 Options
% 2.17/0.97  
% 2.17/0.97  --bmc1_incremental                      false
% 2.17/0.97  --bmc1_axioms                           reachable_all
% 2.17/0.97  --bmc1_min_bound                        0
% 2.17/0.97  --bmc1_max_bound                        -1
% 2.17/0.97  --bmc1_max_bound_default                -1
% 2.17/0.97  --bmc1_symbol_reachability              true
% 2.17/0.97  --bmc1_property_lemmas                  false
% 2.17/0.97  --bmc1_k_induction                      false
% 2.17/0.97  --bmc1_non_equiv_states                 false
% 2.17/0.97  --bmc1_deadlock                         false
% 2.17/0.97  --bmc1_ucm                              false
% 2.17/0.97  --bmc1_add_unsat_core                   none
% 2.17/0.97  --bmc1_unsat_core_children              false
% 2.17/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.17/0.97  --bmc1_out_stat                         full
% 2.17/0.97  --bmc1_ground_init                      false
% 2.17/0.97  --bmc1_pre_inst_next_state              false
% 2.17/0.97  --bmc1_pre_inst_state                   false
% 2.17/0.97  --bmc1_pre_inst_reach_state             false
% 2.17/0.97  --bmc1_out_unsat_core                   false
% 2.17/0.97  --bmc1_aig_witness_out                  false
% 2.17/0.97  --bmc1_verbose                          false
% 2.17/0.97  --bmc1_dump_clauses_tptp                false
% 2.17/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.17/0.97  --bmc1_dump_file                        -
% 2.17/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.17/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.17/0.97  --bmc1_ucm_extend_mode                  1
% 2.17/0.97  --bmc1_ucm_init_mode                    2
% 2.17/0.97  --bmc1_ucm_cone_mode                    none
% 2.17/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.17/0.97  --bmc1_ucm_relax_model                  4
% 2.17/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.17/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.17/0.97  --bmc1_ucm_layered_model                none
% 2.17/0.97  --bmc1_ucm_max_lemma_size               10
% 2.17/0.97  
% 2.17/0.97  ------ AIG Options
% 2.17/0.97  
% 2.17/0.97  --aig_mode                              false
% 2.17/0.97  
% 2.17/0.97  ------ Instantiation Options
% 2.17/0.97  
% 2.17/0.97  --instantiation_flag                    true
% 2.17/0.97  --inst_sos_flag                         false
% 2.17/0.97  --inst_sos_phase                        true
% 2.17/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.17/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.17/0.97  --inst_lit_sel_side                     none
% 2.17/0.97  --inst_solver_per_active                1400
% 2.17/0.97  --inst_solver_calls_frac                1.
% 2.17/0.97  --inst_passive_queue_type               priority_queues
% 2.17/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.17/0.97  --inst_passive_queues_freq              [25;2]
% 2.17/0.97  --inst_dismatching                      true
% 2.17/0.97  --inst_eager_unprocessed_to_passive     true
% 2.17/0.97  --inst_prop_sim_given                   true
% 2.17/0.97  --inst_prop_sim_new                     false
% 2.17/0.97  --inst_subs_new                         false
% 2.17/0.97  --inst_eq_res_simp                      false
% 2.17/0.97  --inst_subs_given                       false
% 2.17/0.97  --inst_orphan_elimination               true
% 2.17/0.97  --inst_learning_loop_flag               true
% 2.17/0.97  --inst_learning_start                   3000
% 2.17/0.97  --inst_learning_factor                  2
% 2.17/0.97  --inst_start_prop_sim_after_learn       3
% 2.17/0.97  --inst_sel_renew                        solver
% 2.17/0.97  --inst_lit_activity_flag                true
% 2.17/0.97  --inst_restr_to_given                   false
% 2.17/0.97  --inst_activity_threshold               500
% 2.17/0.97  --inst_out_proof                        true
% 2.17/0.97  
% 2.17/0.97  ------ Resolution Options
% 2.17/0.97  
% 2.17/0.97  --resolution_flag                       false
% 2.17/0.97  --res_lit_sel                           adaptive
% 2.17/0.97  --res_lit_sel_side                      none
% 2.17/0.97  --res_ordering                          kbo
% 2.17/0.97  --res_to_prop_solver                    active
% 2.17/0.97  --res_prop_simpl_new                    false
% 2.17/0.97  --res_prop_simpl_given                  true
% 2.17/0.97  --res_passive_queue_type                priority_queues
% 2.17/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.17/0.97  --res_passive_queues_freq               [15;5]
% 2.17/0.97  --res_forward_subs                      full
% 2.17/0.97  --res_backward_subs                     full
% 2.17/0.97  --res_forward_subs_resolution           true
% 2.17/0.97  --res_backward_subs_resolution          true
% 2.17/0.97  --res_orphan_elimination                true
% 2.17/0.97  --res_time_limit                        2.
% 2.17/0.97  --res_out_proof                         true
% 2.17/0.97  
% 2.17/0.97  ------ Superposition Options
% 2.17/0.97  
% 2.17/0.97  --superposition_flag                    true
% 2.17/0.97  --sup_passive_queue_type                priority_queues
% 2.17/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.17/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.17/0.97  --demod_completeness_check              fast
% 2.17/0.97  --demod_use_ground                      true
% 2.17/0.97  --sup_to_prop_solver                    passive
% 2.17/0.97  --sup_prop_simpl_new                    true
% 2.17/0.97  --sup_prop_simpl_given                  true
% 2.17/0.97  --sup_fun_splitting                     false
% 2.17/0.97  --sup_smt_interval                      50000
% 2.17/0.97  
% 2.17/0.97  ------ Superposition Simplification Setup
% 2.17/0.97  
% 2.17/0.97  --sup_indices_passive                   []
% 2.17/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.17/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/0.97  --sup_full_bw                           [BwDemod]
% 2.17/0.97  --sup_immed_triv                        [TrivRules]
% 2.17/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.17/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/0.97  --sup_immed_bw_main                     []
% 2.17/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.17/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/0.97  
% 2.17/0.97  ------ Combination Options
% 2.17/0.97  
% 2.17/0.97  --comb_res_mult                         3
% 2.17/0.97  --comb_sup_mult                         2
% 2.17/0.97  --comb_inst_mult                        10
% 2.17/0.97  
% 2.17/0.97  ------ Debug Options
% 2.17/0.97  
% 2.17/0.97  --dbg_backtrace                         false
% 2.17/0.97  --dbg_dump_prop_clauses                 false
% 2.17/0.97  --dbg_dump_prop_clauses_file            -
% 2.17/0.97  --dbg_out_stat                          false
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  ------ Proving...
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  % SZS status Theorem for theBenchmark.p
% 2.17/0.97  
% 2.17/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 2.17/0.97  
% 2.17/0.97  fof(f9,axiom,(
% 2.17/0.97    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ? [X1] : (v4_pre_topc(X1,X0) & v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f14,plain,(
% 2.17/0.97    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ? [X1] : (v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.17/0.97    inference(pure_predicate_removal,[],[f9])).
% 2.17/0.97  
% 2.17/0.97  fof(f22,plain,(
% 2.17/0.97    ! [X0] : (? [X1] : (v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.17/0.97    inference(ennf_transformation,[],[f14])).
% 2.17/0.97  
% 2.17/0.97  fof(f23,plain,(
% 2.17/0.97    ! [X0] : (? [X1] : (v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.17/0.97    inference(flattening,[],[f22])).
% 2.17/0.97  
% 2.17/0.97  fof(f28,plain,(
% 2.17/0.97    ! [X0] : (? [X1] : (v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (v4_pre_topc(sK0(X0),X0) & m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.17/0.97    introduced(choice_axiom,[])).
% 2.17/0.97  
% 2.17/0.97  fof(f29,plain,(
% 2.17/0.97    ! [X0] : ((v4_pre_topc(sK0(X0),X0) & m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.17/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f28])).
% 2.17/0.97  
% 2.17/0.97  fof(f45,plain,(
% 2.17/0.97    ( ! [X0] : (m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f29])).
% 2.17/0.97  
% 2.17/0.97  fof(f11,conjecture,(
% 2.17/0.97    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => v2_tex_2(X1,X0)))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f12,negated_conjecture,(
% 2.17/0.97    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => v2_tex_2(X1,X0)))),
% 2.17/0.97    inference(negated_conjecture,[],[f11])).
% 2.17/0.97  
% 2.17/0.97  fof(f13,plain,(
% 2.17/0.97    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => v2_tex_2(X1,X0)))),
% 2.17/0.97    inference(pure_predicate_removal,[],[f12])).
% 2.17/0.97  
% 2.17/0.97  fof(f26,plain,(
% 2.17/0.97    ? [X0] : (? [X1] : (~v2_tex_2(X1,X0) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 2.17/0.97    inference(ennf_transformation,[],[f13])).
% 2.17/0.97  
% 2.17/0.97  fof(f27,plain,(
% 2.17/0.97    ? [X0] : (? [X1] : (~v2_tex_2(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 2.17/0.97    inference(flattening,[],[f26])).
% 2.17/0.97  
% 2.17/0.97  fof(f36,plain,(
% 2.17/0.97    ( ! [X0] : (? [X1] : (~v2_tex_2(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => (~v2_tex_2(sK4,X0) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(sK4))) )),
% 2.17/0.97    introduced(choice_axiom,[])).
% 2.17/0.97  
% 2.17/0.97  fof(f35,plain,(
% 2.17/0.97    ? [X0] : (? [X1] : (~v2_tex_2(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (? [X1] : (~v2_tex_2(X1,sK3) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3))) & v1_xboole_0(X1)) & l1_pre_topc(sK3) & v2_pre_topc(sK3))),
% 2.17/0.97    introduced(choice_axiom,[])).
% 2.17/0.97  
% 2.17/0.97  fof(f37,plain,(
% 2.17/0.97    (~v2_tex_2(sK4,sK3) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) & v1_xboole_0(sK4)) & l1_pre_topc(sK3) & v2_pre_topc(sK3)),
% 2.17/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f27,f36,f35])).
% 2.17/0.97  
% 2.17/0.97  fof(f53,plain,(
% 2.17/0.97    v2_pre_topc(sK3)),
% 2.17/0.97    inference(cnf_transformation,[],[f37])).
% 2.17/0.97  
% 2.17/0.97  fof(f54,plain,(
% 2.17/0.97    l1_pre_topc(sK3)),
% 2.17/0.97    inference(cnf_transformation,[],[f37])).
% 2.17/0.97  
% 2.17/0.97  fof(f5,axiom,(
% 2.17/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f20,plain,(
% 2.17/0.97    ! [X0,X1,X2] : (k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 2.17/0.97    inference(ennf_transformation,[],[f5])).
% 2.17/0.97  
% 2.17/0.97  fof(f42,plain,(
% 2.17/0.97    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 2.17/0.97    inference(cnf_transformation,[],[f20])).
% 2.17/0.97  
% 2.17/0.97  fof(f56,plain,(
% 2.17/0.97    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))),
% 2.17/0.97    inference(cnf_transformation,[],[f37])).
% 2.17/0.97  
% 2.17/0.97  fof(f3,axiom,(
% 2.17/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f18,plain,(
% 2.17/0.97    ! [X0,X1,X2] : (k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 2.17/0.97    inference(ennf_transformation,[],[f3])).
% 2.17/0.97  
% 2.17/0.97  fof(f40,plain,(
% 2.17/0.97    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 2.17/0.97    inference(cnf_transformation,[],[f18])).
% 2.17/0.97  
% 2.17/0.97  fof(f55,plain,(
% 2.17/0.97    v1_xboole_0(sK4)),
% 2.17/0.97    inference(cnf_transformation,[],[f37])).
% 2.17/0.97  
% 2.17/0.97  fof(f1,axiom,(
% 2.17/0.97    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f16,plain,(
% 2.17/0.97    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 2.17/0.97    inference(ennf_transformation,[],[f1])).
% 2.17/0.97  
% 2.17/0.97  fof(f38,plain,(
% 2.17/0.97    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f16])).
% 2.17/0.97  
% 2.17/0.97  fof(f6,axiom,(
% 2.17/0.97    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f43,plain,(
% 2.17/0.97    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 2.17/0.97    inference(cnf_transformation,[],[f6])).
% 2.17/0.97  
% 2.17/0.97  fof(f4,axiom,(
% 2.17/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f19,plain,(
% 2.17/0.97    ! [X0,X1,X2] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 2.17/0.97    inference(ennf_transformation,[],[f4])).
% 2.17/0.97  
% 2.17/0.97  fof(f41,plain,(
% 2.17/0.97    ( ! [X2,X0,X1] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 2.17/0.97    inference(cnf_transformation,[],[f19])).
% 2.17/0.97  
% 2.17/0.97  fof(f7,axiom,(
% 2.17/0.97    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_xboole_0(X1)))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f21,plain,(
% 2.17/0.97    ! [X0] : (! [X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 2.17/0.97    inference(ennf_transformation,[],[f7])).
% 2.17/0.97  
% 2.17/0.97  fof(f44,plain,(
% 2.17/0.97    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f21])).
% 2.17/0.97  
% 2.17/0.97  fof(f57,plain,(
% 2.17/0.97    ~v2_tex_2(sK4,sK3)),
% 2.17/0.97    inference(cnf_transformation,[],[f37])).
% 2.17/0.97  
% 2.17/0.97  fof(f2,axiom,(
% 2.17/0.97    ! [X0] : (r1_tarski(X0,k1_xboole_0) => k1_xboole_0 = X0)),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f17,plain,(
% 2.17/0.97    ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0))),
% 2.17/0.97    inference(ennf_transformation,[],[f2])).
% 2.17/0.97  
% 2.17/0.97  fof(f39,plain,(
% 2.17/0.97    ( ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f17])).
% 2.17/0.97  
% 2.17/0.97  fof(f10,axiom,(
% 2.17/0.97    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tex_2(X1,X0) <=> ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ~(! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ~(k9_subset_1(u1_struct_0(X0),X1,X3) = X2 & v4_pre_topc(X3,X0))) & r1_tarski(X2,X1))))))),
% 2.17/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/0.97  
% 2.17/0.97  fof(f24,plain,(
% 2.17/0.97    ! [X0] : (! [X1] : ((v2_tex_2(X1,X0) <=> ! [X2] : ((? [X3] : ((k9_subset_1(u1_struct_0(X0),X1,X3) = X2 & v4_pre_topc(X3,X0)) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r1_tarski(X2,X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.17/0.97    inference(ennf_transformation,[],[f10])).
% 2.17/0.97  
% 2.17/0.97  fof(f25,plain,(
% 2.17/0.97    ! [X0] : (! [X1] : ((v2_tex_2(X1,X0) <=> ! [X2] : (? [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) = X2 & v4_pre_topc(X3,X0) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.17/0.97    inference(flattening,[],[f24])).
% 2.17/0.97  
% 2.17/0.97  fof(f30,plain,(
% 2.17/0.97    ! [X0] : (! [X1] : (((v2_tex_2(X1,X0) | ? [X2] : (! [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) != X2 | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r1_tarski(X2,X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (? [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) = X2 & v4_pre_topc(X3,X0) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.17/0.97    inference(nnf_transformation,[],[f25])).
% 2.17/0.97  
% 2.17/0.97  fof(f31,plain,(
% 2.17/0.97    ! [X0] : (! [X1] : (((v2_tex_2(X1,X0) | ? [X2] : (! [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) != X2 | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r1_tarski(X2,X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (? [X5] : (k9_subset_1(u1_struct_0(X0),X1,X5) = X4 & v4_pre_topc(X5,X0) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))) | ~r1_tarski(X4,X1) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.17/0.97    inference(rectify,[],[f30])).
% 2.17/0.97  
% 2.17/0.97  fof(f33,plain,(
% 2.17/0.97    ! [X4,X1,X0] : (? [X5] : (k9_subset_1(u1_struct_0(X0),X1,X5) = X4 & v4_pre_topc(X5,X0) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))) => (k9_subset_1(u1_struct_0(X0),X1,sK2(X0,X1,X4)) = X4 & v4_pre_topc(sK2(X0,X1,X4),X0) & m1_subset_1(sK2(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.17/0.97    introduced(choice_axiom,[])).
% 2.17/0.97  
% 2.17/0.97  fof(f32,plain,(
% 2.17/0.97    ! [X1,X0] : (? [X2] : (! [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) != X2 | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r1_tarski(X2,X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (! [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) != sK1(X0,X1) | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r1_tarski(sK1(X0,X1),X1) & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.17/0.97    introduced(choice_axiom,[])).
% 2.17/0.97  
% 2.17/0.97  fof(f34,plain,(
% 2.17/0.97    ! [X0] : (! [X1] : (((v2_tex_2(X1,X0) | (! [X3] : (k9_subset_1(u1_struct_0(X0),X1,X3) != sK1(X0,X1) | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r1_tarski(sK1(X0,X1),X1) & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : ((k9_subset_1(u1_struct_0(X0),X1,sK2(X0,X1,X4)) = X4 & v4_pre_topc(sK2(X0,X1,X4),X0) & m1_subset_1(sK2(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0)))) | ~r1_tarski(X4,X1) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.17/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f31,f33,f32])).
% 2.17/0.97  
% 2.17/0.97  fof(f51,plain,(
% 2.17/0.97    ( ! [X0,X1] : (v2_tex_2(X1,X0) | r1_tarski(sK1(X0,X1),X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f34])).
% 2.17/0.97  
% 2.17/0.97  fof(f46,plain,(
% 2.17/0.97    ( ! [X0] : (v4_pre_topc(sK0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f29])).
% 2.17/0.97  
% 2.17/0.97  fof(f52,plain,(
% 2.17/0.97    ( ! [X0,X3,X1] : (v2_tex_2(X1,X0) | k9_subset_1(u1_struct_0(X0),X1,X3) != sK1(X0,X1) | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.17/0.97    inference(cnf_transformation,[],[f34])).
% 2.17/0.97  
% 2.17/0.97  cnf(c_8,plain,
% 2.17/0.97      ( m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))
% 2.17/0.97      | ~ v2_pre_topc(X0)
% 2.17/0.97      | ~ l1_pre_topc(X0) ),
% 2.17/0.97      inference(cnf_transformation,[],[f45]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_19,negated_conjecture,
% 2.17/0.97      ( v2_pre_topc(sK3) ),
% 2.17/0.97      inference(cnf_transformation,[],[f53]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_226,plain,
% 2.17/0.97      ( m1_subset_1(sK0(X0),k1_zfmisc_1(u1_struct_0(X0)))
% 2.17/0.97      | ~ l1_pre_topc(X0)
% 2.17/0.97      | sK3 != X0 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_8,c_19]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_227,plain,
% 2.17/0.97      ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | ~ l1_pre_topc(sK3) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_226]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_18,negated_conjecture,
% 2.17/0.97      ( l1_pre_topc(sK3) ),
% 2.17/0.97      inference(cnf_transformation,[],[f54]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_229,plain,
% 2.17/0.97      ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) ),
% 2.17/0.97      inference(global_propositional_subsumption,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_227,c_18]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_672,plain,
% 2.17/0.97      ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_229]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_884,plain,
% 2.17/0.97      ( m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_672]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_4,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.17/0.97      | k9_subset_1(X1,X2,X0) = k3_xboole_0(X2,X0) ),
% 2.17/0.97      inference(cnf_transformation,[],[f42]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_677,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
% 2.17/0.97      | k9_subset_1(X1_45,X2_45,X0_45) = k3_xboole_0(X2_45,X0_45) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_4]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_879,plain,
% 2.17/0.97      ( k9_subset_1(X0_45,X1_45,X2_45) = k3_xboole_0(X1_45,X2_45)
% 2.17/0.97      | m1_subset_1(X2_45,k1_zfmisc_1(X0_45)) != iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_677]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1162,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),X0_45,sK0(sK3)) = k3_xboole_0(X0_45,sK0(sK3)) ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_884,c_879]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_16,negated_conjecture,
% 2.17/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
% 2.17/0.97      inference(cnf_transformation,[],[f56]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_674,negated_conjecture,
% 2.17/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_16]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_882,plain,
% 2.17/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_674]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.17/0.97      | k9_subset_1(X1,X0,X2) = k9_subset_1(X1,X2,X0) ),
% 2.17/0.97      inference(cnf_transformation,[],[f40]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_679,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
% 2.17/0.97      | k9_subset_1(X1_45,X0_45,X2_45) = k9_subset_1(X1_45,X2_45,X0_45) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_2]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_877,plain,
% 2.17/0.97      ( k9_subset_1(X0_45,X1_45,X2_45) = k9_subset_1(X0_45,X2_45,X1_45)
% 2.17/0.97      | m1_subset_1(X1_45,k1_zfmisc_1(X0_45)) != iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_679]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1142,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),X0_45,sK4) = k9_subset_1(u1_struct_0(sK3),sK4,X0_45) ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_882,c_877]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_17,negated_conjecture,
% 2.17/0.97      ( v1_xboole_0(sK4) ),
% 2.17/0.97      inference(cnf_transformation,[],[f55]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_673,negated_conjecture,
% 2.17/0.97      ( v1_xboole_0(sK4) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_17]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_883,plain,
% 2.17/0.97      ( v1_xboole_0(sK4) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_673]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_0,plain,
% 2.17/0.97      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.17/0.97      inference(cnf_transformation,[],[f38]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_680,plain,
% 2.17/0.97      ( ~ v1_xboole_0(X0_45) | k1_xboole_0 = X0_45 ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_0]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_876,plain,
% 2.17/0.97      ( k1_xboole_0 = X0_45 | v1_xboole_0(X0_45) != iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_680]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1093,plain,
% 2.17/0.97      ( sK4 = k1_xboole_0 ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_883,c_876]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1161,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),X0_45,sK4) = k3_xboole_0(X0_45,sK4) ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_882,c_879]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1419,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),X0_45,k1_xboole_0) = k3_xboole_0(X0_45,k1_xboole_0) ),
% 2.17/0.97      inference(light_normalisation,[status(thm)],[c_1161,c_1093]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1426,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),k1_xboole_0,X0_45) = k3_xboole_0(X0_45,k1_xboole_0) ),
% 2.17/0.97      inference(light_normalisation,[status(thm)],[c_1142,c_1093,c_1419]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1478,plain,
% 2.17/0.97      ( k3_xboole_0(sK0(sK3),k1_xboole_0) = k3_xboole_0(k1_xboole_0,sK0(sK3)) ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_1162,c_1426]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_5,plain,
% 2.17/0.97      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 2.17/0.97      inference(cnf_transformation,[],[f43]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_676,plain,
% 2.17/0.97      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0_45)) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_5]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_880,plain,
% 2.17/0.97      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0_45)) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_676]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1164,plain,
% 2.17/0.97      ( k9_subset_1(X0_45,X1_45,k1_xboole_0) = k3_xboole_0(X1_45,k1_xboole_0) ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_880,c_879]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_3,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.17/0.97      | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 2.17/0.97      inference(cnf_transformation,[],[f41]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_678,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
% 2.17/0.97      | m1_subset_1(k9_subset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X1_45)) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_3]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_878,plain,
% 2.17/0.97      ( m1_subset_1(X0_45,k1_zfmisc_1(X1_45)) != iProver_top
% 2.17/0.97      | m1_subset_1(k9_subset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X1_45)) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_678]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1668,plain,
% 2.17/0.97      ( m1_subset_1(k3_xboole_0(X0_45,k1_xboole_0),k1_zfmisc_1(X1_45)) = iProver_top
% 2.17/0.97      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1_45)) != iProver_top ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_1164,c_878]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2142,plain,
% 2.17/0.97      ( m1_subset_1(k3_xboole_0(X0_45,k1_xboole_0),k1_zfmisc_1(X1_45)) = iProver_top ),
% 2.17/0.97      inference(forward_subsumption_resolution,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_1668,c_880]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2146,plain,
% 2.17/0.97      ( m1_subset_1(k3_xboole_0(k1_xboole_0,sK0(sK3)),k1_zfmisc_1(X0_45)) = iProver_top ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_1478,c_2142]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_6,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.17/0.97      | ~ v1_xboole_0(X1)
% 2.17/0.97      | v1_xboole_0(X0) ),
% 2.17/0.97      inference(cnf_transformation,[],[f44]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_675,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
% 2.17/0.97      | ~ v1_xboole_0(X1_45)
% 2.17/0.97      | v1_xboole_0(X0_45) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_6]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_881,plain,
% 2.17/0.97      ( m1_subset_1(X0_45,k1_zfmisc_1(X1_45)) != iProver_top
% 2.17/0.97      | v1_xboole_0(X1_45) != iProver_top
% 2.17/0.97      | v1_xboole_0(X0_45) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_675]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2311,plain,
% 2.17/0.97      ( v1_xboole_0(X0_45) != iProver_top
% 2.17/0.97      | v1_xboole_0(k3_xboole_0(k1_xboole_0,sK0(sK3))) = iProver_top ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_2146,c_881]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_22,plain,
% 2.17/0.97      ( v1_xboole_0(sK4) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_946,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(sK4))
% 2.17/0.97      | v1_xboole_0(X0_45)
% 2.17/0.97      | ~ v1_xboole_0(sK4) ),
% 2.17/0.97      inference(instantiation,[status(thm)],[c_675]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_947,plain,
% 2.17/0.97      ( m1_subset_1(X0_45,k1_zfmisc_1(sK4)) != iProver_top
% 2.17/0.97      | v1_xboole_0(X0_45) = iProver_top
% 2.17/0.97      | v1_xboole_0(sK4) != iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_946]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_949,plain,
% 2.17/0.97      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK4)) != iProver_top
% 2.17/0.97      | v1_xboole_0(sK4) != iProver_top
% 2.17/0.97      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.17/0.97      inference(instantiation,[status(thm)],[c_947]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_992,plain,
% 2.17/0.97      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK4)) ),
% 2.17/0.97      inference(instantiation,[status(thm)],[c_676]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_995,plain,
% 2.17/0.97      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK4)) = iProver_top ),
% 2.17/0.97      inference(predicate_to_equality,[status(thm)],[c_992]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2332,plain,
% 2.17/0.97      ( v1_xboole_0(k3_xboole_0(k1_xboole_0,sK0(sK3))) = iProver_top
% 2.17/0.97      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.17/0.97      inference(instantiation,[status(thm)],[c_2311]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2540,plain,
% 2.17/0.97      ( v1_xboole_0(k3_xboole_0(k1_xboole_0,sK0(sK3))) = iProver_top ),
% 2.17/0.97      inference(global_propositional_subsumption,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_2311,c_22,c_949,c_995,c_2332]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_2545,plain,
% 2.17/0.97      ( k3_xboole_0(k1_xboole_0,sK0(sK3)) = k1_xboole_0 ),
% 2.17/0.97      inference(superposition,[status(thm)],[c_2540,c_876]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_15,negated_conjecture,
% 2.17/0.97      ( ~ v2_tex_2(sK4,sK3) ),
% 2.17/0.97      inference(cnf_transformation,[],[f57]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1,plain,
% 2.17/0.97      ( ~ r1_tarski(X0,k1_xboole_0) | k1_xboole_0 = X0 ),
% 2.17/0.97      inference(cnf_transformation,[],[f39]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_10,plain,
% 2.17/0.97      ( v2_tex_2(X0,X1)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | r1_tarski(sK1(X1,X0),X0)
% 2.17/0.97      | ~ l1_pre_topc(X1) ),
% 2.17/0.97      inference(cnf_transformation,[],[f51]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_393,plain,
% 2.17/0.97      ( v2_tex_2(X0,X1)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | r1_tarski(sK1(X1,X0),X0)
% 2.17/0.97      | sK3 != X1 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_10,c_18]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_394,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | r1_tarski(sK1(sK3,X0),X0) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_393]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_516,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | sK1(sK3,X0) != X1
% 2.17/0.97      | k1_xboole_0 != X0
% 2.17/0.97      | k1_xboole_0 = X1 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_1,c_394]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_517,plain,
% 2.17/0.97      ( v2_tex_2(k1_xboole_0,sK3)
% 2.17/0.97      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k1_xboole_0 = sK1(sK3,k1_xboole_0) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_516]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_525,plain,
% 2.17/0.97      ( v2_tex_2(k1_xboole_0,sK3) | k1_xboole_0 = sK1(sK3,k1_xboole_0) ),
% 2.17/0.97      inference(forward_subsumption_resolution,[status(thm)],[c_517,c_5]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_578,plain,
% 2.17/0.97      ( sK1(sK3,k1_xboole_0) = k1_xboole_0
% 2.17/0.97      | sK3 != sK3
% 2.17/0.97      | sK4 != k1_xboole_0 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_15,c_525]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_604,plain,
% 2.17/0.97      ( sK1(sK3,k1_xboole_0) = k1_xboole_0 | sK4 != k1_xboole_0 ),
% 2.17/0.97      inference(equality_resolution_simp,[status(thm)],[c_578]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_669,plain,
% 2.17/0.97      ( sK1(sK3,k1_xboole_0) = k1_xboole_0 | sK4 != k1_xboole_0 ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_604]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1312,plain,
% 2.17/0.97      ( sK1(sK3,k1_xboole_0) = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 2.17/0.97      inference(demodulation,[status(thm)],[c_1093,c_669]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1324,plain,
% 2.17/0.97      ( sK1(sK3,k1_xboole_0) = k1_xboole_0 ),
% 2.17/0.97      inference(equality_resolution_simp,[status(thm)],[c_1312]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_7,plain,
% 2.17/0.97      ( v4_pre_topc(sK0(X0),X0) | ~ v2_pre_topc(X0) | ~ l1_pre_topc(X0) ),
% 2.17/0.97      inference(cnf_transformation,[],[f46]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_237,plain,
% 2.17/0.97      ( v4_pre_topc(sK0(X0),X0) | ~ l1_pre_topc(X0) | sK3 != X0 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_7,c_19]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_238,plain,
% 2.17/0.97      ( v4_pre_topc(sK0(sK3),sK3) | ~ l1_pre_topc(sK3) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_237]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_240,plain,
% 2.17/0.97      ( v4_pre_topc(sK0(sK3),sK3) ),
% 2.17/0.97      inference(global_propositional_subsumption,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_238,c_18]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_9,plain,
% 2.17/0.97      ( v2_tex_2(X0,X1)
% 2.17/0.97      | ~ v4_pre_topc(X2,X1)
% 2.17/0.97      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | ~ l1_pre_topc(X1)
% 2.17/0.97      | k9_subset_1(u1_struct_0(X1),X0,X2) != sK1(X1,X0) ),
% 2.17/0.97      inference(cnf_transformation,[],[f52]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_408,plain,
% 2.17/0.97      ( v2_tex_2(X0,X1)
% 2.17/0.97      | ~ v4_pre_topc(X2,X1)
% 2.17/0.97      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(X1),X0,X2) != sK1(X1,X0)
% 2.17/0.97      | sK3 != X1 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_9,c_18]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_409,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ v4_pre_topc(X1,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,X1) != sK1(sK3,X0) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_408]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_538,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,X1) != sK1(sK3,X0)
% 2.17/0.97      | sK0(sK3) != X1
% 2.17/0.97      | sK3 != sK3 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_240,c_409]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_539,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | ~ m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_538]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_283,plain,
% 2.17/0.97      ( v2_tex_2(X0,X1)
% 2.17/0.97      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.17/0.97      | ~ l1_pre_topc(X1)
% 2.17/0.97      | k9_subset_1(u1_struct_0(X1),X0,X2) != sK1(X1,X0)
% 2.17/0.97      | sK0(sK3) != X2
% 2.17/0.97      | sK3 != X1 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_9,c_240]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_284,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | ~ m1_subset_1(sK0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | ~ l1_pre_topc(sK3)
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_283]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_288,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
% 2.17/0.97      inference(global_propositional_subsumption,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_284,c_18,c_227]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_541,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | v2_tex_2(X0,sK3)
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
% 2.17/0.97      inference(global_propositional_subsumption,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_539,c_288]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_542,plain,
% 2.17/0.97      ( v2_tex_2(X0,sK3)
% 2.17/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0) ),
% 2.17/0.97      inference(renaming,[status(thm)],[c_541]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_570,plain,
% 2.17/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),X0,sK0(sK3)) != sK1(sK3,X0)
% 2.17/0.97      | sK3 != sK3
% 2.17/0.97      | sK4 != X0 ),
% 2.17/0.97      inference(resolution_lifted,[status(thm)],[c_15,c_542]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_571,plain,
% 2.17/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.17/0.97      | k9_subset_1(u1_struct_0(sK3),sK4,sK0(sK3)) != sK1(sK3,sK4) ),
% 2.17/0.97      inference(unflattening,[status(thm)],[c_570]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_573,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),sK4,sK0(sK3)) != sK1(sK3,sK4) ),
% 2.17/0.97      inference(global_propositional_subsumption,
% 2.17/0.97                [status(thm)],
% 2.17/0.97                [c_571,c_16]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_670,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),sK4,sK0(sK3)) != sK1(sK3,sK4) ),
% 2.17/0.97      inference(subtyping,[status(esa)],[c_573]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1314,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),k1_xboole_0,sK0(sK3)) != sK1(sK3,k1_xboole_0) ),
% 2.17/0.97      inference(demodulation,[status(thm)],[c_1093,c_670]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1327,plain,
% 2.17/0.97      ( k9_subset_1(u1_struct_0(sK3),k1_xboole_0,sK0(sK3)) != k1_xboole_0 ),
% 2.17/0.97      inference(demodulation,[status(thm)],[c_1324,c_1314]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1473,plain,
% 2.17/0.97      ( k3_xboole_0(sK0(sK3),k1_xboole_0) != k1_xboole_0 ),
% 2.17/0.97      inference(demodulation,[status(thm)],[c_1327,c_1426]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(c_1851,plain,
% 2.17/0.97      ( k3_xboole_0(k1_xboole_0,sK0(sK3)) != k1_xboole_0 ),
% 2.17/0.97      inference(demodulation,[status(thm)],[c_1478,c_1473]) ).
% 2.17/0.97  
% 2.17/0.97  cnf(contradiction,plain,
% 2.17/0.97      ( $false ),
% 2.17/0.97      inference(minisat,[status(thm)],[c_2545,c_1851]) ).
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 2.17/0.97  
% 2.17/0.97  ------                               Statistics
% 2.17/0.97  
% 2.17/0.97  ------ General
% 2.17/0.97  
% 2.17/0.97  abstr_ref_over_cycles:                  0
% 2.17/0.97  abstr_ref_under_cycles:                 0
% 2.17/0.97  gc_basic_clause_elim:                   0
% 2.17/0.97  forced_gc_time:                         0
% 2.17/0.97  parsing_time:                           0.009
% 2.17/0.97  unif_index_cands_time:                  0.
% 2.17/0.97  unif_index_add_time:                    0.
% 2.17/0.97  orderings_time:                         0.
% 2.17/0.97  out_proof_time:                         0.018
% 2.17/0.97  total_time:                             0.115
% 2.17/0.97  num_of_symbols:                         51
% 2.17/0.97  num_of_terms:                           2133
% 2.17/0.97  
% 2.17/0.97  ------ Preprocessing
% 2.17/0.97  
% 2.17/0.97  num_of_splits:                          0
% 2.17/0.97  num_of_split_atoms:                     0
% 2.17/0.97  num_of_reused_defs:                     0
% 2.17/0.97  num_eq_ax_congr_red:                    17
% 2.17/0.97  num_of_sem_filtered_clauses:            1
% 2.17/0.97  num_of_subtypes:                        3
% 2.17/0.97  monotx_restored_types:                  1
% 2.17/0.97  sat_num_of_epr_types:                   0
% 2.17/0.97  sat_num_of_non_cyclic_types:            0
% 2.17/0.97  sat_guarded_non_collapsed_types:        0
% 2.17/0.97  num_pure_diseq_elim:                    0
% 2.17/0.97  simp_replaced_by:                       0
% 2.17/0.97  res_preprocessed:                       73
% 2.17/0.97  prep_upred:                             0
% 2.17/0.97  prep_unflattend:                        25
% 2.17/0.97  smt_new_axioms:                         0
% 2.17/0.97  pred_elim_cands:                        2
% 2.17/0.97  pred_elim:                              5
% 2.17/0.97  pred_elim_cl:                           8
% 2.17/0.97  pred_elim_cycles:                       9
% 2.17/0.97  merged_defs:                            0
% 2.17/0.97  merged_defs_ncl:                        0
% 2.17/0.97  bin_hyper_res:                          0
% 2.17/0.97  prep_cycles:                            4
% 2.17/0.97  pred_elim_time:                         0.008
% 2.17/0.97  splitting_time:                         0.
% 2.17/0.97  sem_filter_time:                        0.
% 2.17/0.97  monotx_time:                            0.001
% 2.17/0.97  subtype_inf_time:                       0.001
% 2.17/0.97  
% 2.17/0.97  ------ Problem properties
% 2.17/0.97  
% 2.17/0.97  clauses:                                12
% 2.17/0.97  conjectures:                            2
% 2.17/0.97  epr:                                    2
% 2.17/0.97  horn:                                   12
% 2.17/0.97  ground:                                 6
% 2.17/0.97  unary:                                  6
% 2.17/0.97  binary:                                 5
% 2.17/0.97  lits:                                   19
% 2.17/0.97  lits_eq:                                6
% 2.17/0.97  fd_pure:                                0
% 2.17/0.97  fd_pseudo:                              0
% 2.17/0.97  fd_cond:                                1
% 2.17/0.97  fd_pseudo_cond:                         0
% 2.17/0.97  ac_symbols:                             0
% 2.17/0.97  
% 2.17/0.97  ------ Propositional Solver
% 2.17/0.97  
% 2.17/0.97  prop_solver_calls:                      29
% 2.17/0.97  prop_fast_solver_calls:                 483
% 2.17/0.97  smt_solver_calls:                       0
% 2.17/0.97  smt_fast_solver_calls:                  0
% 2.17/0.97  prop_num_of_clauses:                    804
% 2.17/0.97  prop_preprocess_simplified:             2548
% 2.17/0.97  prop_fo_subsumed:                       16
% 2.17/0.97  prop_solver_time:                       0.
% 2.17/0.97  smt_solver_time:                        0.
% 2.17/0.97  smt_fast_solver_time:                   0.
% 2.17/0.97  prop_fast_solver_time:                  0.
% 2.17/0.97  prop_unsat_core_time:                   0.
% 2.17/0.97  
% 2.17/0.97  ------ QBF
% 2.17/0.97  
% 2.17/0.97  qbf_q_res:                              0
% 2.17/0.97  qbf_num_tautologies:                    0
% 2.17/0.97  qbf_prep_cycles:                        0
% 2.17/0.97  
% 2.17/0.97  ------ BMC1
% 2.17/0.97  
% 2.17/0.97  bmc1_current_bound:                     -1
% 2.17/0.97  bmc1_last_solved_bound:                 -1
% 2.17/0.97  bmc1_unsat_core_size:                   -1
% 2.17/0.97  bmc1_unsat_core_parents_size:           -1
% 2.17/0.97  bmc1_merge_next_fun:                    0
% 2.17/0.97  bmc1_unsat_core_clauses_time:           0.
% 2.17/0.97  
% 2.17/0.97  ------ Instantiation
% 2.17/0.97  
% 2.17/0.97  inst_num_of_clauses:                    226
% 2.17/0.97  inst_num_in_passive:                    12
% 2.17/0.97  inst_num_in_active:                     180
% 2.17/0.97  inst_num_in_unprocessed:                34
% 2.17/0.97  inst_num_of_loops:                      210
% 2.17/0.97  inst_num_of_learning_restarts:          0
% 2.17/0.97  inst_num_moves_active_passive:          26
% 2.17/0.97  inst_lit_activity:                      0
% 2.17/0.97  inst_lit_activity_moves:                0
% 2.17/0.97  inst_num_tautologies:                   0
% 2.17/0.97  inst_num_prop_implied:                  0
% 2.17/0.97  inst_num_existing_simplified:           0
% 2.17/0.97  inst_num_eq_res_simplified:             0
% 2.17/0.97  inst_num_child_elim:                    0
% 2.17/0.97  inst_num_of_dismatching_blockings:      55
% 2.17/0.97  inst_num_of_non_proper_insts:           256
% 2.17/0.97  inst_num_of_duplicates:                 0
% 2.17/0.97  inst_inst_num_from_inst_to_res:         0
% 2.17/0.97  inst_dismatching_checking_time:         0.
% 2.17/0.97  
% 2.17/0.97  ------ Resolution
% 2.17/0.97  
% 2.17/0.97  res_num_of_clauses:                     0
% 2.17/0.97  res_num_in_passive:                     0
% 2.17/0.97  res_num_in_active:                      0
% 2.17/0.97  res_num_of_loops:                       77
% 2.17/0.97  res_forward_subset_subsumed:            32
% 2.17/0.97  res_backward_subset_subsumed:           2
% 2.17/0.97  res_forward_subsumed:                   0
% 2.17/0.97  res_backward_subsumed:                  0
% 2.17/0.97  res_forward_subsumption_resolution:     3
% 2.17/0.97  res_backward_subsumption_resolution:    0
% 2.17/0.97  res_clause_to_clause_subsumption:       154
% 2.17/0.97  res_orphan_elimination:                 0
% 2.17/0.97  res_tautology_del:                      33
% 2.17/0.97  res_num_eq_res_simplified:              1
% 2.17/0.97  res_num_sel_changes:                    0
% 2.17/0.97  res_moves_from_active_to_pass:          0
% 2.17/0.97  
% 2.17/0.97  ------ Superposition
% 2.17/0.97  
% 2.17/0.97  sup_time_total:                         0.
% 2.17/0.97  sup_time_generating:                    0.
% 2.17/0.97  sup_time_sim_full:                      0.
% 2.17/0.97  sup_time_sim_immed:                     0.
% 2.17/0.97  
% 2.17/0.97  sup_num_of_clauses:                     67
% 2.17/0.97  sup_num_in_active:                      30
% 2.17/0.97  sup_num_in_passive:                     37
% 2.17/0.97  sup_num_of_loops:                       40
% 2.17/0.97  sup_fw_superposition:                   55
% 2.17/0.97  sup_bw_superposition:                   56
% 2.17/0.97  sup_immediate_simplified:               24
% 2.17/0.97  sup_given_eliminated:                   1
% 2.17/0.97  comparisons_done:                       0
% 2.17/0.97  comparisons_avoided:                    0
% 2.17/0.97  
% 2.17/0.97  ------ Simplifications
% 2.17/0.97  
% 2.17/0.97  
% 2.17/0.97  sim_fw_subset_subsumed:                 1
% 2.17/0.97  sim_bw_subset_subsumed:                 2
% 2.17/0.97  sim_fw_subsumed:                        8
% 2.17/0.97  sim_bw_subsumed:                        1
% 2.17/0.97  sim_fw_subsumption_res:                 1
% 2.17/0.97  sim_bw_subsumption_res:                 0
% 2.17/0.97  sim_tautology_del:                      0
% 2.17/0.97  sim_eq_tautology_del:                   4
% 2.17/0.97  sim_eq_res_simp:                        1
% 2.17/0.97  sim_fw_demodulated:                     4
% 2.17/0.97  sim_bw_demodulated:                     15
% 2.17/0.97  sim_light_normalised:                   20
% 2.17/0.97  sim_joinable_taut:                      0
% 2.17/0.97  sim_joinable_simp:                      0
% 2.17/0.97  sim_ac_normalised:                      0
% 2.17/0.97  sim_smt_subsumption:                    0
% 2.17/0.97  
%------------------------------------------------------------------------------
