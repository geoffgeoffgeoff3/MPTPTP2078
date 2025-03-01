%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:27:09 EST 2020

% Result     : Theorem 3.85s
% Output     : CNFRefutation 3.85s
% Verified   : 
% Statistics : ERROR: Analysing output (Could not find formula named c_56)

% Comments   : 
%------------------------------------------------------------------------------
fof(f32,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_tex_2(X1,X0)
          <=> ~ v1_subset_1(X1,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v1_tdlat_3(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v3_tex_2(X1,X0)
            <=> ~ v1_subset_1(X1,u1_struct_0(X0)) ) ) ) ),
    inference(negated_conjecture,[],[f32])).

fof(f72,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tex_2(X1,X0)
          <~> ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f33])).

fof(f73,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tex_2(X1,X0)
          <~> ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f72])).

fof(f91,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
            | ~ v3_tex_2(X1,X0) )
          & ( ~ v1_subset_1(X1,u1_struct_0(X0))
            | v3_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f73])).

fof(f92,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
            | ~ v3_tex_2(X1,X0) )
          & ( ~ v1_subset_1(X1,u1_struct_0(X0))
            | v3_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f91])).

fof(f94,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
            | ~ v3_tex_2(X1,X0) )
          & ( ~ v1_subset_1(X1,u1_struct_0(X0))
            | v3_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ( v1_subset_1(sK5,u1_struct_0(X0))
          | ~ v3_tex_2(sK5,X0) )
        & ( ~ v1_subset_1(sK5,u1_struct_0(X0))
          | v3_tex_2(sK5,X0) )
        & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f93,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( v1_subset_1(X1,u1_struct_0(X0))
              | ~ v3_tex_2(X1,X0) )
            & ( ~ v1_subset_1(X1,u1_struct_0(X0))
              | v3_tex_2(X1,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(sK4))
            | ~ v3_tex_2(X1,sK4) )
          & ( ~ v1_subset_1(X1,u1_struct_0(sK4))
            | v3_tex_2(X1,sK4) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) )
      & l1_pre_topc(sK4)
      & v1_tdlat_3(sK4)
      & v2_pre_topc(sK4)
      & ~ v2_struct_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f95,plain,
    ( ( v1_subset_1(sK5,u1_struct_0(sK4))
      | ~ v3_tex_2(sK5,sK4) )
    & ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
      | v3_tex_2(sK5,sK4) )
    & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))
    & l1_pre_topc(sK4)
    & v1_tdlat_3(sK4)
    & v2_pre_topc(sK4)
    & ~ v2_struct_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f92,f94,f93])).

fof(f146,plain,(
    v1_tdlat_3(sK4) ),
    inference(cnf_transformation,[],[f95])).

fof(f22,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v1_tdlat_3(X0)
      <=> k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0] :
      ( ( v1_tdlat_3(X0)
      <=> k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f82,plain,(
    ! [X0] :
      ( ( ( v1_tdlat_3(X0)
          | k9_setfam_1(u1_struct_0(X0)) != u1_pre_topc(X0) )
        & ( k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0)
          | ~ v1_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f55])).

fof(f126,plain,(
    ! [X0] :
      ( k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f82])).

fof(f147,plain,(
    l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f95])).

fof(f148,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(cnf_transformation,[],[f95])).

fof(f13,axiom,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f111,plain,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f184,plain,(
    m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4))) ),
    inference(definition_unfolding,[],[f148,f111])).

fof(f26,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => ? [X2] :
              ( u1_struct_0(X2) = X1
              & m1_pre_topc(X2,X0)
              & v1_pre_topc(X2)
              & ~ v2_struct_0(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ? [X2] :
              ( u1_struct_0(X2) = X1
              & m1_pre_topc(X2,X0)
              & v1_pre_topc(X2)
              & ~ v2_struct_0(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f26])).

fof(f61,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ? [X2] :
              ( u1_struct_0(X2) = X1
              & m1_pre_topc(X2,X0)
              & v1_pre_topc(X2)
              & ~ v2_struct_0(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f60])).

fof(f85,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( u1_struct_0(X2) = X1
          & m1_pre_topc(X2,X0)
          & v1_pre_topc(X2)
          & ~ v2_struct_0(X2) )
     => ( u1_struct_0(sK2(X0,X1)) = X1
        & m1_pre_topc(sK2(X0,X1),X0)
        & v1_pre_topc(sK2(X0,X1))
        & ~ v2_struct_0(sK2(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f86,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( u1_struct_0(sK2(X0,X1)) = X1
            & m1_pre_topc(sK2(X0,X1),X0)
            & v1_pre_topc(sK2(X0,X1))
            & ~ v2_struct_0(sK2(X0,X1)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f61,f85])).

fof(f136,plain,(
    ! [X0,X1] :
      ( u1_struct_0(sK2(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f86])).

fof(f174,plain,(
    ! [X0,X1] :
      ( u1_struct_0(sK2(X0,X1)) = X1
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f136,f111])).

fof(f144,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f95])).

fof(f7,axiom,(
    ! [X0] : m1_subset_1(k1_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f105,plain,(
    ! [X0] : m1_subset_1(k1_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f5,axiom,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f103,plain,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f157,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k9_setfam_1(X0)) ),
    inference(definition_unfolding,[],[f105,f103,f111])).

fof(f24,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( v1_subset_1(X1,X0)
      <=> X0 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1] :
      ( ( v1_subset_1(X1,X0)
      <=> X0 != X1 )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f84,plain,(
    ! [X0,X1] :
      ( ( ( v1_subset_1(X1,X0)
          | X0 = X1 )
        & ( X0 != X1
          | ~ v1_subset_1(X1,X0) ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f57])).

fof(f131,plain,(
    ! [X0,X1] :
      ( v1_subset_1(X1,X0)
      | X0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f84])).

fof(f171,plain,(
    ! [X0,X1] :
      ( v1_subset_1(X1,X0)
      | X0 = X1
      | ~ m1_subset_1(X1,k9_setfam_1(X0)) ) ),
    inference(definition_unfolding,[],[f131,f111])).

fof(f12,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => ~ v1_subset_1(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v1_subset_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f110,plain,(
    ! [X0,X1] :
      ( ~ v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f161,plain,(
    ! [X0,X1] :
      ( ~ v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f110,f111])).

fof(f135,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(sK2(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f86])).

fof(f175,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(sK2(X0,X1),X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f135,f111])).

fof(f17,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f47,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f46])).

fof(f117,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f164,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f117,f111])).

fof(f21,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( v1_tdlat_3(X1)
            & v1_tsep_1(X1,X0)
            & v1_borsuk_1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( v1_tdlat_3(X1)
            & v1_borsuk_1(X1,X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f21])).

fof(f53,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tdlat_3(X1)
            & v1_borsuk_1(X1,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f34])).

fof(f54,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tdlat_3(X1)
            & v1_borsuk_1(X1,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f53])).

fof(f124,plain,(
    ! [X0,X1] :
      ( v1_borsuk_1(X1,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f54])).

fof(f18,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( u1_struct_0(X1) = X2
               => ( ( m1_pre_topc(X1,X0)
                    & v1_borsuk_1(X1,X0) )
                <=> v4_pre_topc(X2,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m1_pre_topc(X1,X0)
                  & v1_borsuk_1(X1,X0) )
              <=> v4_pre_topc(X2,X0) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f49,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m1_pre_topc(X1,X0)
                  & v1_borsuk_1(X1,X0) )
              <=> v4_pre_topc(X2,X0) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f48])).

fof(f80,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_pre_topc(X1,X0)
                    & v1_borsuk_1(X1,X0) )
                  | ~ v4_pre_topc(X2,X0) )
                & ( v4_pre_topc(X2,X0)
                  | ~ m1_pre_topc(X1,X0)
                  | ~ v1_borsuk_1(X1,X0) ) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f49])).

fof(f81,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_pre_topc(X1,X0)
                    & v1_borsuk_1(X1,X0) )
                  | ~ v4_pre_topc(X2,X0) )
                & ( v4_pre_topc(X2,X0)
                  | ~ m1_pre_topc(X1,X0)
                  | ~ v1_borsuk_1(X1,X0) ) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f80])).

fof(f119,plain,(
    ! [X2,X0,X1] :
      ( v4_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_borsuk_1(X1,X0)
      | u1_struct_0(X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f81])).

fof(f167,plain,(
    ! [X2,X0,X1] :
      ( v4_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_borsuk_1(X1,X0)
      | u1_struct_0(X1) != X2
      | ~ m1_subset_1(X2,k9_setfam_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f119,f111])).

fof(f189,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(u1_struct_0(X1),X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_borsuk_1(X1,X0)
      | ~ m1_subset_1(u1_struct_0(X1),k9_setfam_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f167])).

fof(f19,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f122,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f168,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k9_setfam_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f122,f111])).

fof(f20,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v1_tdlat_3(X0)
       => v2_pre_topc(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f52,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f51])).

fof(f123,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f52])).

fof(f145,plain,(
    v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f95])).

fof(f16,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ? [X1] :
          ( v4_pre_topc(X1,X0)
          & ~ v1_xboole_0(X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v4_pre_topc(X1,X0)
          & ~ v1_xboole_0(X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f45,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v4_pre_topc(X1,X0)
          & ~ v1_xboole_0(X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f44])).

fof(f78,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v4_pre_topc(X1,X0)
          & ~ v1_xboole_0(X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( v4_pre_topc(sK1(X0),X0)
        & ~ v1_xboole_0(sK1(X0))
        & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f79,plain,(
    ! [X0] :
      ( ( v4_pre_topc(sK1(X0),X0)
        & ~ v1_xboole_0(sK1(X0))
        & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f45,f78])).

fof(f115,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(sK1(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f79])).

fof(f11,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => ( ~ v1_subset_1(X1,X0)
           => ~ v1_xboole_0(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v1_xboole_0(X1)
          | v1_subset_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v1_xboole_0(X1)
          | v1_subset_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f38])).

fof(f109,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f160,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(X0))
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f109,f111])).

fof(f29,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v1_xboole_0(X1) )
         => ~ v3_tex_2(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v3_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f29])).

fof(f67,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v3_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f66])).

fof(f141,plain,(
    ! [X0,X1] :
      ( ~ v3_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f67])).

fof(f181,plain,(
    ! [X0,X1] :
      ( ~ v3_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f141,f111])).

fof(f149,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | v3_tex_2(sK5,sK4) ),
    inference(cnf_transformation,[],[f95])).

fof(f114,plain,(
    ! [X0] :
      ( m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f79])).

fof(f162,plain,(
    ! [X0] :
      ( m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f114,f111])).

fof(f2,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f97,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f35])).

fof(f98,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f96,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f130,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | ~ v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f84])).

fof(f172,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | ~ v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(X0)) ) ),
    inference(definition_unfolding,[],[f130,f111])).

fof(f190,plain,(
    ! [X1] :
      ( ~ v1_subset_1(X1,X1)
      | ~ m1_subset_1(X1,k9_setfam_1(X1)) ) ),
    inference(equality_resolution,[],[f172])).

fof(f23,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v1_tops_1(X1,X0)
          <=> u1_struct_0(X0) = k2_pre_topc(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tops_1(X1,X0)
          <=> u1_struct_0(X0) = k2_pre_topc(X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f83,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tops_1(X1,X0)
              | u1_struct_0(X0) != k2_pre_topc(X0,X1) )
            & ( u1_struct_0(X0) = k2_pre_topc(X0,X1)
              | ~ v1_tops_1(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f56])).

fof(f129,plain,(
    ! [X0,X1] :
      ( v1_tops_1(X1,X0)
      | u1_struct_0(X0) != k2_pre_topc(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f83])).

fof(f169,plain,(
    ! [X0,X1] :
      ( v1_tops_1(X1,X0)
      | u1_struct_0(X0) != k2_pre_topc(X0,X1)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f129,f111])).

fof(f28,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => v2_tex_2(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f28])).

fof(f65,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f64])).

fof(f140,plain,(
    ! [X0,X1] :
      ( v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f65])).

fof(f180,plain,(
    ! [X0,X1] :
      ( v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f140,f111])).

fof(f31,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( v2_tex_2(X1,X0)
              & v1_tops_1(X1,X0) )
           => v3_tex_2(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f70,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v3_tex_2(X1,X0)
          | ~ v2_tex_2(X1,X0)
          | ~ v1_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f31])).

fof(f71,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v3_tex_2(X1,X0)
          | ~ v2_tex_2(X1,X0)
          | ~ v1_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f70])).

fof(f143,plain,(
    ! [X0,X1] :
      ( v3_tex_2(X1,X0)
      | ~ v2_tex_2(X1,X0)
      | ~ v1_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f71])).

fof(f183,plain,(
    ! [X0,X1] :
      ( v3_tex_2(X1,X0)
      | ~ v2_tex_2(X1,X0)
      | ~ v1_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f143,f111])).

fof(f150,plain,
    ( v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ v3_tex_2(sK5,sK4) ),
    inference(cnf_transformation,[],[f95])).

fof(f8,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f106,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f10,axiom,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f108,plain,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0)) ),
    inference(cnf_transformation,[],[f10])).

fof(f151,plain,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_xboole_0) ),
    inference(definition_unfolding,[],[f108,f103])).

fof(f158,plain,(
    ! [X0] : m1_subset_1(k3_subset_1(X0,k1_xboole_0),k9_setfam_1(X0)) ),
    inference(definition_unfolding,[],[f106,f151,f111])).

fof(f6,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f104,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f156,plain,(
    ! [X0] : k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(definition_unfolding,[],[f104,f151])).

fof(f27,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ( v1_tdlat_3(X0)
      <=> ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => v3_pre_topc(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0] :
      ( ( v1_tdlat_3(X0)
      <=> ! [X1] :
            ( v3_pre_topc(X1,X0)
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f27])).

fof(f63,plain,(
    ! [X0] :
      ( ( v1_tdlat_3(X0)
      <=> ! [X1] :
            ( v3_pre_topc(X1,X0)
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f62])).

fof(f87,plain,(
    ! [X0] :
      ( ( ( v1_tdlat_3(X0)
          | ? [X1] :
              ( ~ v3_pre_topc(X1,X0)
              & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
        & ( ! [X1] :
              ( v3_pre_topc(X1,X0)
              | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ v1_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f63])).

fof(f88,plain,(
    ! [X0] :
      ( ( ( v1_tdlat_3(X0)
          | ? [X1] :
              ( ~ v3_pre_topc(X1,X0)
              & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
        & ( ! [X2] :
              ( v3_pre_topc(X2,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ v1_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(rectify,[],[f87])).

fof(f89,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ v3_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v3_pre_topc(sK3(X0),X0)
        & m1_subset_1(sK3(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f90,plain,(
    ! [X0] :
      ( ( ( v1_tdlat_3(X0)
          | ( ~ v3_pre_topc(sK3(X0),X0)
            & m1_subset_1(sK3(X0),k1_zfmisc_1(u1_struct_0(X0))) ) )
        & ( ! [X2] :
              ( v3_pre_topc(X2,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ v1_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f88,f89])).

fof(f137,plain,(
    ! [X2,X0] :
      ( v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v1_tdlat_3(X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f90])).

fof(f179,plain,(
    ! [X2,X0] :
      ( v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X2,k9_setfam_1(u1_struct_0(X0)))
      | ~ v1_tdlat_3(X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f137,f111])).

fof(f30,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( v3_tex_2(X1,X0)
              & v3_pre_topc(X1,X0) )
           => v1_tops_1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_tops_1(X1,X0)
          | ~ v3_tex_2(X1,X0)
          | ~ v3_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f30])).

fof(f69,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_tops_1(X1,X0)
          | ~ v3_tex_2(X1,X0)
          | ~ v3_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f68])).

fof(f142,plain,(
    ! [X0,X1] :
      ( v1_tops_1(X1,X0)
      | ~ v3_tex_2(X1,X0)
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f69])).

fof(f182,plain,(
    ! [X0,X1] :
      ( v1_tops_1(X1,X0)
      | ~ v3_tex_2(X1,X0)
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f142,f111])).

fof(f128,plain,(
    ! [X0,X1] :
      ( u1_struct_0(X0) = k2_pre_topc(X0,X1)
      | ~ v1_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f83])).

fof(f170,plain,(
    ! [X0,X1] :
      ( u1_struct_0(X0) = k2_pre_topc(X0,X1)
      | ~ v1_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f128,f111])).

cnf(c_49,negated_conjecture,
    ( v1_tdlat_3(sK4) ),
    inference(cnf_transformation,[],[f146])).

cnf(c_5475,plain,
    ( v1_tdlat_3(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_49])).

cnf(c_28,plain,
    ( ~ v1_tdlat_3(X0)
    | ~ l1_pre_topc(X0)
    | k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f126])).

cnf(c_5482,plain,
    ( k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0)
    | v1_tdlat_3(X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_6730,plain,
    ( k9_setfam_1(u1_struct_0(sK4)) = u1_pre_topc(sK4)
    | l1_pre_topc(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_5475,c_5482])).

cnf(c_48,negated_conjecture,
    ( l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f147])).

cnf(c_104,plain,
    ( ~ v1_tdlat_3(sK4)
    | ~ l1_pre_topc(sK4)
    | k9_setfam_1(u1_struct_0(sK4)) = u1_pre_topc(sK4) ),
    inference(instantiation,[status(thm)],[c_28])).

cnf(c_6850,plain,
    ( k9_setfam_1(u1_struct_0(sK4)) = u1_pre_topc(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6730,c_49,c_48,c_104])).

cnf(c_47,negated_conjecture,
    ( m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4))) ),
    inference(cnf_transformation,[],[f184])).

cnf(c_5477,plain,
    ( m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_47])).

cnf(c_6854,plain,
    ( m1_subset_1(sK5,u1_pre_topc(sK4)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_6850,c_5477])).

cnf(c_34,plain,
    ( ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(sK2(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f174])).

cnf(c_5481,plain,
    ( u1_struct_0(sK2(X0,X1)) = X1
    | m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_8011,plain,
    ( u1_struct_0(sK2(sK4,X0)) = X0
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_6850,c_5481])).

cnf(c_51,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f144])).

cnf(c_52,plain,
    ( v2_struct_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_51])).

cnf(c_55,plain,
    ( l1_pre_topc(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_48])).

cnf(c_8627,plain,
    ( u1_struct_0(sK2(sK4,X0)) = X0
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8011,c_52,c_55])).

cnf(c_8637,plain,
    ( u1_struct_0(sK2(sK4,sK5)) = sK5
    | v1_xboole_0(sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_6854,c_8627])).

cnf(c_8,plain,
    ( m1_subset_1(k1_xboole_0,k9_setfam_1(X0)) ),
    inference(cnf_transformation,[],[f157])).

cnf(c_5489,plain,
    ( m1_subset_1(k1_xboole_0,k9_setfam_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_31,plain,
    ( v1_subset_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f171])).

cnf(c_12,plain,
    ( ~ v1_subset_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(X1))
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f161])).

cnf(c_1471,plain,
    ( ~ m1_subset_1(X0,k9_setfam_1(X1))
    | ~ v1_xboole_0(X1)
    | X1 = X0 ),
    inference(resolution,[status(thm)],[c_31,c_12])).

cnf(c_5460,plain,
    ( X0 = X1
    | m1_subset_1(X1,k9_setfam_1(X0)) != iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1471])).

cnf(c_8425,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_5489,c_5460])).

cnf(c_9062,plain,
    ( u1_struct_0(sK2(sK4,sK5)) = sK5
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_8637,c_8425])).

cnf(c_35,plain,
    ( m1_pre_topc(sK2(X0,X1),X0)
    | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f175])).

cnf(c_5480,plain,
    ( m1_pre_topc(sK2(X0,X1),X0) = iProver_top
    | m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_8183,plain,
    ( m1_pre_topc(sK2(sK4,X0),sK4) = iProver_top
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_6850,c_5480])).

cnf(c_8859,plain,
    ( m1_pre_topc(sK2(sK4,X0),sK4) = iProver_top
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8183,c_52,c_55])).

cnf(c_19,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f164])).

cnf(c_26,plain,
    ( v1_borsuk_1(X0,X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f124])).

cnf(c_22,plain,
    ( ~ v1_borsuk_1(X0,X1)
    | v4_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f189])).

cnf(c_23,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f168])).

cnf(c_310,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v4_pre_topc(u1_struct_0(X0),X1)
    | ~ v1_borsuk_1(X0,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_22,c_23])).

cnf(c_311,plain,
    ( ~ v1_borsuk_1(X0,X1)
    | v4_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_310])).

cnf(c_785,plain,
    ( v4_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_26,c_311])).

cnf(c_24,plain,
    ( ~ v1_tdlat_3(X0)
    | v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f123])).

cnf(c_801,plain,
    ( v4_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_785,c_24])).

cnf(c_878,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,k9_setfam_1(u1_struct_0(X3)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X1)
    | X1 != X3
    | k2_pre_topc(X3,X2) = X2
    | u1_struct_0(X0) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_801])).

cnf(c_879,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,u1_struct_0(X0)) = u1_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_878])).

cnf(c_883,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,u1_struct_0(X0)) = u1_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_879,c_23])).

cnf(c_5470,plain,
    ( k2_pre_topc(X0,u1_struct_0(X1)) = u1_struct_0(X1)
    | m1_pre_topc(X1,X0) != iProver_top
    | v1_tdlat_3(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_883])).

cnf(c_12288,plain,
    ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,X0))) = u1_struct_0(sK2(sK4,X0))
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_tdlat_3(sK4) != iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_8859,c_5470])).

cnf(c_54,plain,
    ( v1_tdlat_3(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_49])).

cnf(c_15124,plain,
    ( m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | k2_pre_topc(sK4,u1_struct_0(sK2(sK4,X0))) = u1_struct_0(sK2(sK4,X0))
    | v1_xboole_0(X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_12288,c_52,c_54,c_55])).

cnf(c_15125,plain,
    ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,X0))) = u1_struct_0(sK2(sK4,X0))
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(renaming,[status(thm)],[c_15124])).

cnf(c_15134,plain,
    ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5))
    | v1_xboole_0(sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_6854,c_15125])).

cnf(c_50,negated_conjecture,
    ( v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f145])).

cnf(c_53,plain,
    ( v2_pre_topc(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_50])).

cnf(c_16,plain,
    ( v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(sK1(X0)) ),
    inference(cnf_transformation,[],[f115])).

cnf(c_131,plain,
    ( v2_struct_0(X0) = iProver_top
    | v2_pre_topc(X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_xboole_0(sK1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_133,plain,
    ( v2_struct_0(sK4) = iProver_top
    | v2_pre_topc(sK4) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v1_xboole_0(sK1(sK4)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_131])).

cnf(c_11,plain,
    ( v1_subset_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(X1))
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f160])).

cnf(c_42,plain,
    ( ~ v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f181])).

cnf(c_46,negated_conjecture,
    ( v3_tex_2(sK5,sK4)
    | ~ v1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f149])).

cnf(c_402,plain,
    ( v3_tex_2(sK5,sK4)
    | ~ v1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(prop_impl,[status(thm)],[c_46])).

cnf(c_1153,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_xboole_0(X0)
    | sK4 != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_42,c_402])).

cnf(c_1154,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
    | v2_struct_0(sK4)
    | ~ v2_pre_topc(sK4)
    | ~ l1_pre_topc(sK4)
    | ~ v1_xboole_0(sK5) ),
    inference(unflattening,[status(thm)],[c_1153])).

cnf(c_1156,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ v1_xboole_0(sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1154,c_51,c_50,c_48,c_47])).

cnf(c_1540,plain,
    ( ~ m1_subset_1(X0,k9_setfam_1(X1))
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | ~ v1_xboole_0(sK5)
    | u1_struct_0(sK4) != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_1156])).

cnf(c_1541,plain,
    ( ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
    | v1_xboole_0(u1_struct_0(sK4))
    | ~ v1_xboole_0(sK5) ),
    inference(unflattening,[status(thm)],[c_1540])).

cnf(c_1543,plain,
    ( v1_xboole_0(u1_struct_0(sK4))
    | ~ v1_xboole_0(sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1541,c_47])).

cnf(c_1545,plain,
    ( v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1543])).

cnf(c_2438,plain,
    ( m1_pre_topc(sK2(X0,X1),X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(X1)
    | k9_setfam_1(u1_struct_0(X0)) != k9_setfam_1(u1_struct_0(sK4))
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_35,c_47])).

cnf(c_2439,plain,
    ( m1_pre_topc(sK2(X0,sK5),X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(sK5)
    | k9_setfam_1(u1_struct_0(X0)) != k9_setfam_1(u1_struct_0(sK4)) ),
    inference(unflattening,[status(thm)],[c_2438])).

cnf(c_2440,plain,
    ( k9_setfam_1(u1_struct_0(X0)) != k9_setfam_1(u1_struct_0(sK4))
    | m1_pre_topc(sK2(X0,sK5),X0) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_xboole_0(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2439])).

cnf(c_2442,plain,
    ( k9_setfam_1(u1_struct_0(sK4)) != k9_setfam_1(u1_struct_0(sK4))
    | m1_pre_topc(sK2(sK4,sK5),sK4) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v1_xboole_0(sK5) = iProver_top ),
    inference(instantiation,[status(thm)],[c_2440])).

cnf(c_4767,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_6176,plain,
    ( k9_setfam_1(u1_struct_0(sK4)) = k9_setfam_1(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_4767])).

cnf(c_6742,plain,
    ( ~ m1_pre_topc(sK2(sK4,sK5),sK4)
    | ~ v1_tdlat_3(sK4)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4)
    | k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_883])).

cnf(c_6746,plain,
    ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5))
    | m1_pre_topc(sK2(sK4,sK5),sK4) != iProver_top
    | v1_tdlat_3(sK4) != iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6742])).

cnf(c_17,plain,
    ( m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f162])).

cnf(c_1264,plain,
    ( m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_50])).

cnf(c_1265,plain,
    ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4)))
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_1264])).

cnf(c_129,plain,
    ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4)))
    | v2_struct_0(sK4)
    | ~ v2_pre_topc(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_1267,plain,
    ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1265,c_51,c_50,c_48,c_129])).

cnf(c_5464,plain,
    ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1267])).

cnf(c_6853,plain,
    ( m1_subset_1(sK1(sK4),u1_pre_topc(sK4)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_6850,c_5464])).

cnf(c_8636,plain,
    ( u1_struct_0(sK2(sK4,sK1(sK4))) = sK1(sK4)
    | v1_xboole_0(sK1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_6853,c_8627])).

cnf(c_132,plain,
    ( v2_struct_0(sK4)
    | ~ v2_pre_topc(sK4)
    | ~ l1_pre_topc(sK4)
    | ~ v1_xboole_0(sK1(sK4)) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_5849,plain,
    ( ~ m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(sK1(X0))
    | u1_struct_0(sK2(X0,sK1(X0))) = sK1(X0) ),
    inference(instantiation,[status(thm)],[c_34])).

cnf(c_5851,plain,
    ( ~ m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4)))
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4)
    | v1_xboole_0(sK1(sK4))
    | u1_struct_0(sK2(sK4,sK1(sK4))) = sK1(sK4) ),
    inference(instantiation,[status(thm)],[c_5849])).

cnf(c_10780,plain,
    ( u1_struct_0(sK2(sK4,sK1(sK4))) = sK1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8636,c_51,c_50,c_48,c_129,c_132,c_5851])).

cnf(c_5484,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1))) = iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_7328,plain,
    ( m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(u1_struct_0(X0),u1_pre_topc(sK4)) = iProver_top
    | l1_pre_topc(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_6850,c_5484])).

cnf(c_7436,plain,
    ( m1_subset_1(u1_struct_0(X0),u1_pre_topc(sK4)) = iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7328,c_55])).

cnf(c_7437,plain,
    ( m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(u1_struct_0(X0),u1_pre_topc(sK4)) = iProver_top ),
    inference(renaming,[status(thm)],[c_7436])).

cnf(c_8428,plain,
    ( u1_struct_0(sK4) = X0
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6850,c_5460])).

cnf(c_8462,plain,
    ( u1_struct_0(X0) = u1_struct_0(sK4)
    | m1_pre_topc(X0,sK4) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7437,c_8428])).

cnf(c_9582,plain,
    ( u1_struct_0(sK2(sK4,X0)) = u1_struct_0(sK4)
    | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_8859,c_8462])).

cnf(c_12115,plain,
    ( u1_struct_0(sK2(sK4,u1_struct_0(X0))) = u1_struct_0(sK4)
    | m1_pre_topc(X0,sK4) != iProver_top
    | v1_xboole_0(u1_struct_0(X0)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7437,c_9582])).

cnf(c_4770,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_5984,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(u1_struct_0(sK4))
    | X0 != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_4770])).

cnf(c_6364,plain,
    ( v1_xboole_0(u1_struct_0(X0))
    | ~ v1_xboole_0(u1_struct_0(sK4))
    | u1_struct_0(X0) != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_5984])).

cnf(c_6366,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK4)
    | v1_xboole_0(u1_struct_0(X0)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6364])).

cnf(c_13881,plain,
    ( m1_pre_topc(X0,sK4) != iProver_top
    | v1_xboole_0(u1_struct_0(X0)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_12115,c_6366,c_8462])).

cnf(c_13889,plain,
    ( m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(u1_struct_0(sK2(sK4,X0))) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_8859,c_13881])).

cnf(c_13906,plain,
    ( m1_subset_1(sK1(sK4),u1_pre_topc(sK4)) != iProver_top
    | v1_xboole_0(sK1(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_10780,c_13889])).

cnf(c_15342,plain,
    ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_15134,c_52,c_53,c_54,c_55,c_56,c_133,c_1545,c_5873,c_6746,c_6853,c_13906])).

cnf(c_15346,plain,
    ( u1_struct_0(sK2(sK4,sK5)) = k2_pre_topc(sK4,sK5)
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_9062,c_15342])).

cnf(c_1,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_2,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_664,plain,
    ( ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_2])).

cnf(c_665,plain,
    ( ~ r1_tarski(X0,k1_xboole_0)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_664])).

cnf(c_5897,plain,
    ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_665])).

cnf(c_5899,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5897])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_5898,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_5901,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5898])).

cnf(c_6044,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(k1_xboole_0)
    | X0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_4770])).

cnf(c_9810,plain,
    ( v1_xboole_0(sK5)
    | ~ v1_xboole_0(k1_xboole_0)
    | sK5 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_6044])).

cnf(c_9821,plain,
    ( sK5 != k1_xboole_0
    | v1_xboole_0(sK5) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9810])).

cnf(c_15962,plain,
    ( u1_struct_0(sK2(sK4,sK5)) = k2_pre_topc(sK4,sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_15346,c_52,c_53,c_55,c_133,c_1545,c_5899,c_5901,c_6853,c_9821,c_13906])).

cnf(c_15976,plain,
    ( k2_pre_topc(sK4,sK5) = sK5
    | v1_xboole_0(sK5) = iProver_top ),
    inference(demodulation,[status(thm)],[c_15962,c_8637])).

cnf(c_17670,plain,
    ( k2_pre_topc(sK4,sK5) = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_15976,c_52,c_53,c_55,c_133,c_1545,c_6853,c_13906])).

cnf(c_32,plain,
    ( ~ v1_subset_1(X0,X0)
    | ~ m1_subset_1(X0,k9_setfam_1(X0)) ),
    inference(cnf_transformation,[],[f190])).

cnf(c_29,plain,
    ( v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) != u1_struct_0(X1) ),
    inference(cnf_transformation,[],[f169])).

cnf(c_41,plain,
    ( v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f180])).

cnf(c_44,plain,
    ( v3_tex_2(X0,X1)
    | ~ v2_tex_2(X0,X1)
    | ~ v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f183])).

cnf(c_709,plain,
    ( v3_tex_2(X0,X1)
    | ~ v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_41,c_44])).

cnf(c_727,plain,
    ( v3_tex_2(X0,X1)
    | ~ v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_709,c_24])).

cnf(c_1057,plain,
    ( v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) != u1_struct_0(X1) ),
    inference(resolution,[status(thm)],[c_29,c_727])).

cnf(c_45,negated_conjecture,
    ( ~ v3_tex_2(sK5,sK4)
    | v1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f150])).

cnf(c_404,plain,
    ( ~ v3_tex_2(sK5,sK4)
    | v1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(prop_impl,[status(thm)],[c_45])).

cnf(c_1125,plain,
    ( v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) != u1_struct_0(X1)
    | sK4 != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1057,c_404])).

cnf(c_1126,plain,
    ( v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
    | ~ v1_tdlat_3(sK4)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4)
    | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_1125])).

cnf(c_1128,plain,
    ( v1_subset_1(sK5,u1_struct_0(sK4))
    | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1126,c_51,c_49,c_48,c_47])).

cnf(c_1584,plain,
    ( ~ m1_subset_1(X0,k9_setfam_1(X0))
    | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
    | u1_struct_0(sK4) != X0
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_32,c_1128])).

cnf(c_1585,plain,
    ( ~ m1_subset_1(u1_struct_0(sK4),k9_setfam_1(u1_struct_0(sK4)))
    | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
    | sK5 != u1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_1584])).

cnf(c_5453,plain,
    ( k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
    | sK5 != u1_struct_0(sK4)
    | m1_subset_1(u1_struct_0(sK4),k9_setfam_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1585])).

cnf(c_9,plain,
    ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k9_setfam_1(X0)) ),
    inference(cnf_transformation,[],[f158])).

cnf(c_5488,plain,
    ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k9_setfam_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_7,plain,
    ( k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f156])).

cnf(c_5511,plain,
    ( m1_subset_1(X0,k9_setfam_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5488,c_7])).

cnf(c_5595,plain,
    ( k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
    | u1_struct_0(sK4) != sK5 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5453,c_5511])).

cnf(c_17685,plain,
    ( u1_struct_0(sK4) != sK5 ),
    inference(demodulation,[status(thm)],[c_17670,c_5595])).

cnf(c_40,plain,
    ( v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f179])).

cnf(c_43,plain,
    ( ~ v3_tex_2(X0,X1)
    | ~ v3_pre_topc(X0,X1)
    | v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f182])).

cnf(c_816,plain,
    ( ~ v3_tex_2(X0,X1)
    | v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_40,c_43])).

cnf(c_834,plain,
    ( ~ v3_tex_2(X0,X1)
    | v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_816,c_24])).

cnf(c_30,plain,
    ( ~ v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = u1_struct_0(X1) ),
    inference(cnf_transformation,[],[f170])).

cnf(c_1034,plain,
    ( ~ v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = u1_struct_0(X1) ),
    inference(resolution,[status(thm)],[c_834,c_30])).

cnf(c_1139,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
    | ~ v1_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = u1_struct_0(X1)
    | sK4 != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1034,c_402])).

cnf(c_1140,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
    | ~ v1_tdlat_3(sK4)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4)
    | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_1139])).

cnf(c_1142,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1140,c_51,c_49,c_48,c_47])).

cnf(c_1529,plain,
    ( ~ m1_subset_1(X0,k9_setfam_1(X1))
    | X1 = X0
    | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4)
    | u1_struct_0(sK4) != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_31,c_1142])).

cnf(c_1530,plain,
    ( ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
    | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4)
    | u1_struct_0(sK4) = sK5 ),
    inference(unflattening,[status(thm)],[c_1529])).

cnf(c_1532,plain,
    ( k2_pre_topc(sK4,sK5) = u1_struct_0(sK4)
    | u1_struct_0(sK4) = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1530,c_47])).

cnf(c_17687,plain,
    ( u1_struct_0(sK4) = sK5 ),
    inference(demodulation,[status(thm)],[c_17670,c_1532])).

cnf(c_17690,plain,
    ( sK5 != sK5 ),
    inference(light_normalisation,[status(thm)],[c_17685,c_17687])).

cnf(c_17691,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_17690])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n025.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 20:59:51 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running in FOF mode
% 3.85/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.85/0.99  
% 3.85/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.85/0.99  
% 3.85/0.99  ------  iProver source info
% 3.85/0.99  
% 3.85/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.85/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.85/0.99  git: non_committed_changes: false
% 3.85/0.99  git: last_make_outside_of_git: false
% 3.85/0.99  
% 3.85/0.99  ------ 
% 3.85/0.99  
% 3.85/0.99  ------ Input Options
% 3.85/0.99  
% 3.85/0.99  --out_options                           all
% 3.85/0.99  --tptp_safe_out                         true
% 3.85/0.99  --problem_path                          ""
% 3.85/0.99  --include_path                          ""
% 3.85/0.99  --clausifier                            res/vclausify_rel
% 3.85/0.99  --clausifier_options                    --mode clausify
% 3.85/0.99  --stdin                                 false
% 3.85/0.99  --stats_out                             all
% 3.85/0.99  
% 3.85/0.99  ------ General Options
% 3.85/0.99  
% 3.85/0.99  --fof                                   false
% 3.85/0.99  --time_out_real                         305.
% 3.85/0.99  --time_out_virtual                      -1.
% 3.85/0.99  --symbol_type_check                     false
% 3.85/0.99  --clausify_out                          false
% 3.85/0.99  --sig_cnt_out                           false
% 3.85/0.99  --trig_cnt_out                          false
% 3.85/0.99  --trig_cnt_out_tolerance                1.
% 3.85/0.99  --trig_cnt_out_sk_spl                   false
% 3.85/0.99  --abstr_cl_out                          false
% 3.85/0.99  
% 3.85/0.99  ------ Global Options
% 3.85/0.99  
% 3.85/0.99  --schedule                              default
% 3.85/0.99  --add_important_lit                     false
% 3.85/0.99  --prop_solver_per_cl                    1000
% 3.85/0.99  --min_unsat_core                        false
% 3.85/0.99  --soft_assumptions                      false
% 3.85/0.99  --soft_lemma_size                       3
% 3.85/0.99  --prop_impl_unit_size                   0
% 3.85/0.99  --prop_impl_unit                        []
% 3.85/0.99  --share_sel_clauses                     true
% 3.85/0.99  --reset_solvers                         false
% 3.85/0.99  --bc_imp_inh                            [conj_cone]
% 3.85/0.99  --conj_cone_tolerance                   3.
% 3.85/0.99  --extra_neg_conj                        none
% 3.85/0.99  --large_theory_mode                     true
% 3.85/0.99  --prolific_symb_bound                   200
% 3.85/0.99  --lt_threshold                          2000
% 3.85/0.99  --clause_weak_htbl                      true
% 3.85/0.99  --gc_record_bc_elim                     false
% 3.85/0.99  
% 3.85/0.99  ------ Preprocessing Options
% 3.85/0.99  
% 3.85/0.99  --preprocessing_flag                    true
% 3.85/0.99  --time_out_prep_mult                    0.1
% 3.85/0.99  --splitting_mode                        input
% 3.85/0.99  --splitting_grd                         true
% 3.85/0.99  --splitting_cvd                         false
% 3.85/0.99  --splitting_cvd_svl                     false
% 3.85/0.99  --splitting_nvd                         32
% 3.85/0.99  --sub_typing                            true
% 3.85/0.99  --prep_gs_sim                           true
% 3.85/0.99  --prep_unflatten                        true
% 3.85/0.99  --prep_res_sim                          true
% 3.85/0.99  --prep_upred                            true
% 3.85/0.99  --prep_sem_filter                       exhaustive
% 3.85/0.99  --prep_sem_filter_out                   false
% 3.85/0.99  --pred_elim                             true
% 3.85/0.99  --res_sim_input                         true
% 3.85/0.99  --eq_ax_congr_red                       true
% 3.85/0.99  --pure_diseq_elim                       true
% 3.85/0.99  --brand_transform                       false
% 3.85/0.99  --non_eq_to_eq                          false
% 3.85/0.99  --prep_def_merge                        true
% 3.85/0.99  --prep_def_merge_prop_impl              false
% 3.85/0.99  --prep_def_merge_mbd                    true
% 3.85/0.99  --prep_def_merge_tr_red                 false
% 3.85/0.99  --prep_def_merge_tr_cl                  false
% 3.85/0.99  --smt_preprocessing                     true
% 3.85/0.99  --smt_ac_axioms                         fast
% 3.85/0.99  --preprocessed_out                      false
% 3.85/0.99  --preprocessed_stats                    false
% 3.85/0.99  
% 3.85/0.99  ------ Abstraction refinement Options
% 3.85/0.99  
% 3.85/0.99  --abstr_ref                             []
% 3.85/0.99  --abstr_ref_prep                        false
% 3.85/0.99  --abstr_ref_until_sat                   false
% 3.85/0.99  --abstr_ref_sig_restrict                funpre
% 3.85/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.85/0.99  --abstr_ref_under                       []
% 3.85/0.99  
% 3.85/0.99  ------ SAT Options
% 3.85/0.99  
% 3.85/0.99  --sat_mode                              false
% 3.85/0.99  --sat_fm_restart_options                ""
% 3.85/0.99  --sat_gr_def                            false
% 3.85/0.99  --sat_epr_types                         true
% 3.85/0.99  --sat_non_cyclic_types                  false
% 3.85/0.99  --sat_finite_models                     false
% 3.85/0.99  --sat_fm_lemmas                         false
% 3.85/0.99  --sat_fm_prep                           false
% 3.85/0.99  --sat_fm_uc_incr                        true
% 3.85/0.99  --sat_out_model                         small
% 3.85/0.99  --sat_out_clauses                       false
% 3.85/0.99  
% 3.85/0.99  ------ QBF Options
% 3.85/0.99  
% 3.85/0.99  --qbf_mode                              false
% 3.85/0.99  --qbf_elim_univ                         false
% 3.85/0.99  --qbf_dom_inst                          none
% 3.85/0.99  --qbf_dom_pre_inst                      false
% 3.85/0.99  --qbf_sk_in                             false
% 3.85/0.99  --qbf_pred_elim                         true
% 3.85/0.99  --qbf_split                             512
% 3.85/0.99  
% 3.85/0.99  ------ BMC1 Options
% 3.85/0.99  
% 3.85/0.99  --bmc1_incremental                      false
% 3.85/0.99  --bmc1_axioms                           reachable_all
% 3.85/0.99  --bmc1_min_bound                        0
% 3.85/0.99  --bmc1_max_bound                        -1
% 3.85/0.99  --bmc1_max_bound_default                -1
% 3.85/0.99  --bmc1_symbol_reachability              true
% 3.85/0.99  --bmc1_property_lemmas                  false
% 3.85/0.99  --bmc1_k_induction                      false
% 3.85/0.99  --bmc1_non_equiv_states                 false
% 3.85/0.99  --bmc1_deadlock                         false
% 3.85/0.99  --bmc1_ucm                              false
% 3.85/0.99  --bmc1_add_unsat_core                   none
% 3.85/0.99  --bmc1_unsat_core_children              false
% 3.85/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.85/0.99  --bmc1_out_stat                         full
% 3.85/0.99  --bmc1_ground_init                      false
% 3.85/0.99  --bmc1_pre_inst_next_state              false
% 3.85/0.99  --bmc1_pre_inst_state                   false
% 3.85/0.99  --bmc1_pre_inst_reach_state             false
% 3.85/0.99  --bmc1_out_unsat_core                   false
% 3.85/0.99  --bmc1_aig_witness_out                  false
% 3.85/0.99  --bmc1_verbose                          false
% 3.85/0.99  --bmc1_dump_clauses_tptp                false
% 3.85/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.85/0.99  --bmc1_dump_file                        -
% 3.85/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.85/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.85/0.99  --bmc1_ucm_extend_mode                  1
% 3.85/0.99  --bmc1_ucm_init_mode                    2
% 3.85/0.99  --bmc1_ucm_cone_mode                    none
% 3.85/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.85/0.99  --bmc1_ucm_relax_model                  4
% 3.85/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.85/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.85/0.99  --bmc1_ucm_layered_model                none
% 3.85/0.99  --bmc1_ucm_max_lemma_size               10
% 3.85/0.99  
% 3.85/0.99  ------ AIG Options
% 3.85/0.99  
% 3.85/0.99  --aig_mode                              false
% 3.85/0.99  
% 3.85/0.99  ------ Instantiation Options
% 3.85/0.99  
% 3.85/0.99  --instantiation_flag                    true
% 3.85/0.99  --inst_sos_flag                         false
% 3.85/0.99  --inst_sos_phase                        true
% 3.85/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.85/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.85/0.99  --inst_lit_sel_side                     num_symb
% 3.85/0.99  --inst_solver_per_active                1400
% 3.85/0.99  --inst_solver_calls_frac                1.
% 3.85/0.99  --inst_passive_queue_type               priority_queues
% 3.85/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.85/0.99  --inst_passive_queues_freq              [25;2]
% 3.85/0.99  --inst_dismatching                      true
% 3.85/0.99  --inst_eager_unprocessed_to_passive     true
% 3.85/0.99  --inst_prop_sim_given                   true
% 3.85/0.99  --inst_prop_sim_new                     false
% 3.85/0.99  --inst_subs_new                         false
% 3.85/0.99  --inst_eq_res_simp                      false
% 3.85/0.99  --inst_subs_given                       false
% 3.85/0.99  --inst_orphan_elimination               true
% 3.85/0.99  --inst_learning_loop_flag               true
% 3.85/0.99  --inst_learning_start                   3000
% 3.85/0.99  --inst_learning_factor                  2
% 3.85/0.99  --inst_start_prop_sim_after_learn       3
% 3.85/0.99  --inst_sel_renew                        solver
% 3.85/0.99  --inst_lit_activity_flag                true
% 3.85/0.99  --inst_restr_to_given                   false
% 3.85/0.99  --inst_activity_threshold               500
% 3.85/0.99  --inst_out_proof                        true
% 3.85/0.99  
% 3.85/0.99  ------ Resolution Options
% 3.85/0.99  
% 3.85/0.99  --resolution_flag                       true
% 3.85/0.99  --res_lit_sel                           adaptive
% 3.85/0.99  --res_lit_sel_side                      none
% 3.85/0.99  --res_ordering                          kbo
% 3.85/0.99  --res_to_prop_solver                    active
% 3.85/0.99  --res_prop_simpl_new                    false
% 3.85/0.99  --res_prop_simpl_given                  true
% 3.85/0.99  --res_passive_queue_type                priority_queues
% 3.85/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.85/0.99  --res_passive_queues_freq               [15;5]
% 3.85/0.99  --res_forward_subs                      full
% 3.85/0.99  --res_backward_subs                     full
% 3.85/0.99  --res_forward_subs_resolution           true
% 3.85/0.99  --res_backward_subs_resolution          true
% 3.85/0.99  --res_orphan_elimination                true
% 3.85/0.99  --res_time_limit                        2.
% 3.85/0.99  --res_out_proof                         true
% 3.85/0.99  
% 3.85/0.99  ------ Superposition Options
% 3.85/0.99  
% 3.85/0.99  --superposition_flag                    true
% 3.85/0.99  --sup_passive_queue_type                priority_queues
% 3.85/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.85/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.85/0.99  --demod_completeness_check              fast
% 3.85/0.99  --demod_use_ground                      true
% 3.85/0.99  --sup_to_prop_solver                    passive
% 3.85/0.99  --sup_prop_simpl_new                    true
% 3.85/0.99  --sup_prop_simpl_given                  true
% 3.85/0.99  --sup_fun_splitting                     false
% 3.85/0.99  --sup_smt_interval                      50000
% 3.85/0.99  
% 3.85/0.99  ------ Superposition Simplification Setup
% 3.85/0.99  
% 3.85/0.99  --sup_indices_passive                   []
% 3.85/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.85/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.85/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.85/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.85/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.85/0.99  --sup_full_bw                           [BwDemod]
% 3.85/0.99  --sup_immed_triv                        [TrivRules]
% 3.85/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.85/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.85/0.99  --sup_immed_bw_main                     []
% 3.85/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.85/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.85/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.85/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.85/0.99  
% 3.85/0.99  ------ Combination Options
% 3.85/0.99  
% 3.85/0.99  --comb_res_mult                         3
% 3.85/0.99  --comb_sup_mult                         2
% 3.85/0.99  --comb_inst_mult                        10
% 3.85/0.99  
% 3.85/0.99  ------ Debug Options
% 3.85/0.99  
% 3.85/0.99  --dbg_backtrace                         false
% 3.85/0.99  --dbg_dump_prop_clauses                 false
% 3.85/0.99  --dbg_dump_prop_clauses_file            -
% 3.85/0.99  --dbg_out_stat                          false
% 3.85/0.99  ------ Parsing...
% 3.85/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.85/0.99  
% 3.85/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 3.85/0.99  
% 3.85/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.85/0.99  
% 3.85/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.85/0.99  ------ Proving...
% 3.85/0.99  ------ Problem Properties 
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  clauses                                 41
% 3.85/0.99  conjectures                             4
% 3.85/0.99  EPR                                     8
% 3.85/0.99  Horn                                    31
% 3.85/0.99  unary                                   11
% 3.85/0.99  binary                                  9
% 3.85/0.99  lits                                    111
% 3.85/0.99  lits eq                                 22
% 3.85/0.99  fd_pure                                 0
% 3.85/0.99  fd_pseudo                               0
% 3.85/0.99  fd_cond                                 0
% 3.85/0.99  fd_pseudo_cond                          2
% 3.85/0.99  AC symbols                              0
% 3.85/0.99  
% 3.85/0.99  ------ Schedule dynamic 5 is on 
% 3.85/0.99  
% 3.85/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  ------ 
% 3.85/0.99  Current options:
% 3.85/0.99  ------ 
% 3.85/0.99  
% 3.85/0.99  ------ Input Options
% 3.85/0.99  
% 3.85/0.99  --out_options                           all
% 3.85/0.99  --tptp_safe_out                         true
% 3.85/0.99  --problem_path                          ""
% 3.85/0.99  --include_path                          ""
% 3.85/0.99  --clausifier                            res/vclausify_rel
% 3.85/0.99  --clausifier_options                    --mode clausify
% 3.85/0.99  --stdin                                 false
% 3.85/0.99  --stats_out                             all
% 3.85/0.99  
% 3.85/0.99  ------ General Options
% 3.85/0.99  
% 3.85/0.99  --fof                                   false
% 3.85/0.99  --time_out_real                         305.
% 3.85/0.99  --time_out_virtual                      -1.
% 3.85/0.99  --symbol_type_check                     false
% 3.85/0.99  --clausify_out                          false
% 3.85/0.99  --sig_cnt_out                           false
% 3.85/0.99  --trig_cnt_out                          false
% 3.85/0.99  --trig_cnt_out_tolerance                1.
% 3.85/0.99  --trig_cnt_out_sk_spl                   false
% 3.85/0.99  --abstr_cl_out                          false
% 3.85/0.99  
% 3.85/0.99  ------ Global Options
% 3.85/0.99  
% 3.85/0.99  --schedule                              default
% 3.85/0.99  --add_important_lit                     false
% 3.85/0.99  --prop_solver_per_cl                    1000
% 3.85/0.99  --min_unsat_core                        false
% 3.85/0.99  --soft_assumptions                      false
% 3.85/0.99  --soft_lemma_size                       3
% 3.85/0.99  --prop_impl_unit_size                   0
% 3.85/0.99  --prop_impl_unit                        []
% 3.85/0.99  --share_sel_clauses                     true
% 3.85/0.99  --reset_solvers                         false
% 3.85/0.99  --bc_imp_inh                            [conj_cone]
% 3.85/0.99  --conj_cone_tolerance                   3.
% 3.85/0.99  --extra_neg_conj                        none
% 3.85/0.99  --large_theory_mode                     true
% 3.85/0.99  --prolific_symb_bound                   200
% 3.85/0.99  --lt_threshold                          2000
% 3.85/0.99  --clause_weak_htbl                      true
% 3.85/0.99  --gc_record_bc_elim                     false
% 3.85/0.99  
% 3.85/0.99  ------ Preprocessing Options
% 3.85/0.99  
% 3.85/0.99  --preprocessing_flag                    true
% 3.85/0.99  --time_out_prep_mult                    0.1
% 3.85/0.99  --splitting_mode                        input
% 3.85/0.99  --splitting_grd                         true
% 3.85/0.99  --splitting_cvd                         false
% 3.85/0.99  --splitting_cvd_svl                     false
% 3.85/0.99  --splitting_nvd                         32
% 3.85/0.99  --sub_typing                            true
% 3.85/0.99  --prep_gs_sim                           true
% 3.85/0.99  --prep_unflatten                        true
% 3.85/0.99  --prep_res_sim                          true
% 3.85/0.99  --prep_upred                            true
% 3.85/0.99  --prep_sem_filter                       exhaustive
% 3.85/0.99  --prep_sem_filter_out                   false
% 3.85/0.99  --pred_elim                             true
% 3.85/0.99  --res_sim_input                         true
% 3.85/0.99  --eq_ax_congr_red                       true
% 3.85/0.99  --pure_diseq_elim                       true
% 3.85/0.99  --brand_transform                       false
% 3.85/0.99  --non_eq_to_eq                          false
% 3.85/0.99  --prep_def_merge                        true
% 3.85/0.99  --prep_def_merge_prop_impl              false
% 3.85/0.99  --prep_def_merge_mbd                    true
% 3.85/0.99  --prep_def_merge_tr_red                 false
% 3.85/0.99  --prep_def_merge_tr_cl                  false
% 3.85/0.99  --smt_preprocessing                     true
% 3.85/0.99  --smt_ac_axioms                         fast
% 3.85/0.99  --preprocessed_out                      false
% 3.85/0.99  --preprocessed_stats                    false
% 3.85/0.99  
% 3.85/0.99  ------ Abstraction refinement Options
% 3.85/0.99  
% 3.85/0.99  --abstr_ref                             []
% 3.85/0.99  --abstr_ref_prep                        false
% 3.85/0.99  --abstr_ref_until_sat                   false
% 3.85/0.99  --abstr_ref_sig_restrict                funpre
% 3.85/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.85/0.99  --abstr_ref_under                       []
% 3.85/0.99  
% 3.85/0.99  ------ SAT Options
% 3.85/0.99  
% 3.85/0.99  --sat_mode                              false
% 3.85/0.99  --sat_fm_restart_options                ""
% 3.85/0.99  --sat_gr_def                            false
% 3.85/0.99  --sat_epr_types                         true
% 3.85/0.99  --sat_non_cyclic_types                  false
% 3.85/0.99  --sat_finite_models                     false
% 3.85/0.99  --sat_fm_lemmas                         false
% 3.85/0.99  --sat_fm_prep                           false
% 3.85/0.99  --sat_fm_uc_incr                        true
% 3.85/0.99  --sat_out_model                         small
% 3.85/0.99  --sat_out_clauses                       false
% 3.85/0.99  
% 3.85/0.99  ------ QBF Options
% 3.85/0.99  
% 3.85/0.99  --qbf_mode                              false
% 3.85/0.99  --qbf_elim_univ                         false
% 3.85/0.99  --qbf_dom_inst                          none
% 3.85/0.99  --qbf_dom_pre_inst                      false
% 3.85/0.99  --qbf_sk_in                             false
% 3.85/0.99  --qbf_pred_elim                         true
% 3.85/0.99  --qbf_split                             512
% 3.85/0.99  
% 3.85/0.99  ------ BMC1 Options
% 3.85/0.99  
% 3.85/0.99  --bmc1_incremental                      false
% 3.85/0.99  --bmc1_axioms                           reachable_all
% 3.85/0.99  --bmc1_min_bound                        0
% 3.85/0.99  --bmc1_max_bound                        -1
% 3.85/0.99  --bmc1_max_bound_default                -1
% 3.85/0.99  --bmc1_symbol_reachability              true
% 3.85/0.99  --bmc1_property_lemmas                  false
% 3.85/0.99  --bmc1_k_induction                      false
% 3.85/0.99  --bmc1_non_equiv_states                 false
% 3.85/0.99  --bmc1_deadlock                         false
% 3.85/0.99  --bmc1_ucm                              false
% 3.85/0.99  --bmc1_add_unsat_core                   none
% 3.85/0.99  --bmc1_unsat_core_children              false
% 3.85/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.85/0.99  --bmc1_out_stat                         full
% 3.85/0.99  --bmc1_ground_init                      false
% 3.85/0.99  --bmc1_pre_inst_next_state              false
% 3.85/0.99  --bmc1_pre_inst_state                   false
% 3.85/0.99  --bmc1_pre_inst_reach_state             false
% 3.85/0.99  --bmc1_out_unsat_core                   false
% 3.85/0.99  --bmc1_aig_witness_out                  false
% 3.85/0.99  --bmc1_verbose                          false
% 3.85/0.99  --bmc1_dump_clauses_tptp                false
% 3.85/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.85/0.99  --bmc1_dump_file                        -
% 3.85/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.85/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.85/0.99  --bmc1_ucm_extend_mode                  1
% 3.85/0.99  --bmc1_ucm_init_mode                    2
% 3.85/0.99  --bmc1_ucm_cone_mode                    none
% 3.85/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.85/0.99  --bmc1_ucm_relax_model                  4
% 3.85/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.85/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.85/0.99  --bmc1_ucm_layered_model                none
% 3.85/0.99  --bmc1_ucm_max_lemma_size               10
% 3.85/0.99  
% 3.85/0.99  ------ AIG Options
% 3.85/0.99  
% 3.85/0.99  --aig_mode                              false
% 3.85/0.99  
% 3.85/0.99  ------ Instantiation Options
% 3.85/0.99  
% 3.85/0.99  --instantiation_flag                    true
% 3.85/0.99  --inst_sos_flag                         false
% 3.85/0.99  --inst_sos_phase                        true
% 3.85/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.85/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.85/0.99  --inst_lit_sel_side                     none
% 3.85/0.99  --inst_solver_per_active                1400
% 3.85/0.99  --inst_solver_calls_frac                1.
% 3.85/0.99  --inst_passive_queue_type               priority_queues
% 3.85/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.85/0.99  --inst_passive_queues_freq              [25;2]
% 3.85/0.99  --inst_dismatching                      true
% 3.85/0.99  --inst_eager_unprocessed_to_passive     true
% 3.85/0.99  --inst_prop_sim_given                   true
% 3.85/0.99  --inst_prop_sim_new                     false
% 3.85/0.99  --inst_subs_new                         false
% 3.85/0.99  --inst_eq_res_simp                      false
% 3.85/0.99  --inst_subs_given                       false
% 3.85/0.99  --inst_orphan_elimination               true
% 3.85/0.99  --inst_learning_loop_flag               true
% 3.85/0.99  --inst_learning_start                   3000
% 3.85/0.99  --inst_learning_factor                  2
% 3.85/0.99  --inst_start_prop_sim_after_learn       3
% 3.85/0.99  --inst_sel_renew                        solver
% 3.85/0.99  --inst_lit_activity_flag                true
% 3.85/0.99  --inst_restr_to_given                   false
% 3.85/0.99  --inst_activity_threshold               500
% 3.85/0.99  --inst_out_proof                        true
% 3.85/0.99  
% 3.85/0.99  ------ Resolution Options
% 3.85/0.99  
% 3.85/0.99  --resolution_flag                       false
% 3.85/0.99  --res_lit_sel                           adaptive
% 3.85/0.99  --res_lit_sel_side                      none
% 3.85/0.99  --res_ordering                          kbo
% 3.85/0.99  --res_to_prop_solver                    active
% 3.85/0.99  --res_prop_simpl_new                    false
% 3.85/0.99  --res_prop_simpl_given                  true
% 3.85/0.99  --res_passive_queue_type                priority_queues
% 3.85/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.85/0.99  --res_passive_queues_freq               [15;5]
% 3.85/0.99  --res_forward_subs                      full
% 3.85/0.99  --res_backward_subs                     full
% 3.85/0.99  --res_forward_subs_resolution           true
% 3.85/0.99  --res_backward_subs_resolution          true
% 3.85/0.99  --res_orphan_elimination                true
% 3.85/0.99  --res_time_limit                        2.
% 3.85/0.99  --res_out_proof                         true
% 3.85/0.99  
% 3.85/0.99  ------ Superposition Options
% 3.85/0.99  
% 3.85/0.99  --superposition_flag                    true
% 3.85/0.99  --sup_passive_queue_type                priority_queues
% 3.85/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.85/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.85/0.99  --demod_completeness_check              fast
% 3.85/0.99  --demod_use_ground                      true
% 3.85/0.99  --sup_to_prop_solver                    passive
% 3.85/0.99  --sup_prop_simpl_new                    true
% 3.85/0.99  --sup_prop_simpl_given                  true
% 3.85/0.99  --sup_fun_splitting                     false
% 3.85/0.99  --sup_smt_interval                      50000
% 3.85/0.99  
% 3.85/0.99  ------ Superposition Simplification Setup
% 3.85/0.99  
% 3.85/0.99  --sup_indices_passive                   []
% 3.85/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.85/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.85/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.85/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.85/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.85/0.99  --sup_full_bw                           [BwDemod]
% 3.85/0.99  --sup_immed_triv                        [TrivRules]
% 3.85/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.85/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.85/0.99  --sup_immed_bw_main                     []
% 3.85/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.85/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.85/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.85/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.85/0.99  
% 3.85/0.99  ------ Combination Options
% 3.85/0.99  
% 3.85/0.99  --comb_res_mult                         3
% 3.85/0.99  --comb_sup_mult                         2
% 3.85/0.99  --comb_inst_mult                        10
% 3.85/0.99  
% 3.85/0.99  ------ Debug Options
% 3.85/0.99  
% 3.85/0.99  --dbg_backtrace                         false
% 3.85/0.99  --dbg_dump_prop_clauses                 false
% 3.85/0.99  --dbg_dump_prop_clauses_file            -
% 3.85/0.99  --dbg_out_stat                          false
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  ------ Proving...
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  % SZS status Theorem for theBenchmark.p
% 3.85/0.99  
% 3.85/0.99   Resolution empty clause
% 3.85/0.99  
% 3.85/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.85/0.99  
% 3.85/0.99  fof(f32,conjecture,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tex_2(X1,X0) <=> ~v1_subset_1(X1,u1_struct_0(X0)))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f33,negated_conjecture,(
% 3.85/0.99    ~! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tex_2(X1,X0) <=> ~v1_subset_1(X1,u1_struct_0(X0)))))),
% 3.85/0.99    inference(negated_conjecture,[],[f32])).
% 3.85/0.99  
% 3.85/0.99  fof(f72,plain,(
% 3.85/0.99    ? [X0] : (? [X1] : ((v3_tex_2(X1,X0) <~> ~v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f33])).
% 3.85/0.99  
% 3.85/0.99  fof(f73,plain,(
% 3.85/0.99    ? [X0] : (? [X1] : ((v3_tex_2(X1,X0) <~> ~v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f72])).
% 3.85/0.99  
% 3.85/0.99  fof(f91,plain,(
% 3.85/0.99    ? [X0] : (? [X1] : (((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.85/0.99    inference(nnf_transformation,[],[f73])).
% 3.85/0.99  
% 3.85/0.99  fof(f92,plain,(
% 3.85/0.99    ? [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f91])).
% 3.85/0.99  
% 3.85/0.99  fof(f94,plain,(
% 3.85/0.99    ( ! [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => ((v1_subset_1(sK5,u1_struct_0(X0)) | ~v3_tex_2(sK5,X0)) & (~v1_subset_1(sK5,u1_struct_0(X0)) | v3_tex_2(sK5,X0)) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.85/0.99    introduced(choice_axiom,[])).
% 3.85/0.99  
% 3.85/0.99  fof(f93,plain,(
% 3.85/0.99    ? [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((v1_subset_1(X1,u1_struct_0(sK4)) | ~v3_tex_2(X1,sK4)) & (~v1_subset_1(X1,u1_struct_0(sK4)) | v3_tex_2(X1,sK4)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4)))) & l1_pre_topc(sK4) & v1_tdlat_3(sK4) & v2_pre_topc(sK4) & ~v2_struct_0(sK4))),
% 3.85/0.99    introduced(choice_axiom,[])).
% 3.85/0.99  
% 3.85/0.99  fof(f95,plain,(
% 3.85/0.99    ((v1_subset_1(sK5,u1_struct_0(sK4)) | ~v3_tex_2(sK5,sK4)) & (~v1_subset_1(sK5,u1_struct_0(sK4)) | v3_tex_2(sK5,sK4)) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))) & l1_pre_topc(sK4) & v1_tdlat_3(sK4) & v2_pre_topc(sK4) & ~v2_struct_0(sK4)),
% 3.85/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f92,f94,f93])).
% 3.85/0.99  
% 3.85/0.99  fof(f146,plain,(
% 3.85/0.99    v1_tdlat_3(sK4)),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f22,axiom,(
% 3.85/0.99    ! [X0] : (l1_pre_topc(X0) => (v1_tdlat_3(X0) <=> k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0)))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f55,plain,(
% 3.85/0.99    ! [X0] : ((v1_tdlat_3(X0) <=> k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0)) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f22])).
% 3.85/0.99  
% 3.85/0.99  fof(f82,plain,(
% 3.85/0.99    ! [X0] : (((v1_tdlat_3(X0) | k9_setfam_1(u1_struct_0(X0)) != u1_pre_topc(X0)) & (k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0) | ~v1_tdlat_3(X0))) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(nnf_transformation,[],[f55])).
% 3.85/0.99  
% 3.85/0.99  fof(f126,plain,(
% 3.85/0.99    ( ! [X0] : (k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f82])).
% 3.85/0.99  
% 3.85/0.99  fof(f147,plain,(
% 3.85/0.99    l1_pre_topc(sK4)),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f148,plain,(
% 3.85/0.99    m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f13,axiom,(
% 3.85/0.99    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0)),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f111,plain,(
% 3.85/0.99    ( ! [X0] : (k1_zfmisc_1(X0) = k9_setfam_1(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f13])).
% 3.85/0.99  
% 3.85/0.99  fof(f184,plain,(
% 3.85/0.99    m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))),
% 3.85/0.99    inference(definition_unfolding,[],[f148,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f26,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_pre_topc(X2) & ~v2_struct_0(X2))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f60,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_pre_topc(X2) & ~v2_struct_0(X2)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1))) | (~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f26])).
% 3.85/0.99  
% 3.85/0.99  fof(f61,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_pre_topc(X2) & ~v2_struct_0(X2)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f60])).
% 3.85/0.99  
% 3.85/0.99  fof(f85,plain,(
% 3.85/0.99    ! [X1,X0] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_pre_topc(X2) & ~v2_struct_0(X2)) => (u1_struct_0(sK2(X0,X1)) = X1 & m1_pre_topc(sK2(X0,X1),X0) & v1_pre_topc(sK2(X0,X1)) & ~v2_struct_0(sK2(X0,X1))))),
% 3.85/0.99    introduced(choice_axiom,[])).
% 3.85/0.99  
% 3.85/0.99  fof(f86,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((u1_struct_0(sK2(X0,X1)) = X1 & m1_pre_topc(sK2(X0,X1),X0) & v1_pre_topc(sK2(X0,X1)) & ~v2_struct_0(sK2(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f61,f85])).
% 3.85/0.99  
% 3.85/0.99  fof(f136,plain,(
% 3.85/0.99    ( ! [X0,X1] : (u1_struct_0(sK2(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f86])).
% 3.85/0.99  
% 3.85/0.99  fof(f174,plain,(
% 3.85/0.99    ( ! [X0,X1] : (u1_struct_0(sK2(X0,X1)) = X1 | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f136,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f144,plain,(
% 3.85/0.99    ~v2_struct_0(sK4)),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f7,axiom,(
% 3.85/0.99    ! [X0] : m1_subset_1(k1_subset_1(X0),k1_zfmisc_1(X0))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f105,plain,(
% 3.85/0.99    ( ! [X0] : (m1_subset_1(k1_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.85/0.99    inference(cnf_transformation,[],[f7])).
% 3.85/0.99  
% 3.85/0.99  fof(f5,axiom,(
% 3.85/0.99    ! [X0] : k1_xboole_0 = k1_subset_1(X0)),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f103,plain,(
% 3.85/0.99    ( ! [X0] : (k1_xboole_0 = k1_subset_1(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f5])).
% 3.85/0.99  
% 3.85/0.99  fof(f157,plain,(
% 3.85/0.99    ( ! [X0] : (m1_subset_1(k1_xboole_0,k9_setfam_1(X0))) )),
% 3.85/0.99    inference(definition_unfolding,[],[f105,f103,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f24,axiom,(
% 3.85/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (v1_subset_1(X1,X0) <=> X0 != X1))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f57,plain,(
% 3.85/0.99    ! [X0,X1] : ((v1_subset_1(X1,X0) <=> X0 != X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f24])).
% 3.85/0.99  
% 3.85/0.99  fof(f84,plain,(
% 3.85/0.99    ! [X0,X1] : (((v1_subset_1(X1,X0) | X0 = X1) & (X0 != X1 | ~v1_subset_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.85/0.99    inference(nnf_transformation,[],[f57])).
% 3.85/0.99  
% 3.85/0.99  fof(f131,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_subset_1(X1,X0) | X0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.85/0.99    inference(cnf_transformation,[],[f84])).
% 3.85/0.99  
% 3.85/0.99  fof(f171,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_subset_1(X1,X0) | X0 = X1 | ~m1_subset_1(X1,k9_setfam_1(X0))) )),
% 3.85/0.99    inference(definition_unfolding,[],[f131,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f12,axiom,(
% 3.85/0.99    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ~v1_subset_1(X1,X0)))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f40,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (~v1_subset_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f12])).
% 3.85/0.99  
% 3.85/0.99  fof(f110,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~v1_subset_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f40])).
% 3.85/0.99  
% 3.85/0.99  fof(f161,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~v1_subset_1(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(X0)) | ~v1_xboole_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f110,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f135,plain,(
% 3.85/0.99    ( ! [X0,X1] : (m1_pre_topc(sK2(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f86])).
% 3.85/0.99  
% 3.85/0.99  fof(f175,plain,(
% 3.85/0.99    ( ! [X0,X1] : (m1_pre_topc(sK2(X0,X1),X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f135,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f17,axiom,(
% 3.85/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f46,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | (k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0))) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f17])).
% 3.85/0.99  
% 3.85/0.99  fof(f47,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0)) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(flattening,[],[f46])).
% 3.85/0.99  
% 3.85/0.99  fof(f117,plain,(
% 3.85/0.99    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f47])).
% 3.85/0.99  
% 3.85/0.99  fof(f164,plain,(
% 3.85/0.99    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f117,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f21,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => (v1_tdlat_3(X1) & v1_tsep_1(X1,X0) & v1_borsuk_1(X1,X0))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f34,plain,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => (v1_tdlat_3(X1) & v1_borsuk_1(X1,X0))))),
% 3.85/0.99    inference(pure_predicate_removal,[],[f21])).
% 3.85/0.99  
% 3.85/0.99  fof(f53,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((v1_tdlat_3(X1) & v1_borsuk_1(X1,X0)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f34])).
% 3.85/0.99  
% 3.85/0.99  fof(f54,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((v1_tdlat_3(X1) & v1_borsuk_1(X1,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f53])).
% 3.85/0.99  
% 3.85/0.99  fof(f124,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_borsuk_1(X1,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f54])).
% 3.85/0.99  
% 3.85/0.99  fof(f18,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => ((m1_pre_topc(X1,X0) & v1_borsuk_1(X1,X0)) <=> v4_pre_topc(X2,X0))))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f48,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_borsuk_1(X1,X0)) <=> v4_pre_topc(X2,X0)) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f18])).
% 3.85/0.99  
% 3.85/0.99  fof(f49,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (! [X2] : (((m1_pre_topc(X1,X0) & v1_borsuk_1(X1,X0)) <=> v4_pre_topc(X2,X0)) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(flattening,[],[f48])).
% 3.85/0.99  
% 3.85/0.99  fof(f80,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_borsuk_1(X1,X0)) | ~v4_pre_topc(X2,X0)) & (v4_pre_topc(X2,X0) | (~m1_pre_topc(X1,X0) | ~v1_borsuk_1(X1,X0)))) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(nnf_transformation,[],[f49])).
% 3.85/0.99  
% 3.85/0.99  fof(f81,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_borsuk_1(X1,X0)) | ~v4_pre_topc(X2,X0)) & (v4_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_borsuk_1(X1,X0))) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(flattening,[],[f80])).
% 3.85/0.99  
% 3.85/0.99  fof(f119,plain,(
% 3.85/0.99    ( ! [X2,X0,X1] : (v4_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_borsuk_1(X1,X0) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f81])).
% 3.85/0.99  
% 3.85/0.99  fof(f167,plain,(
% 3.85/0.99    ( ! [X2,X0,X1] : (v4_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_borsuk_1(X1,X0) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k9_setfam_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f119,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f189,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v4_pre_topc(u1_struct_0(X1),X0) | ~m1_pre_topc(X1,X0) | ~v1_borsuk_1(X1,X0) | ~m1_subset_1(u1_struct_0(X1),k9_setfam_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.85/0.99    inference(equality_resolution,[],[f167])).
% 3.85/0.99  
% 3.85/0.99  fof(f19,axiom,(
% 3.85/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f50,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f19])).
% 3.85/0.99  
% 3.85/0.99  fof(f122,plain,(
% 3.85/0.99    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f50])).
% 3.85/0.99  
% 3.85/0.99  fof(f168,plain,(
% 3.85/0.99    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k9_setfam_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f122,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f20,axiom,(
% 3.85/0.99    ! [X0] : (l1_pre_topc(X0) => (v1_tdlat_3(X0) => v2_pre_topc(X0)))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f51,plain,(
% 3.85/0.99    ! [X0] : ((v2_pre_topc(X0) | ~v1_tdlat_3(X0)) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f20])).
% 3.85/0.99  
% 3.85/0.99  fof(f52,plain,(
% 3.85/0.99    ! [X0] : (v2_pre_topc(X0) | ~v1_tdlat_3(X0) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(flattening,[],[f51])).
% 3.85/0.99  
% 3.85/0.99  fof(f123,plain,(
% 3.85/0.99    ( ! [X0] : (v2_pre_topc(X0) | ~v1_tdlat_3(X0) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f52])).
% 3.85/0.99  
% 3.85/0.99  fof(f145,plain,(
% 3.85/0.99    v2_pre_topc(sK4)),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f16,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ? [X1] : (v4_pre_topc(X1,X0) & ~v1_xboole_0(X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f44,plain,(
% 3.85/0.99    ! [X0] : (? [X1] : (v4_pre_topc(X1,X0) & ~v1_xboole_0(X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f16])).
% 3.85/0.99  
% 3.85/0.99  fof(f45,plain,(
% 3.85/0.99    ! [X0] : (? [X1] : (v4_pre_topc(X1,X0) & ~v1_xboole_0(X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f44])).
% 3.85/0.99  
% 3.85/0.99  fof(f78,plain,(
% 3.85/0.99    ! [X0] : (? [X1] : (v4_pre_topc(X1,X0) & ~v1_xboole_0(X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (v4_pre_topc(sK1(X0),X0) & ~v1_xboole_0(sK1(X0)) & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.85/0.99    introduced(choice_axiom,[])).
% 3.85/0.99  
% 3.85/0.99  fof(f79,plain,(
% 3.85/0.99    ! [X0] : ((v4_pre_topc(sK1(X0),X0) & ~v1_xboole_0(sK1(X0)) & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f45,f78])).
% 3.85/0.99  
% 3.85/0.99  fof(f115,plain,(
% 3.85/0.99    ( ! [X0] : (~v1_xboole_0(sK1(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f79])).
% 3.85/0.99  
% 3.85/0.99  fof(f11,axiom,(
% 3.85/0.99    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (~v1_subset_1(X1,X0) => ~v1_xboole_0(X1))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f38,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((~v1_xboole_0(X1) | v1_subset_1(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | v1_xboole_0(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f11])).
% 3.85/0.99  
% 3.85/0.99  fof(f39,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (~v1_xboole_0(X1) | v1_subset_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | v1_xboole_0(X0))),
% 3.85/0.99    inference(flattening,[],[f38])).
% 3.85/0.99  
% 3.85/0.99  fof(f109,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~v1_xboole_0(X1) | v1_subset_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | v1_xboole_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f39])).
% 3.85/0.99  
% 3.85/0.99  fof(f160,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~v1_xboole_0(X1) | v1_subset_1(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(X0)) | v1_xboole_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f109,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f29,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => ~v3_tex_2(X1,X0)))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f66,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (~v3_tex_2(X1,X0) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v1_xboole_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f29])).
% 3.85/0.99  
% 3.85/0.99  fof(f67,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (~v3_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v1_xboole_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f66])).
% 3.85/0.99  
% 3.85/0.99  fof(f141,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~v3_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f67])).
% 3.85/0.99  
% 3.85/0.99  fof(f181,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~v3_tex_2(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f141,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f149,plain,(
% 3.85/0.99    ~v1_subset_1(sK5,u1_struct_0(sK4)) | v3_tex_2(sK5,sK4)),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f114,plain,(
% 3.85/0.99    ( ! [X0] : (m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f79])).
% 3.85/0.99  
% 3.85/0.99  fof(f162,plain,(
% 3.85/0.99    ( ! [X0] : (m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f114,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f2,axiom,(
% 3.85/0.99    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f97,plain,(
% 3.85/0.99    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f2])).
% 3.85/0.99  
% 3.85/0.99  fof(f3,axiom,(
% 3.85/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f35,plain,(
% 3.85/0.99    ! [X0,X1] : ((~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0)) | v1_xboole_0(X1))),
% 3.85/0.99    inference(ennf_transformation,[],[f3])).
% 3.85/0.99  
% 3.85/0.99  fof(f36,plain,(
% 3.85/0.99    ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1))),
% 3.85/0.99    inference(flattening,[],[f35])).
% 3.85/0.99  
% 3.85/0.99  fof(f98,plain,(
% 3.85/0.99    ( ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f36])).
% 3.85/0.99  
% 3.85/0.99  fof(f1,axiom,(
% 3.85/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f96,plain,(
% 3.85/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f1])).
% 3.85/0.99  
% 3.85/0.99  fof(f130,plain,(
% 3.85/0.99    ( ! [X0,X1] : (X0 != X1 | ~v1_subset_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.85/0.99    inference(cnf_transformation,[],[f84])).
% 3.85/0.99  
% 3.85/0.99  fof(f172,plain,(
% 3.85/0.99    ( ! [X0,X1] : (X0 != X1 | ~v1_subset_1(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(X0))) )),
% 3.85/0.99    inference(definition_unfolding,[],[f130,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f190,plain,(
% 3.85/0.99    ( ! [X1] : (~v1_subset_1(X1,X1) | ~m1_subset_1(X1,k9_setfam_1(X1))) )),
% 3.85/0.99    inference(equality_resolution,[],[f172])).
% 3.85/0.99  
% 3.85/0.99  fof(f23,axiom,(
% 3.85/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v1_tops_1(X1,X0) <=> u1_struct_0(X0) = k2_pre_topc(X0,X1))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f56,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((v1_tops_1(X1,X0) <=> u1_struct_0(X0) = k2_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(ennf_transformation,[],[f23])).
% 3.85/0.99  
% 3.85/0.99  fof(f83,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (((v1_tops_1(X1,X0) | u1_struct_0(X0) != k2_pre_topc(X0,X1)) & (u1_struct_0(X0) = k2_pre_topc(X0,X1) | ~v1_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.85/0.99    inference(nnf_transformation,[],[f56])).
% 3.85/0.99  
% 3.85/0.99  fof(f129,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_tops_1(X1,X0) | u1_struct_0(X0) != k2_pre_topc(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f83])).
% 3.85/0.99  
% 3.85/0.99  fof(f169,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_tops_1(X1,X0) | u1_struct_0(X0) != k2_pre_topc(X0,X1) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f129,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f28,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => v2_tex_2(X1,X0)))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f64,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f28])).
% 3.85/0.99  
% 3.85/0.99  fof(f65,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f64])).
% 3.85/0.99  
% 3.85/0.99  fof(f140,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f65])).
% 3.85/0.99  
% 3.85/0.99  fof(f180,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f140,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f31,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X1,X0) & v1_tops_1(X1,X0)) => v3_tex_2(X1,X0))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f70,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((v3_tex_2(X1,X0) | (~v2_tex_2(X1,X0) | ~v1_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f31])).
% 3.85/0.99  
% 3.85/0.99  fof(f71,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (v3_tex_2(X1,X0) | ~v2_tex_2(X1,X0) | ~v1_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f70])).
% 3.85/0.99  
% 3.85/0.99  fof(f143,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v3_tex_2(X1,X0) | ~v2_tex_2(X1,X0) | ~v1_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f71])).
% 3.85/0.99  
% 3.85/0.99  fof(f183,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v3_tex_2(X1,X0) | ~v2_tex_2(X1,X0) | ~v1_tops_1(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f143,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f150,plain,(
% 3.85/0.99    v1_subset_1(sK5,u1_struct_0(sK4)) | ~v3_tex_2(sK5,sK4)),
% 3.85/0.99    inference(cnf_transformation,[],[f95])).
% 3.85/0.99  
% 3.85/0.99  fof(f8,axiom,(
% 3.85/0.99    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f106,plain,(
% 3.85/0.99    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.85/0.99    inference(cnf_transformation,[],[f8])).
% 3.85/0.99  
% 3.85/0.99  fof(f10,axiom,(
% 3.85/0.99    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f108,plain,(
% 3.85/0.99    ( ! [X0] : (k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0))) )),
% 3.85/0.99    inference(cnf_transformation,[],[f10])).
% 3.85/0.99  
% 3.85/0.99  fof(f151,plain,(
% 3.85/0.99    ( ! [X0] : (k2_subset_1(X0) = k3_subset_1(X0,k1_xboole_0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f108,f103])).
% 3.85/0.99  
% 3.85/0.99  fof(f158,plain,(
% 3.85/0.99    ( ! [X0] : (m1_subset_1(k3_subset_1(X0,k1_xboole_0),k9_setfam_1(X0))) )),
% 3.85/0.99    inference(definition_unfolding,[],[f106,f151,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f6,axiom,(
% 3.85/0.99    ! [X0] : k2_subset_1(X0) = X0),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f104,plain,(
% 3.85/0.99    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 3.85/0.99    inference(cnf_transformation,[],[f6])).
% 3.85/0.99  
% 3.85/0.99  fof(f156,plain,(
% 3.85/0.99    ( ! [X0] : (k3_subset_1(X0,k1_xboole_0) = X0) )),
% 3.85/0.99    inference(definition_unfolding,[],[f104,f151])).
% 3.85/0.99  
% 3.85/0.99  fof(f27,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => (v1_tdlat_3(X0) <=> ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => v3_pre_topc(X1,X0))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f62,plain,(
% 3.85/0.99    ! [X0] : ((v1_tdlat_3(X0) <=> ! [X1] : (v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f27])).
% 3.85/0.99  
% 3.85/0.99  fof(f63,plain,(
% 3.85/0.99    ! [X0] : ((v1_tdlat_3(X0) <=> ! [X1] : (v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(flattening,[],[f62])).
% 3.85/0.99  
% 3.85/0.99  fof(f87,plain,(
% 3.85/0.99    ! [X0] : (((v1_tdlat_3(X0) | ? [X1] : (~v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X1] : (v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tdlat_3(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(nnf_transformation,[],[f63])).
% 3.85/0.99  
% 3.85/0.99  fof(f88,plain,(
% 3.85/0.99    ! [X0] : (((v1_tdlat_3(X0) | ? [X1] : (~v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v3_pre_topc(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tdlat_3(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(rectify,[],[f87])).
% 3.85/0.99  
% 3.85/0.99  fof(f89,plain,(
% 3.85/0.99    ! [X0] : (? [X1] : (~v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (~v3_pre_topc(sK3(X0),X0) & m1_subset_1(sK3(X0),k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.85/0.99    introduced(choice_axiom,[])).
% 3.85/0.99  
% 3.85/0.99  fof(f90,plain,(
% 3.85/0.99    ! [X0] : (((v1_tdlat_3(X0) | (~v3_pre_topc(sK3(X0),X0) & m1_subset_1(sK3(X0),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v3_pre_topc(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tdlat_3(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.85/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f88,f89])).
% 3.85/0.99  
% 3.85/0.99  fof(f137,plain,(
% 3.85/0.99    ( ! [X2,X0] : (v3_pre_topc(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v1_tdlat_3(X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f90])).
% 3.85/0.99  
% 3.85/0.99  fof(f179,plain,(
% 3.85/0.99    ( ! [X2,X0] : (v3_pre_topc(X2,X0) | ~m1_subset_1(X2,k9_setfam_1(u1_struct_0(X0))) | ~v1_tdlat_3(X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f137,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f30,axiom,(
% 3.85/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v3_tex_2(X1,X0) & v3_pre_topc(X1,X0)) => v1_tops_1(X1,X0))))),
% 3.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.85/0.99  
% 3.85/0.99  fof(f68,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : ((v1_tops_1(X1,X0) | (~v3_tex_2(X1,X0) | ~v3_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.85/0.99    inference(ennf_transformation,[],[f30])).
% 3.85/0.99  
% 3.85/0.99  fof(f69,plain,(
% 3.85/0.99    ! [X0] : (! [X1] : (v1_tops_1(X1,X0) | ~v3_tex_2(X1,X0) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.85/0.99    inference(flattening,[],[f68])).
% 3.85/0.99  
% 3.85/0.99  fof(f142,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_tops_1(X1,X0) | ~v3_tex_2(X1,X0) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f69])).
% 3.85/0.99  
% 3.85/0.99  fof(f182,plain,(
% 3.85/0.99    ( ! [X0,X1] : (v1_tops_1(X1,X0) | ~v3_tex_2(X1,X0) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f142,f111])).
% 3.85/0.99  
% 3.85/0.99  fof(f128,plain,(
% 3.85/0.99    ( ! [X0,X1] : (u1_struct_0(X0) = k2_pre_topc(X0,X1) | ~v1_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(cnf_transformation,[],[f83])).
% 3.85/0.99  
% 3.85/0.99  fof(f170,plain,(
% 3.85/0.99    ( ! [X0,X1] : (u1_struct_0(X0) = k2_pre_topc(X0,X1) | ~v1_tops_1(X1,X0) | ~m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.85/0.99    inference(definition_unfolding,[],[f128,f111])).
% 3.85/0.99  
% 3.85/0.99  cnf(c_49,negated_conjecture,
% 3.85/0.99      ( v1_tdlat_3(sK4) ),
% 3.85/0.99      inference(cnf_transformation,[],[f146]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5475,plain,
% 3.85/0.99      ( v1_tdlat_3(sK4) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_49]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_28,plain,
% 3.85/0.99      ( ~ v1_tdlat_3(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f126]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5482,plain,
% 3.85/0.99      ( k9_setfam_1(u1_struct_0(X0)) = u1_pre_topc(X0)
% 3.85/0.99      | v1_tdlat_3(X0) != iProver_top
% 3.85/0.99      | l1_pre_topc(X0) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6730,plain,
% 3.85/0.99      ( k9_setfam_1(u1_struct_0(sK4)) = u1_pre_topc(sK4)
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_5475,c_5482]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_48,negated_conjecture,
% 3.85/0.99      ( l1_pre_topc(sK4) ),
% 3.85/0.99      inference(cnf_transformation,[],[f147]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_104,plain,
% 3.85/0.99      ( ~ v1_tdlat_3(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | k9_setfam_1(u1_struct_0(sK4)) = u1_pre_topc(sK4) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_28]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6850,plain,
% 3.85/0.99      ( k9_setfam_1(u1_struct_0(sK4)) = u1_pre_topc(sK4) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_6730,c_49,c_48,c_104]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_47,negated_conjecture,
% 3.85/0.99      ( m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4))) ),
% 3.85/0.99      inference(cnf_transformation,[],[f184]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5477,plain,
% 3.85/0.99      ( m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4))) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6854,plain,
% 3.85/0.99      ( m1_subset_1(sK5,u1_pre_topc(sK4)) = iProver_top ),
% 3.85/0.99      inference(demodulation,[status(thm)],[c_6850,c_5477]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_34,plain,
% 3.85/0.99      ( ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | v1_xboole_0(X0)
% 3.85/0.99      | u1_struct_0(sK2(X1,X0)) = X0 ),
% 3.85/0.99      inference(cnf_transformation,[],[f174]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5481,plain,
% 3.85/0.99      ( u1_struct_0(sK2(X0,X1)) = X1
% 3.85/0.99      | m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) != iProver_top
% 3.85/0.99      | v2_struct_0(X0) = iProver_top
% 3.85/0.99      | l1_pre_topc(X0) != iProver_top
% 3.85/0.99      | v1_xboole_0(X1) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8011,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,X0)) = X0
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v2_struct_0(sK4) = iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6850,c_5481]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_51,negated_conjecture,
% 3.85/0.99      ( ~ v2_struct_0(sK4) ),
% 3.85/0.99      inference(cnf_transformation,[],[f144]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_52,plain,
% 3.85/0.99      ( v2_struct_0(sK4) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_51]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_55,plain,
% 3.85/0.99      ( l1_pre_topc(sK4) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_48]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8627,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,X0)) = X0
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_8011,c_52,c_55]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8637,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,sK5)) = sK5 | v1_xboole_0(sK5) = iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6854,c_8627]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8,plain,
% 3.85/0.99      ( m1_subset_1(k1_xboole_0,k9_setfam_1(X0)) ),
% 3.85/0.99      inference(cnf_transformation,[],[f157]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5489,plain,
% 3.85/0.99      ( m1_subset_1(k1_xboole_0,k9_setfam_1(X0)) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_31,plain,
% 3.85/0.99      ( v1_subset_1(X0,X1) | ~ m1_subset_1(X0,k9_setfam_1(X1)) | X0 = X1 ),
% 3.85/0.99      inference(cnf_transformation,[],[f171]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_12,plain,
% 3.85/0.99      ( ~ v1_subset_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(X1))
% 3.85/0.99      | ~ v1_xboole_0(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f161]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1471,plain,
% 3.85/0.99      ( ~ m1_subset_1(X0,k9_setfam_1(X1)) | ~ v1_xboole_0(X1) | X1 = X0 ),
% 3.85/0.99      inference(resolution,[status(thm)],[c_31,c_12]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5460,plain,
% 3.85/0.99      ( X0 = X1
% 3.85/0.99      | m1_subset_1(X1,k9_setfam_1(X0)) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_1471]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8425,plain,
% 3.85/0.99      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_5489,c_5460]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_9062,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,sK5)) = sK5 | sK5 = k1_xboole_0 ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_8637,c_8425]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_35,plain,
% 3.85/0.99      ( m1_pre_topc(sK2(X0,X1),X0)
% 3.85/0.99      | ~ m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0)))
% 3.85/0.99      | v2_struct_0(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | v1_xboole_0(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f175]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5480,plain,
% 3.85/0.99      ( m1_pre_topc(sK2(X0,X1),X0) = iProver_top
% 3.85/0.99      | m1_subset_1(X1,k9_setfam_1(u1_struct_0(X0))) != iProver_top
% 3.85/0.99      | v2_struct_0(X0) = iProver_top
% 3.85/0.99      | l1_pre_topc(X0) != iProver_top
% 3.85/0.99      | v1_xboole_0(X1) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8183,plain,
% 3.85/0.99      ( m1_pre_topc(sK2(sK4,X0),sK4) = iProver_top
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v2_struct_0(sK4) = iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6850,c_5480]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8859,plain,
% 3.85/0.99      ( m1_pre_topc(sK2(sK4,X0),sK4) = iProver_top
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_8183,c_52,c_55]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_19,plain,
% 3.85/0.99      ( ~ v4_pre_topc(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) = X0 ),
% 3.85/0.99      inference(cnf_transformation,[],[f164]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_26,plain,
% 3.85/0.99      ( v1_borsuk_1(X0,X1)
% 3.85/0.99      | ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f124]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_22,plain,
% 3.85/0.99      ( ~ v1_borsuk_1(X0,X1)
% 3.85/0.99      | v4_pre_topc(u1_struct_0(X0),X1)
% 3.85/0.99      | ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f189]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_23,plain,
% 3.85/0.99      ( ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f168]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_310,plain,
% 3.85/0.99      ( ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | v4_pre_topc(u1_struct_0(X0),X1)
% 3.85/0.99      | ~ v1_borsuk_1(X0,X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(global_propositional_subsumption,[status(thm)],[c_22,c_23]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_311,plain,
% 3.85/0.99      ( ~ v1_borsuk_1(X0,X1)
% 3.85/0.99      | v4_pre_topc(u1_struct_0(X0),X1)
% 3.85/0.99      | ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(renaming,[status(thm)],[c_310]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_785,plain,
% 3.85/0.99      ( v4_pre_topc(u1_struct_0(X0),X1)
% 3.85/0.99      | ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(resolution,[status(thm)],[c_26,c_311]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_24,plain,
% 3.85/0.99      ( ~ v1_tdlat_3(X0) | v2_pre_topc(X0) | ~ l1_pre_topc(X0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f123]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_801,plain,
% 3.85/0.99      ( v4_pre_topc(u1_struct_0(X0),X1)
% 3.85/0.99      | ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_785,c_24]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_878,plain,
% 3.85/0.99      ( ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X2,k9_setfam_1(u1_struct_0(X3)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X3)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | X1 != X3
% 3.85/0.99      | k2_pre_topc(X3,X2) = X2
% 3.85/0.99      | u1_struct_0(X0) != X2 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_801]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_879,plain,
% 3.85/0.99      ( ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,u1_struct_0(X0)) = u1_struct_0(X0) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_878]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_883,plain,
% 3.85/0.99      ( ~ m1_pre_topc(X0,X1)
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,u1_struct_0(X0)) = u1_struct_0(X0) ),
% 3.85/0.99      inference(global_propositional_subsumption,[status(thm)],[c_879,c_23]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5470,plain,
% 3.85/0.99      ( k2_pre_topc(X0,u1_struct_0(X1)) = u1_struct_0(X1)
% 3.85/0.99      | m1_pre_topc(X1,X0) != iProver_top
% 3.85/0.99      | v1_tdlat_3(X0) != iProver_top
% 3.85/0.99      | v2_struct_0(X0) = iProver_top
% 3.85/0.99      | l1_pre_topc(X0) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_883]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_12288,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,X0))) = u1_struct_0(sK2(sK4,X0))
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_tdlat_3(sK4) != iProver_top
% 3.85/0.99      | v2_struct_0(sK4) = iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_8859,c_5470]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_54,plain,
% 3.85/0.99      ( v1_tdlat_3(sK4) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_49]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15124,plain,
% 3.85/0.99      ( m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | k2_pre_topc(sK4,u1_struct_0(sK2(sK4,X0))) = u1_struct_0(sK2(sK4,X0))
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_12288,c_52,c_54,c_55]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15125,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,X0))) = u1_struct_0(sK2(sK4,X0))
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.85/0.99      inference(renaming,[status(thm)],[c_15124]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15134,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5))
% 3.85/0.99      | v1_xboole_0(sK5) = iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6854,c_15125]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_50,negated_conjecture,
% 3.85/0.99      ( v2_pre_topc(sK4) ),
% 3.85/0.99      inference(cnf_transformation,[],[f145]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_53,plain,
% 3.85/0.99      ( v2_pre_topc(sK4) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_50]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_16,plain,
% 3.85/0.99      ( v2_struct_0(X0)
% 3.85/0.99      | ~ v2_pre_topc(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | ~ v1_xboole_0(sK1(X0)) ),
% 3.85/0.99      inference(cnf_transformation,[],[f115]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_131,plain,
% 3.85/0.99      ( v2_struct_0(X0) = iProver_top
% 3.85/0.99      | v2_pre_topc(X0) != iProver_top
% 3.85/0.99      | l1_pre_topc(X0) != iProver_top
% 3.85/0.99      | v1_xboole_0(sK1(X0)) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_133,plain,
% 3.85/0.99      ( v2_struct_0(sK4) = iProver_top
% 3.85/0.99      | v2_pre_topc(sK4) != iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(sK1(sK4)) != iProver_top ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_131]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_11,plain,
% 3.85/0.99      ( v1_subset_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(X1))
% 3.85/0.99      | ~ v1_xboole_0(X0)
% 3.85/0.99      | v1_xboole_0(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f160]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_42,plain,
% 3.85/0.99      ( ~ v3_tex_2(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | ~ v1_xboole_0(X0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f181]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_46,negated_conjecture,
% 3.85/0.99      ( v3_tex_2(sK5,sK4) | ~ v1_subset_1(sK5,u1_struct_0(sK4)) ),
% 3.85/0.99      inference(cnf_transformation,[],[f149]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_402,plain,
% 3.85/0.99      ( v3_tex_2(sK5,sK4) | ~ v1_subset_1(sK5,u1_struct_0(sK4)) ),
% 3.85/0.99      inference(prop_impl,[status(thm)],[c_46]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1153,plain,
% 3.85/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | ~ v1_xboole_0(X0)
% 3.85/0.99      | sK4 != X1
% 3.85/0.99      | sK5 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_42,c_402]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1154,plain,
% 3.85/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ v2_pre_topc(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | ~ v1_xboole_0(sK5) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1153]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1156,plain,
% 3.85/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4)) | ~ v1_xboole_0(sK5) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_1154,c_51,c_50,c_48,c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1540,plain,
% 3.85/0.99      ( ~ m1_subset_1(X0,k9_setfam_1(X1))
% 3.85/0.99      | ~ v1_xboole_0(X0)
% 3.85/0.99      | v1_xboole_0(X1)
% 3.85/0.99      | ~ v1_xboole_0(sK5)
% 3.85/0.99      | u1_struct_0(sK4) != X1
% 3.85/0.99      | sK5 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_1156]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1541,plain,
% 3.85/0.99      ( ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4))
% 3.85/0.99      | ~ v1_xboole_0(sK5) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1540]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1543,plain,
% 3.85/0.99      ( v1_xboole_0(u1_struct_0(sK4)) | ~ v1_xboole_0(sK5) ),
% 3.85/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1541,c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1545,plain,
% 3.85/0.99      ( v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 3.85/0.99      | v1_xboole_0(sK5) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_1543]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_2438,plain,
% 3.85/0.99      ( m1_pre_topc(sK2(X0,X1),X0)
% 3.85/0.99      | v2_struct_0(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | v1_xboole_0(X1)
% 3.85/0.99      | k9_setfam_1(u1_struct_0(X0)) != k9_setfam_1(u1_struct_0(sK4))
% 3.85/0.99      | sK5 != X1 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_35,c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_2439,plain,
% 3.85/0.99      ( m1_pre_topc(sK2(X0,sK5),X0)
% 3.85/0.99      | v2_struct_0(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | v1_xboole_0(sK5)
% 3.85/0.99      | k9_setfam_1(u1_struct_0(X0)) != k9_setfam_1(u1_struct_0(sK4)) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_2438]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_2440,plain,
% 3.85/0.99      ( k9_setfam_1(u1_struct_0(X0)) != k9_setfam_1(u1_struct_0(sK4))
% 3.85/0.99      | m1_pre_topc(sK2(X0,sK5),X0) = iProver_top
% 3.85/0.99      | v2_struct_0(X0) = iProver_top
% 3.85/0.99      | l1_pre_topc(X0) != iProver_top
% 3.85/0.99      | v1_xboole_0(sK5) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_2439]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_2442,plain,
% 3.85/0.99      ( k9_setfam_1(u1_struct_0(sK4)) != k9_setfam_1(u1_struct_0(sK4))
% 3.85/0.99      | m1_pre_topc(sK2(sK4,sK5),sK4) = iProver_top
% 3.85/0.99      | v2_struct_0(sK4) = iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(sK5) = iProver_top ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_2440]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_4767,plain,( X0 = X0 ),theory(equality) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6176,plain,
% 3.85/0.99      ( k9_setfam_1(u1_struct_0(sK4)) = k9_setfam_1(u1_struct_0(sK4)) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_4767]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6742,plain,
% 3.85/0.99      ( ~ m1_pre_topc(sK2(sK4,sK5),sK4)
% 3.85/0.99      | ~ v1_tdlat_3(sK4)
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5)) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_883]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6746,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5))
% 3.85/0.99      | m1_pre_topc(sK2(sK4,sK5),sK4) != iProver_top
% 3.85/0.99      | v1_tdlat_3(sK4) != iProver_top
% 3.85/0.99      | v2_struct_0(sK4) = iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_6742]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_17,plain,
% 3.85/0.99      ( m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
% 3.85/0.99      | v2_struct_0(X0)
% 3.85/0.99      | ~ v2_pre_topc(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f162]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1264,plain,
% 3.85/0.99      ( m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
% 3.85/0.99      | v2_struct_0(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | sK4 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_50]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1265,plain,
% 3.85/0.99      ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1264]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_129,plain,
% 3.85/0.99      ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ v2_pre_topc(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_17]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1267,plain,
% 3.85/0.99      ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4))) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_1265,c_51,c_50,c_48,c_129]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5464,plain,
% 3.85/0.99      ( m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4))) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_1267]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6853,plain,
% 3.85/0.99      ( m1_subset_1(sK1(sK4),u1_pre_topc(sK4)) = iProver_top ),
% 3.85/0.99      inference(demodulation,[status(thm)],[c_6850,c_5464]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8636,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,sK1(sK4))) = sK1(sK4)
% 3.85/0.99      | v1_xboole_0(sK1(sK4)) = iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6853,c_8627]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_132,plain,
% 3.85/0.99      ( v2_struct_0(sK4)
% 3.85/0.99      | ~ v2_pre_topc(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | ~ v1_xboole_0(sK1(sK4)) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_16]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5849,plain,
% 3.85/0.99      ( ~ m1_subset_1(sK1(X0),k9_setfam_1(u1_struct_0(X0)))
% 3.85/0.99      | v2_struct_0(X0)
% 3.85/0.99      | ~ l1_pre_topc(X0)
% 3.85/0.99      | v1_xboole_0(sK1(X0))
% 3.85/0.99      | u1_struct_0(sK2(X0,sK1(X0))) = sK1(X0) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_34]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5851,plain,
% 3.85/0.99      ( ~ m1_subset_1(sK1(sK4),k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | v1_xboole_0(sK1(sK4))
% 3.85/0.99      | u1_struct_0(sK2(sK4,sK1(sK4))) = sK1(sK4) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_5849]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_10780,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,sK1(sK4))) = sK1(sK4) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_8636,c_51,c_50,c_48,c_129,c_132,c_5851]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5484,plain,
% 3.85/0.99      ( m1_pre_topc(X0,X1) != iProver_top
% 3.85/0.99      | m1_subset_1(u1_struct_0(X0),k9_setfam_1(u1_struct_0(X1))) = iProver_top
% 3.85/0.99      | l1_pre_topc(X1) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_7328,plain,
% 3.85/0.99      ( m1_pre_topc(X0,sK4) != iProver_top
% 3.85/0.99      | m1_subset_1(u1_struct_0(X0),u1_pre_topc(sK4)) = iProver_top
% 3.85/0.99      | l1_pre_topc(sK4) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6850,c_5484]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_7436,plain,
% 3.85/0.99      ( m1_subset_1(u1_struct_0(X0),u1_pre_topc(sK4)) = iProver_top
% 3.85/0.99      | m1_pre_topc(X0,sK4) != iProver_top ),
% 3.85/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7328,c_55]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_7437,plain,
% 3.85/0.99      ( m1_pre_topc(X0,sK4) != iProver_top
% 3.85/0.99      | m1_subset_1(u1_struct_0(X0),u1_pre_topc(sK4)) = iProver_top ),
% 3.85/0.99      inference(renaming,[status(thm)],[c_7436]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8428,plain,
% 3.85/0.99      ( u1_struct_0(sK4) = X0
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_6850,c_5460]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_8462,plain,
% 3.85/0.99      ( u1_struct_0(X0) = u1_struct_0(sK4)
% 3.85/0.99      | m1_pre_topc(X0,sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_7437,c_8428]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_9582,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,X0)) = u1_struct_0(sK4)
% 3.85/0.99      | m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_8859,c_8462]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_12115,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,u1_struct_0(X0))) = u1_struct_0(sK4)
% 3.85/0.99      | m1_pre_topc(X0,sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(X0)) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_7437,c_9582]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_4770,plain,
% 3.85/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 3.85/0.99      theory(equality) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5984,plain,
% 3.85/0.99      ( v1_xboole_0(X0)
% 3.85/0.99      | ~ v1_xboole_0(u1_struct_0(sK4))
% 3.85/0.99      | X0 != u1_struct_0(sK4) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_4770]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6364,plain,
% 3.85/0.99      ( v1_xboole_0(u1_struct_0(X0))
% 3.85/0.99      | ~ v1_xboole_0(u1_struct_0(sK4))
% 3.85/0.99      | u1_struct_0(X0) != u1_struct_0(sK4) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_5984]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6366,plain,
% 3.85/0.99      ( u1_struct_0(X0) != u1_struct_0(sK4)
% 3.85/0.99      | v1_xboole_0(u1_struct_0(X0)) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_6364]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_13881,plain,
% 3.85/0.99      ( m1_pre_topc(X0,sK4) != iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(X0)) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_12115,c_6366,c_8462]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_13889,plain,
% 3.85/0.99      ( m1_subset_1(X0,u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(X0) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK2(sK4,X0))) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_8859,c_13881]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_13906,plain,
% 3.85/0.99      ( m1_subset_1(sK1(sK4),u1_pre_topc(sK4)) != iProver_top
% 3.85/0.99      | v1_xboole_0(sK1(sK4)) = iProver_top
% 3.85/0.99      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_10780,c_13889]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15342,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,u1_struct_0(sK2(sK4,sK5))) = u1_struct_0(sK2(sK4,sK5)) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_15134,c_52,c_53,c_54,c_55,c_56,c_133,c_1545,c_5873,c_6746,
% 3.85/0.99                 c_6853,c_13906]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15346,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,sK5)) = k2_pre_topc(sK4,sK5) | sK5 = k1_xboole_0 ),
% 3.85/0.99      inference(superposition,[status(thm)],[c_9062,c_15342]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1,plain,
% 3.85/0.99      ( r1_xboole_0(X0,k1_xboole_0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f97]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_2,plain,
% 3.85/0.99      ( ~ r1_xboole_0(X0,X1) | ~ r1_tarski(X0,X1) | v1_xboole_0(X0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f98]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_664,plain,
% 3.85/0.99      ( ~ r1_tarski(X0,X1) | v1_xboole_0(X0) | X0 != X2 | k1_xboole_0 != X1 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_2]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_665,plain,
% 3.85/0.99      ( ~ r1_tarski(X0,k1_xboole_0) | v1_xboole_0(X0) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_664]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5897,plain,
% 3.85/0.99      ( ~ r1_tarski(k1_xboole_0,k1_xboole_0) | v1_xboole_0(k1_xboole_0) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_665]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5899,plain,
% 3.85/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top
% 3.85/0.99      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_5897]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_0,plain,
% 3.85/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 3.85/0.99      inference(cnf_transformation,[],[f96]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5898,plain,
% 3.85/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5901,plain,
% 3.85/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_5898]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_6044,plain,
% 3.85/0.99      ( v1_xboole_0(X0) | ~ v1_xboole_0(k1_xboole_0) | X0 != k1_xboole_0 ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_4770]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_9810,plain,
% 3.85/0.99      ( v1_xboole_0(sK5) | ~ v1_xboole_0(k1_xboole_0) | sK5 != k1_xboole_0 ),
% 3.85/0.99      inference(instantiation,[status(thm)],[c_6044]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_9821,plain,
% 3.85/0.99      ( sK5 != k1_xboole_0
% 3.85/0.99      | v1_xboole_0(sK5) = iProver_top
% 3.85/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_9810]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15962,plain,
% 3.85/0.99      ( u1_struct_0(sK2(sK4,sK5)) = k2_pre_topc(sK4,sK5) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_15346,c_52,c_53,c_55,c_133,c_1545,c_5899,c_5901,c_6853,
% 3.85/0.99                 c_9821,c_13906]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_15976,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,sK5) = sK5 | v1_xboole_0(sK5) = iProver_top ),
% 3.85/0.99      inference(demodulation,[status(thm)],[c_15962,c_8637]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_17670,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,sK5) = sK5 ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_15976,c_52,c_53,c_55,c_133,c_1545,c_6853,c_13906]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_32,plain,
% 3.85/0.99      ( ~ v1_subset_1(X0,X0) | ~ m1_subset_1(X0,k9_setfam_1(X0)) ),
% 3.85/0.99      inference(cnf_transformation,[],[f190]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_29,plain,
% 3.85/0.99      ( v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) != u1_struct_0(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f169]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_41,plain,
% 3.85/0.99      ( v2_tex_2(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f180]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_44,plain,
% 3.85/0.99      ( v3_tex_2(X0,X1)
% 3.85/0.99      | ~ v2_tex_2(X0,X1)
% 3.85/0.99      | ~ v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f183]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_709,plain,
% 3.85/0.99      ( v3_tex_2(X0,X1)
% 3.85/0.99      | ~ v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(resolution,[status(thm)],[c_41,c_44]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_727,plain,
% 3.85/0.99      ( v3_tex_2(X0,X1)
% 3.85/0.99      | ~ v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_709,c_24]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1057,plain,
% 3.85/0.99      ( v3_tex_2(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) != u1_struct_0(X1) ),
% 3.85/0.99      inference(resolution,[status(thm)],[c_29,c_727]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_45,negated_conjecture,
% 3.85/0.99      ( ~ v3_tex_2(sK5,sK4) | v1_subset_1(sK5,u1_struct_0(sK4)) ),
% 3.85/0.99      inference(cnf_transformation,[],[f150]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_404,plain,
% 3.85/0.99      ( ~ v3_tex_2(sK5,sK4) | v1_subset_1(sK5,u1_struct_0(sK4)) ),
% 3.85/0.99      inference(prop_impl,[status(thm)],[c_45]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1125,plain,
% 3.85/0.99      ( v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) != u1_struct_0(X1)
% 3.85/0.99      | sK4 != X1
% 3.85/0.99      | sK5 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_1057,c_404]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1126,plain,
% 3.85/0.99      ( v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | ~ v1_tdlat_3(sK4)
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1125]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1128,plain,
% 3.85/0.99      ( v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_1126,c_51,c_49,c_48,c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1584,plain,
% 3.85/0.99      ( ~ m1_subset_1(X0,k9_setfam_1(X0))
% 3.85/0.99      | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
% 3.85/0.99      | u1_struct_0(sK4) != X0
% 3.85/0.99      | sK5 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_32,c_1128]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1585,plain,
% 3.85/0.99      ( ~ m1_subset_1(u1_struct_0(sK4),k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
% 3.85/0.99      | sK5 != u1_struct_0(sK4) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1584]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5453,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,sK5) != u1_struct_0(sK4)
% 3.85/0.99      | sK5 != u1_struct_0(sK4)
% 3.85/0.99      | m1_subset_1(u1_struct_0(sK4),k9_setfam_1(u1_struct_0(sK4))) != iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_1585]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_9,plain,
% 3.85/0.99      ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k9_setfam_1(X0)) ),
% 3.85/0.99      inference(cnf_transformation,[],[f158]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5488,plain,
% 3.85/0.99      ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k9_setfam_1(X0)) = iProver_top ),
% 3.85/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_7,plain,
% 3.85/0.99      ( k3_subset_1(X0,k1_xboole_0) = X0 ),
% 3.85/0.99      inference(cnf_transformation,[],[f156]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5511,plain,
% 3.85/0.99      ( m1_subset_1(X0,k9_setfam_1(X0)) = iProver_top ),
% 3.85/0.99      inference(light_normalisation,[status(thm)],[c_5488,c_7]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_5595,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,sK5) != u1_struct_0(sK4) | u1_struct_0(sK4) != sK5 ),
% 3.85/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_5453,c_5511]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_17685,plain,
% 3.85/0.99      ( u1_struct_0(sK4) != sK5 ),
% 3.85/0.99      inference(demodulation,[status(thm)],[c_17670,c_5595]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_40,plain,
% 3.85/0.99      ( v3_pre_topc(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f179]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_43,plain,
% 3.85/0.99      ( ~ v3_tex_2(X0,X1)
% 3.85/0.99      | ~ v3_pre_topc(X0,X1)
% 3.85/0.99      | v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f182]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_816,plain,
% 3.85/0.99      ( ~ v3_tex_2(X0,X1)
% 3.85/0.99      | v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ v2_pre_topc(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(resolution,[status(thm)],[c_40,c_43]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_834,plain,
% 3.85/0.99      ( ~ v3_tex_2(X0,X1)
% 3.85/0.99      | v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1) ),
% 3.85/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_816,c_24]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_30,plain,
% 3.85/0.99      ( ~ v1_tops_1(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) = u1_struct_0(X1) ),
% 3.85/0.99      inference(cnf_transformation,[],[f170]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1034,plain,
% 3.85/0.99      ( ~ v3_tex_2(X0,X1)
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) = u1_struct_0(X1) ),
% 3.85/0.99      inference(resolution,[status(thm)],[c_834,c_30]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1139,plain,
% 3.85/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | ~ m1_subset_1(X0,k9_setfam_1(u1_struct_0(X1)))
% 3.85/0.99      | ~ v1_tdlat_3(X1)
% 3.85/0.99      | v2_struct_0(X1)
% 3.85/0.99      | ~ l1_pre_topc(X1)
% 3.85/0.99      | k2_pre_topc(X1,X0) = u1_struct_0(X1)
% 3.85/0.99      | sK4 != X1
% 3.85/0.99      | sK5 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_1034,c_402]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1140,plain,
% 3.85/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | ~ v1_tdlat_3(sK4)
% 3.85/0.99      | v2_struct_0(sK4)
% 3.85/0.99      | ~ l1_pre_topc(sK4)
% 3.85/0.99      | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4) ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1139]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1142,plain,
% 3.85/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 3.85/0.99      | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4) ),
% 3.85/0.99      inference(global_propositional_subsumption,
% 3.85/0.99                [status(thm)],
% 3.85/0.99                [c_1140,c_51,c_49,c_48,c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1529,plain,
% 3.85/0.99      ( ~ m1_subset_1(X0,k9_setfam_1(X1))
% 3.85/0.99      | X1 = X0
% 3.85/0.99      | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4)
% 3.85/0.99      | u1_struct_0(sK4) != X1
% 3.85/0.99      | sK5 != X0 ),
% 3.85/0.99      inference(resolution_lifted,[status(thm)],[c_31,c_1142]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1530,plain,
% 3.85/0.99      ( ~ m1_subset_1(sK5,k9_setfam_1(u1_struct_0(sK4)))
% 3.85/0.99      | k2_pre_topc(sK4,sK5) = u1_struct_0(sK4)
% 3.85/0.99      | u1_struct_0(sK4) = sK5 ),
% 3.85/0.99      inference(unflattening,[status(thm)],[c_1529]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_1532,plain,
% 3.85/0.99      ( k2_pre_topc(sK4,sK5) = u1_struct_0(sK4) | u1_struct_0(sK4) = sK5 ),
% 3.85/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1530,c_47]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_17687,plain,
% 3.85/0.99      ( u1_struct_0(sK4) = sK5 ),
% 3.85/0.99      inference(demodulation,[status(thm)],[c_17670,c_1532]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_17690,plain,
% 3.85/0.99      ( sK5 != sK5 ),
% 3.85/0.99      inference(light_normalisation,[status(thm)],[c_17685,c_17687]) ).
% 3.85/0.99  
% 3.85/0.99  cnf(c_17691,plain,
% 3.85/0.99      ( $false ),
% 3.85/0.99      inference(equality_resolution_simp,[status(thm)],[c_17690]) ).
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.85/0.99  
% 3.85/0.99  ------                               Statistics
% 3.85/0.99  
% 3.85/0.99  ------ General
% 3.85/0.99  
% 3.85/0.99  abstr_ref_over_cycles:                  0
% 3.85/0.99  abstr_ref_under_cycles:                 0
% 3.85/0.99  gc_basic_clause_elim:                   0
% 3.85/0.99  forced_gc_time:                         0
% 3.85/0.99  parsing_time:                           0.012
% 3.85/0.99  unif_index_cands_time:                  0.
% 3.85/0.99  unif_index_add_time:                    0.
% 3.85/0.99  orderings_time:                         0.
% 3.85/0.99  out_proof_time:                         0.02
% 3.85/0.99  total_time:                             0.409
% 3.85/0.99  num_of_symbols:                         62
% 3.85/0.99  num_of_terms:                           10199
% 3.85/0.99  
% 3.85/0.99  ------ Preprocessing
% 3.85/0.99  
% 3.85/0.99  num_of_splits:                          0
% 3.85/0.99  num_of_split_atoms:                     0
% 3.85/0.99  num_of_reused_defs:                     0
% 3.85/0.99  num_eq_ax_congr_red:                    29
% 3.85/0.99  num_of_sem_filtered_clauses:            1
% 3.85/0.99  num_of_subtypes:                        0
% 3.85/0.99  monotx_restored_types:                  0
% 3.85/0.99  sat_num_of_epr_types:                   0
% 3.85/0.99  sat_num_of_non_cyclic_types:            0
% 3.85/0.99  sat_guarded_non_collapsed_types:        0
% 3.85/0.99  num_pure_diseq_elim:                    0
% 3.85/0.99  simp_replaced_by:                       0
% 3.85/0.99  res_preprocessed:                       209
% 3.85/0.99  prep_upred:                             0
% 3.85/0.99  prep_unflattend:                        179
% 3.85/0.99  smt_new_axioms:                         0
% 3.85/0.99  pred_elim_cands:                        8
% 3.85/0.99  pred_elim:                              10
% 3.85/0.99  pred_elim_cl:                           10
% 3.85/0.99  pred_elim_cycles:                       17
% 3.85/0.99  merged_defs:                            4
% 3.85/0.99  merged_defs_ncl:                        0
% 3.85/0.99  bin_hyper_res:                          4
% 3.85/0.99  prep_cycles:                            4
% 3.85/0.99  pred_elim_time:                         0.068
% 3.85/0.99  splitting_time:                         0.
% 3.85/0.99  sem_filter_time:                        0.
% 3.85/0.99  monotx_time:                            0.
% 3.85/0.99  subtype_inf_time:                       0.
% 3.85/0.99  
% 3.85/0.99  ------ Problem properties
% 3.85/0.99  
% 3.85/0.99  clauses:                                41
% 3.85/0.99  conjectures:                            4
% 3.85/0.99  epr:                                    8
% 3.85/0.99  horn:                                   31
% 3.85/0.99  ground:                                 14
% 3.85/0.99  unary:                                  11
% 3.85/0.99  binary:                                 9
% 3.85/0.99  lits:                                   111
% 3.85/0.99  lits_eq:                                22
% 3.85/0.99  fd_pure:                                0
% 3.85/0.99  fd_pseudo:                              0
% 3.85/0.99  fd_cond:                                0
% 3.85/0.99  fd_pseudo_cond:                         2
% 3.85/0.99  ac_symbols:                             0
% 3.85/0.99  
% 3.85/0.99  ------ Propositional Solver
% 3.85/0.99  
% 3.85/0.99  prop_solver_calls:                      28
% 3.85/0.99  prop_fast_solver_calls:                 2684
% 3.85/0.99  smt_solver_calls:                       0
% 3.85/0.99  smt_fast_solver_calls:                  0
% 3.85/0.99  prop_num_of_clauses:                    4983
% 3.85/0.99  prop_preprocess_simplified:             13256
% 3.85/0.99  prop_fo_subsumed:                       132
% 3.85/0.99  prop_solver_time:                       0.
% 3.85/0.99  smt_solver_time:                        0.
% 3.85/0.99  smt_fast_solver_time:                   0.
% 3.85/0.99  prop_fast_solver_time:                  0.
% 3.85/0.99  prop_unsat_core_time:                   0.
% 3.85/0.99  
% 3.85/0.99  ------ QBF
% 3.85/0.99  
% 3.85/0.99  qbf_q_res:                              0
% 3.85/0.99  qbf_num_tautologies:                    0
% 3.85/0.99  qbf_prep_cycles:                        0
% 3.85/0.99  
% 3.85/0.99  ------ BMC1
% 3.85/0.99  
% 3.85/0.99  bmc1_current_bound:                     -1
% 3.85/0.99  bmc1_last_solved_bound:                 -1
% 3.85/0.99  bmc1_unsat_core_size:                   -1
% 3.85/0.99  bmc1_unsat_core_parents_size:           -1
% 3.85/0.99  bmc1_merge_next_fun:                    0
% 3.85/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.85/0.99  
% 3.85/0.99  ------ Instantiation
% 3.85/0.99  
% 3.85/0.99  inst_num_of_clauses:                    1442
% 3.85/0.99  inst_num_in_passive:                    288
% 3.85/0.99  inst_num_in_active:                     684
% 3.85/0.99  inst_num_in_unprocessed:                472
% 3.85/0.99  inst_num_of_loops:                      770
% 3.85/0.99  inst_num_of_learning_restarts:          0
% 3.85/0.99  inst_num_moves_active_passive:          83
% 3.85/0.99  inst_lit_activity:                      0
% 3.85/0.99  inst_lit_activity_moves:                0
% 3.85/0.99  inst_num_tautologies:                   0
% 3.85/0.99  inst_num_prop_implied:                  0
% 3.85/0.99  inst_num_existing_simplified:           0
% 3.85/0.99  inst_num_eq_res_simplified:             0
% 3.85/0.99  inst_num_child_elim:                    0
% 3.85/0.99  inst_num_of_dismatching_blockings:      814
% 3.85/0.99  inst_num_of_non_proper_insts:           1693
% 3.85/0.99  inst_num_of_duplicates:                 0
% 3.85/0.99  inst_inst_num_from_inst_to_res:         0
% 3.85/0.99  inst_dismatching_checking_time:         0.
% 3.85/0.99  
% 3.85/0.99  ------ Resolution
% 3.85/0.99  
% 3.85/0.99  res_num_of_clauses:                     0
% 3.85/0.99  res_num_in_passive:                     0
% 3.85/0.99  res_num_in_active:                      0
% 3.85/0.99  res_num_of_loops:                       213
% 3.85/0.99  res_forward_subset_subsumed:            227
% 3.85/0.99  res_backward_subset_subsumed:           4
% 3.85/0.99  res_forward_subsumed:                   6
% 3.85/0.99  res_backward_subsumed:                  0
% 3.85/0.99  res_forward_subsumption_resolution:     6
% 3.85/0.99  res_backward_subsumption_resolution:    0
% 3.85/0.99  res_clause_to_clause_subsumption:       725
% 3.85/0.99  res_orphan_elimination:                 0
% 3.85/0.99  res_tautology_del:                      131
% 3.85/0.99  res_num_eq_res_simplified:              0
% 3.85/0.99  res_num_sel_changes:                    0
% 3.85/0.99  res_moves_from_active_to_pass:          0
% 3.85/0.99  
% 3.85/0.99  ------ Superposition
% 3.85/0.99  
% 3.85/0.99  sup_time_total:                         0.
% 3.85/0.99  sup_time_generating:                    0.
% 3.85/0.99  sup_time_sim_full:                      0.
% 3.85/0.99  sup_time_sim_immed:                     0.
% 3.85/0.99  
% 3.85/0.99  sup_num_of_clauses:                     288
% 3.85/0.99  sup_num_in_active:                      116
% 3.85/0.99  sup_num_in_passive:                     172
% 3.85/0.99  sup_num_of_loops:                       152
% 3.85/0.99  sup_fw_superposition:                   209
% 3.85/0.99  sup_bw_superposition:                   190
% 3.85/0.99  sup_immediate_simplified:               121
% 3.85/0.99  sup_given_eliminated:                   0
% 3.85/0.99  comparisons_done:                       0
% 3.85/0.99  comparisons_avoided:                    6
% 3.85/0.99  
% 3.85/0.99  ------ Simplifications
% 3.85/0.99  
% 3.85/0.99  
% 3.85/0.99  sim_fw_subset_subsumed:                 45
% 3.85/0.99  sim_bw_subset_subsumed:                 19
% 3.85/0.99  sim_fw_subsumed:                        16
% 3.85/0.99  sim_bw_subsumed:                        3
% 3.85/0.99  sim_fw_subsumption_res:                 1
% 3.85/0.99  sim_bw_subsumption_res:                 0
% 3.85/0.99  sim_tautology_del:                      18
% 3.85/0.99  sim_eq_tautology_del:                   15
% 3.85/0.99  sim_eq_res_simp:                        1
% 3.85/0.99  sim_fw_demodulated:                     17
% 3.85/0.99  sim_bw_demodulated:                     33
% 3.85/0.99  sim_light_normalised:                   50
% 3.85/0.99  sim_joinable_taut:                      0
% 3.85/0.99  sim_joinable_simp:                      0
% 3.85/0.99  sim_ac_normalised:                      0
% 3.85/0.99  sim_smt_subsumption:                    0
% 3.85/0.99  
%------------------------------------------------------------------------------
