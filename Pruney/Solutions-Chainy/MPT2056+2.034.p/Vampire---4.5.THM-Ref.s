%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:23:27 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  121 ( 262 expanded)
%              Number of leaves         :   31 ( 109 expanded)
%              Depth                    :   10
%              Number of atoms          :  392 (1016 expanded)
%              Number of equality atoms :   55 ( 183 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    8 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f159,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f73,f78,f83,f88,f93,f98,f103,f108,f116,f123,f129,f141,f148,f154,f158])).

fof(f158,plain,
    ( ~ spl3_2
    | ~ spl3_4
    | spl3_6
    | spl3_1
    | ~ spl3_2
    | ~ spl3_3
    | ~ spl3_12
    | ~ spl3_14 ),
    inference(avatar_split_clause,[],[f157,f152,f138,f80,f75,f70,f95,f85,f75])).

fof(f85,plain,
    ( spl3_4
  <=> v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).

fof(f95,plain,
    ( spl3_6
  <=> v1_xboole_0(sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).

fof(f70,plain,
    ( spl3_1
  <=> sK1 = k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f75,plain,
    ( spl3_2
  <=> m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f80,plain,
    ( spl3_3
  <=> v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).

fof(f138,plain,
    ( spl3_12
  <=> sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).

fof(f152,plain,
    ( spl3_14
  <=> ! [X0] :
        ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
        | k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X0)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),X0,k1_tarski(k1_xboole_0))
        | v1_xboole_0(X0)
        | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
        | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_14])])).

fof(f157,plain,
    ( sK1 = k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | v1_xboole_0(sK1)
    | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
    | ~ spl3_2
    | ~ spl3_3
    | ~ spl3_12
    | ~ spl3_14 ),
    inference(forward_demodulation,[],[f156,f140])).

fof(f140,plain,
    ( sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0)))
    | ~ spl3_12 ),
    inference(avatar_component_clause,[],[f138])).

fof(f156,plain,
    ( k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0)))
    | v1_xboole_0(sK1)
    | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
    | ~ spl3_2
    | ~ spl3_3
    | ~ spl3_14 ),
    inference(forward_demodulation,[],[f155,f133])).

fof(f133,plain,
    ( ! [X0] : k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),sK1,X0) = k5_xboole_0(sK1,k3_xboole_0(sK1,X0))
    | ~ spl3_2 ),
    inference(resolution,[],[f68,f77])).

fof(f77,plain,
    ( m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
    | ~ spl3_2 ),
    inference(avatar_component_clause,[],[f75])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0))))
      | k7_subset_1(X0,X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ) ),
    inference(definition_unfolding,[],[f57,f53,f59])).

fof(f59,plain,(
    ! [X0] : k1_zfmisc_1(X0) = u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(definition_unfolding,[],[f44,f58])).

fof(f58,plain,(
    ! [X0] : k9_setfam_1(X0) = u1_struct_0(k3_lattice3(k1_lattice3(X0))) ),
    inference(definition_unfolding,[],[f45,f46])).

fof(f46,plain,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_yellow_1)).

fof(f45,plain,(
    ! [X0] : k9_setfam_1(X0) = u1_struct_0(k3_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] : k9_setfam_1(X0) = u1_struct_0(k3_yellow_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_waybel_7)).

fof(f44,plain,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k9_setfam_1)).

fof(f53,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(f155,plain,
    ( k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),sK1,k1_tarski(k1_xboole_0))
    | v1_xboole_0(sK1)
    | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
    | ~ spl3_3
    | ~ spl3_14 ),
    inference(resolution,[],[f153,f82])).

fof(f82,plain,
    ( v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ spl3_3 ),
    inference(avatar_component_clause,[],[f80])).

fof(f153,plain,
    ( ! [X0] :
        ( ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
        | k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X0)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),X0,k1_tarski(k1_xboole_0))
        | v1_xboole_0(X0)
        | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
        | ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) )
    | ~ spl3_14 ),
    inference(avatar_component_clause,[],[f152])).

fof(f154,plain,
    ( spl3_8
    | spl3_14
    | ~ spl3_7 ),
    inference(avatar_split_clause,[],[f150,f100,f152,f105])).

fof(f105,plain,
    ( spl3_8
  <=> v2_struct_0(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_8])])).

fof(f100,plain,
    ( spl3_7
  <=> l1_struct_0(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_7])])).

fof(f150,plain,
    ( ! [X0] :
        ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
        | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
        | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
        | v1_xboole_0(X0)
        | k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X0)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),X0,k1_tarski(k1_xboole_0))
        | v2_struct_0(sK0) )
    | ~ spl3_7 ),
    inference(resolution,[],[f65,f102])).

fof(f102,plain,
    ( l1_struct_0(sK0)
    | ~ spl3_7 ),
    inference(avatar_component_clause,[],[f100])).

fof(f65,plain,(
    ! [X0,X1] :
      ( ~ l1_struct_0(X0)
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | v1_xboole_0(X1)
      | k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))),X1,k1_tarski(k1_xboole_0))
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f50,f46,f59,f46,f46,f46])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
      | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

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
    inference(flattening,[],[f23])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

% (8553)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
fof(f12,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t14_yellow19)).

fof(f148,plain,
    ( ~ spl3_13
    | ~ spl3_12 ),
    inference(avatar_split_clause,[],[f143,f138,f145])).

fof(f145,plain,
    ( spl3_13
  <=> r2_hidden(k1_xboole_0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).

fof(f143,plain,
    ( ~ r2_hidden(k1_xboole_0,sK1)
    | ~ spl3_12 ),
    inference(trivial_inequality_removal,[],[f142])).

fof(f142,plain,
    ( sK1 != sK1
    | ~ r2_hidden(k1_xboole_0,sK1)
    | ~ spl3_12 ),
    inference(superposition,[],[f67,f140])).

% (8546)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
fof(f67,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) != X0
      | ~ r2_hidden(X1,X0) ) ),
    inference(definition_unfolding,[],[f54,f53])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,k1_tarski(X1)) = X0
        | r2_hidden(X1,X0) )
      & ( ~ r2_hidden(X1,X0)
        | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
    <=> ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_zfmisc_1)).

fof(f141,plain,
    ( spl3_12
    | spl3_11
    | ~ spl3_2
    | ~ spl3_4
    | ~ spl3_3
    | ~ spl3_5
    | ~ spl3_9 ),
    inference(avatar_split_clause,[],[f136,f113,f90,f80,f85,f75,f126,f138])).

fof(f126,plain,
    ( spl3_11
  <=> v1_xboole_0(k2_struct_0(sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_11])])).

fof(f90,plain,
    ( spl3_5
  <=> v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).

fof(f113,plain,
    ( spl3_9
  <=> v1_xboole_0(k1_xboole_0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_9])])).

fof(f136,plain,
    ( ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))
    | v1_xboole_0(k2_struct_0(sK0))
    | sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0)))
    | ~ spl3_5
    | ~ spl3_9 ),
    inference(resolution,[],[f135,f92])).

fof(f92,plain,
    ( v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))
    | ~ spl3_5 ),
    inference(avatar_component_clause,[],[f90])).

fof(f135,plain,
    ( ! [X0,X1] :
        ( ~ v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
        | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
        | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
        | ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))))
        | v1_xboole_0(X1)
        | k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(k1_xboole_0))) = X0 )
    | ~ spl3_9 ),
    inference(resolution,[],[f134,f66])).

fof(f66,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) = X0 ) ),
    inference(definition_unfolding,[],[f55,f53])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
      | r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f134,plain,
    ( ! [X0,X1] :
        ( ~ r2_hidden(k1_xboole_0,X0)
        | ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))))
        | ~ v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
        | ~ v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1)))
        | ~ v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
        | v1_xboole_0(X1) )
    | ~ spl3_9 ),
    inference(resolution,[],[f109,f115])).

fof(f115,plain,
    ( v1_xboole_0(k1_xboole_0)
    | ~ spl3_9 ),
    inference(avatar_component_clause,[],[f113])).

fof(f109,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0))))
      | v1_xboole_0(X0) ) ),
    inference(subsumption_resolution,[],[f64,f51])).

fof(f51,plain,(
    ! [X2,X0] :
      ( ~ v1_xboole_0(X0)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK2(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f31,f32])).

fof(f32,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f30])).

fof(f30,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X0)))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0)))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0))))
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f47,f59,f46,f46,f46,f46])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0))))
      | ~ v13_waybel_0(X1,k3_yellow_1(X0))
      | ~ v2_waybel_0(X1,k3_yellow_1(X0))
      | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0)))
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
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
    inference(flattening,[],[f18])).

fof(f18,plain,(
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
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_yellow19)).

fof(f129,plain,
    ( spl3_8
    | ~ spl3_7
    | ~ spl3_11
    | ~ spl3_10 ),
    inference(avatar_split_clause,[],[f124,f120,f126,f100,f105])).

fof(f120,plain,
    ( spl3_10
  <=> k2_struct_0(sK0) = u1_struct_0(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).

fof(f124,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK0))
    | ~ l1_struct_0(sK0)
    | v2_struct_0(sK0)
    | ~ spl3_10 ),
    inference(superposition,[],[f49,f122])).

fof(f122,plain,
    ( k2_struct_0(sK0) = u1_struct_0(sK0)
    | ~ spl3_10 ),
    inference(avatar_component_clause,[],[f120])).

fof(f49,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f21,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

fof(f123,plain,
    ( spl3_10
    | ~ spl3_7 ),
    inference(avatar_split_clause,[],[f118,f100,f120])).

fof(f118,plain,
    ( k2_struct_0(sK0) = u1_struct_0(sK0)
    | ~ spl3_7 ),
    inference(resolution,[],[f48,f102])).

fof(f48,plain,(
    ! [X0] :
      ( ~ l1_struct_0(X0)
      | k2_struct_0(X0) = u1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

fof(f116,plain,(
    spl3_9 ),
    inference(avatar_split_clause,[],[f111,f113])).

fof(f111,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(resolution,[],[f110,f52])).

fof(f52,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f110,plain,(
    ! [X0] : ~ r2_hidden(X0,k1_xboole_0) ),
    inference(resolution,[],[f56,f43])).

fof(f43,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f56,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(f108,plain,(
    ~ spl3_8 ),
    inference(avatar_split_clause,[],[f35,f105])).

fof(f35,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,
    ( sK1 != k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
    & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
    & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
    & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
    & ~ v1_xboole_0(sK1)
    & l1_struct_0(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f17,f28,f27])).

fof(f27,plain,
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
          ( k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)) != X1
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
          & ~ v1_xboole_0(X1) )
      & l1_struct_0(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ? [X1] :
        ( k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)) != X1
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
        & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
        & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
        & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
        & ~ v1_xboole_0(X1) )
   => ( sK1 != k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))
      & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
      & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
      & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
      & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
      & ~ v1_xboole_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
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
    inference(flattening,[],[f16])).

fof(f16,plain,(
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
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
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
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t15_yellow19)).

fof(f103,plain,(
    spl3_7 ),
    inference(avatar_split_clause,[],[f36,f100])).

fof(f36,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f98,plain,(
    ~ spl3_6 ),
    inference(avatar_split_clause,[],[f37,f95])).

fof(f37,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f29])).

fof(f93,plain,(
    spl3_5 ),
    inference(avatar_split_clause,[],[f63,f90])).

fof(f63,plain,(
    v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) ),
    inference(definition_unfolding,[],[f38,f46])).

fof(f38,plain,(
    v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f29])).

fof(f88,plain,(
    spl3_4 ),
    inference(avatar_split_clause,[],[f62,f85])).

fof(f62,plain,(
    v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    inference(definition_unfolding,[],[f39,f46])).

fof(f39,plain,(
    v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f29])).

fof(f83,plain,(
    spl3_3 ),
    inference(avatar_split_clause,[],[f61,f80])).

fof(f61,plain,(
    v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    inference(definition_unfolding,[],[f40,f46])).

fof(f40,plain,(
    v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f29])).

fof(f78,plain,(
    spl3_2 ),
    inference(avatar_split_clause,[],[f60,f75])).

% (8548)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
fof(f60,plain,(
    m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) ),
    inference(definition_unfolding,[],[f41,f59,f46])).

fof(f41,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) ),
    inference(cnf_transformation,[],[f29])).

fof(f73,plain,(
    ~ spl3_1 ),
    inference(avatar_split_clause,[],[f42,f70])).

fof(f42,plain,(
    sK1 != k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) ),
    inference(cnf_transformation,[],[f29])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 12:55:38 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.42  % (8551)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 0.21/0.47  % (8552)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.21/0.47  % (8545)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.21/0.48  % (8554)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.21/0.48  % (8551)Refutation found. Thanks to Tanya!
% 0.21/0.48  % SZS status Theorem for theBenchmark
% 0.21/0.48  % SZS output start Proof for theBenchmark
% 0.21/0.48  fof(f159,plain,(
% 0.21/0.48    $false),
% 0.21/0.48    inference(avatar_sat_refutation,[],[f73,f78,f83,f88,f93,f98,f103,f108,f116,f123,f129,f141,f148,f154,f158])).
% 0.21/0.48  fof(f158,plain,(
% 0.21/0.48    ~spl3_2 | ~spl3_4 | spl3_6 | spl3_1 | ~spl3_2 | ~spl3_3 | ~spl3_12 | ~spl3_14),
% 0.21/0.48    inference(avatar_split_clause,[],[f157,f152,f138,f80,f75,f70,f95,f85,f75])).
% 0.21/0.48  fof(f85,plain,(
% 0.21/0.48    spl3_4 <=> v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).
% 0.21/0.48  fof(f95,plain,(
% 0.21/0.48    spl3_6 <=> v1_xboole_0(sK1)),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).
% 0.21/0.48  fof(f70,plain,(
% 0.21/0.48    spl3_1 <=> sK1 = k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 0.21/0.48  fof(f75,plain,(
% 0.21/0.48    spl3_2 <=> m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 0.21/0.48  fof(f80,plain,(
% 0.21/0.48    spl3_3 <=> v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).
% 0.21/0.48  fof(f138,plain,(
% 0.21/0.48    spl3_12 <=> sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0)))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).
% 0.21/0.48  fof(f152,plain,(
% 0.21/0.48    spl3_14 <=> ! [X0] : (~m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X0)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),X0,k1_tarski(k1_xboole_0)) | v1_xboole_0(X0) | ~v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_14])])).
% 0.21/0.48  fof(f157,plain,(
% 0.21/0.48    sK1 = k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | v1_xboole_0(sK1) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | (~spl3_2 | ~spl3_3 | ~spl3_12 | ~spl3_14)),
% 0.21/0.48    inference(forward_demodulation,[],[f156,f140])).
% 0.21/0.48  fof(f140,plain,(
% 0.21/0.48    sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0))) | ~spl3_12),
% 0.21/0.48    inference(avatar_component_clause,[],[f138])).
% 0.21/0.48  fof(f156,plain,(
% 0.21/0.48    k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0))) | v1_xboole_0(sK1) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | (~spl3_2 | ~spl3_3 | ~spl3_14)),
% 0.21/0.48    inference(forward_demodulation,[],[f155,f133])).
% 0.21/0.48  fof(f133,plain,(
% 0.21/0.48    ( ! [X0] : (k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),sK1,X0) = k5_xboole_0(sK1,k3_xboole_0(sK1,X0))) ) | ~spl3_2),
% 0.21/0.48    inference(resolution,[],[f68,f77])).
% 0.21/0.48  fof(f77,plain,(
% 0.21/0.48    m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | ~spl3_2),
% 0.21/0.48    inference(avatar_component_clause,[],[f75])).
% 0.21/0.48  fof(f68,plain,(
% 0.21/0.48    ( ! [X2,X0,X1] : (~m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0)))) | k7_subset_1(X0,X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2))) )),
% 0.21/0.48    inference(definition_unfolding,[],[f57,f53,f59])).
% 0.21/0.48  fof(f59,plain,(
% 0.21/0.48    ( ! [X0] : (k1_zfmisc_1(X0) = u1_struct_0(k3_lattice3(k1_lattice3(X0)))) )),
% 0.21/0.48    inference(definition_unfolding,[],[f44,f58])).
% 0.21/0.48  fof(f58,plain,(
% 0.21/0.48    ( ! [X0] : (k9_setfam_1(X0) = u1_struct_0(k3_lattice3(k1_lattice3(X0)))) )),
% 0.21/0.48    inference(definition_unfolding,[],[f45,f46])).
% 0.21/0.48  fof(f46,plain,(
% 0.21/0.48    ( ! [X0] : (k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))) )),
% 0.21/0.48    inference(cnf_transformation,[],[f10])).
% 0.21/0.48  fof(f10,axiom,(
% 0.21/0.48    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_yellow_1)).
% 0.21/0.48  fof(f45,plain,(
% 0.21/0.48    ( ! [X0] : (k9_setfam_1(X0) = u1_struct_0(k3_yellow_1(X0))) )),
% 0.21/0.48    inference(cnf_transformation,[],[f11])).
% 0.21/0.48  fof(f11,axiom,(
% 0.21/0.48    ! [X0] : k9_setfam_1(X0) = u1_struct_0(k3_yellow_1(X0))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_waybel_7)).
% 0.21/0.48  fof(f44,plain,(
% 0.21/0.48    ( ! [X0] : (k1_zfmisc_1(X0) = k9_setfam_1(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f7])).
% 0.21/0.48  fof(f7,axiom,(
% 0.21/0.48    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0)),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k9_setfam_1)).
% 0.21/0.48  fof(f53,plain,(
% 0.21/0.48    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.21/0.48    inference(cnf_transformation,[],[f2])).
% 0.21/0.48  fof(f2,axiom,(
% 0.21/0.48    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.21/0.48  fof(f57,plain,(
% 0.21/0.48    ( ! [X2,X0,X1] : (k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.21/0.48    inference(cnf_transformation,[],[f26])).
% 0.21/0.48  fof(f26,plain,(
% 0.21/0.48    ! [X0,X1,X2] : (k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.21/0.48    inference(ennf_transformation,[],[f5])).
% 0.21/0.48  fof(f5,axiom,(
% 0.21/0.48    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_subset_1)).
% 0.21/0.48  fof(f155,plain,(
% 0.21/0.48    k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),sK1,k1_tarski(k1_xboole_0)) | v1_xboole_0(sK1) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | (~spl3_3 | ~spl3_14)),
% 0.21/0.48    inference(resolution,[],[f153,f82])).
% 0.21/0.48  fof(f82,plain,(
% 0.21/0.48    v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~spl3_3),
% 0.21/0.48    inference(avatar_component_clause,[],[f80])).
% 0.21/0.48  fof(f153,plain,(
% 0.21/0.48    ( ! [X0] : (~v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X0)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),X0,k1_tarski(k1_xboole_0)) | v1_xboole_0(X0) | ~v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))) ) | ~spl3_14),
% 0.21/0.48    inference(avatar_component_clause,[],[f152])).
% 0.21/0.48  fof(f154,plain,(
% 0.21/0.48    spl3_8 | spl3_14 | ~spl3_7),
% 0.21/0.48    inference(avatar_split_clause,[],[f150,f100,f152,f105])).
% 0.21/0.48  fof(f105,plain,(
% 0.21/0.48    spl3_8 <=> v2_struct_0(sK0)),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_8])])).
% 0.21/0.48  fof(f100,plain,(
% 0.21/0.48    spl3_7 <=> l1_struct_0(sK0)),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_7])])).
% 0.21/0.48  fof(f150,plain,(
% 0.21/0.48    ( ! [X0] : (~m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | ~v13_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(X0,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | v1_xboole_0(X0) | k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X0)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))),X0,k1_tarski(k1_xboole_0)) | v2_struct_0(sK0)) ) | ~spl3_7),
% 0.21/0.48    inference(resolution,[],[f65,f102])).
% 0.21/0.48  fof(f102,plain,(
% 0.21/0.48    l1_struct_0(sK0) | ~spl3_7),
% 0.21/0.48    inference(avatar_component_clause,[],[f100])).
% 0.21/0.48  fof(f65,plain,(
% 0.21/0.48    ( ! [X0,X1] : (~l1_struct_0(X0) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | v1_xboole_0(X1) | k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = k7_subset_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))),X1,k1_tarski(k1_xboole_0)) | v2_struct_0(X0)) )),
% 0.21/0.48    inference(definition_unfolding,[],[f50,f46,f59,f46,f46,f46])).
% 0.21/0.48  fof(f50,plain,(
% 0.21/0.48    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f24])).
% 0.21/0.48  fof(f24,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.21/0.48    inference(flattening,[],[f23])).
% 0.21/0.48  fof(f23,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | v1_xboole_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.21/0.48    inference(ennf_transformation,[],[f12])).
% 0.21/0.48  % (8553)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.21/0.48  fof(f12,axiom,(
% 0.21/0.48    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & ~v1_xboole_0(X1)) => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))),X1,k1_tarski(k1_xboole_0)) = k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1))))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t14_yellow19)).
% 0.21/0.48  fof(f148,plain,(
% 0.21/0.48    ~spl3_13 | ~spl3_12),
% 0.21/0.48    inference(avatar_split_clause,[],[f143,f138,f145])).
% 0.21/0.48  fof(f145,plain,(
% 0.21/0.48    spl3_13 <=> r2_hidden(k1_xboole_0,sK1)),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).
% 0.21/0.48  fof(f143,plain,(
% 0.21/0.48    ~r2_hidden(k1_xboole_0,sK1) | ~spl3_12),
% 0.21/0.48    inference(trivial_inequality_removal,[],[f142])).
% 0.21/0.48  fof(f142,plain,(
% 0.21/0.48    sK1 != sK1 | ~r2_hidden(k1_xboole_0,sK1) | ~spl3_12),
% 0.21/0.48    inference(superposition,[],[f67,f140])).
% 0.21/0.48  % (8546)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.21/0.48  fof(f67,plain,(
% 0.21/0.48    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) != X0 | ~r2_hidden(X1,X0)) )),
% 0.21/0.48    inference(definition_unfolding,[],[f54,f53])).
% 0.21/0.48  fof(f54,plain,(
% 0.21/0.48    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0) )),
% 0.21/0.48    inference(cnf_transformation,[],[f34])).
% 0.21/0.48  fof(f34,plain,(
% 0.21/0.48    ! [X0,X1] : ((k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) & (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0))),
% 0.21/0.48    inference(nnf_transformation,[],[f4])).
% 0.21/0.48  fof(f4,axiom,(
% 0.21/0.48    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 <=> ~r2_hidden(X1,X0))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_zfmisc_1)).
% 0.21/0.48  fof(f141,plain,(
% 0.21/0.48    spl3_12 | spl3_11 | ~spl3_2 | ~spl3_4 | ~spl3_3 | ~spl3_5 | ~spl3_9),
% 0.21/0.48    inference(avatar_split_clause,[],[f136,f113,f90,f80,f85,f75,f126,f138])).
% 0.21/0.48  fof(f126,plain,(
% 0.21/0.48    spl3_11 <=> v1_xboole_0(k2_struct_0(sK0))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_11])])).
% 0.21/0.48  fof(f90,plain,(
% 0.21/0.48    spl3_5 <=> v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).
% 0.21/0.48  fof(f113,plain,(
% 0.21/0.48    spl3_9 <=> v1_xboole_0(k1_xboole_0)),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_9])])).
% 0.21/0.48  fof(f136,plain,(
% 0.21/0.48    ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))))) | v1_xboole_0(k2_struct_0(sK0)) | sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k1_tarski(k1_xboole_0))) | (~spl3_5 | ~spl3_9)),
% 0.21/0.48    inference(resolution,[],[f135,f92])).
% 0.21/0.48  fof(f92,plain,(
% 0.21/0.48    v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) | ~spl3_5),
% 0.21/0.48    inference(avatar_component_clause,[],[f90])).
% 0.21/0.48  fof(f135,plain,(
% 0.21/0.48    ( ! [X0,X1] : (~v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1)))) | ~v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1))) | ~v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1))) | ~m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X1))))))) | v1_xboole_0(X1) | k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(k1_xboole_0))) = X0) ) | ~spl3_9),
% 0.21/0.48    inference(resolution,[],[f134,f66])).
% 0.21/0.48  fof(f66,plain,(
% 0.21/0.48    ( ! [X0,X1] : (r2_hidden(X1,X0) | k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) = X0) )),
% 0.21/0.48    inference(definition_unfolding,[],[f55,f53])).
% 0.21/0.48  fof(f55,plain,(
% 0.21/0.48    ( ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f34])).
% 0.21/0.48  fof(f134,plain,(
% 0.21/0.48    ( ! [X0,X1] : (~r2_hidden(k1_xboole_0,X0) | ~m1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X1))))))) | ~v13_waybel_0(X0,k3_lattice3(k1_lattice3(X1))) | ~v2_waybel_0(X0,k3_lattice3(k1_lattice3(X1))) | ~v1_subset_1(X0,u1_struct_0(k3_lattice3(k1_lattice3(X1)))) | v1_xboole_0(X1)) ) | ~spl3_9),
% 0.21/0.48    inference(resolution,[],[f109,f115])).
% 0.21/0.48  fof(f115,plain,(
% 0.21/0.48    v1_xboole_0(k1_xboole_0) | ~spl3_9),
% 0.21/0.48    inference(avatar_component_clause,[],[f113])).
% 0.21/0.48  fof(f109,plain,(
% 0.21/0.48    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X0))))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0)))) | v1_xboole_0(X0)) )),
% 0.21/0.48    inference(subsumption_resolution,[],[f64,f51])).
% 0.21/0.48  fof(f51,plain,(
% 0.21/0.48    ( ! [X2,X0] : (~v1_xboole_0(X0) | ~r2_hidden(X2,X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f33])).
% 0.21/0.48  fof(f33,plain,(
% 0.21/0.48    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK2(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 0.21/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f31,f32])).
% 0.21/0.48  fof(f32,plain,(
% 0.21/0.48    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 0.21/0.48    introduced(choice_axiom,[])).
% 0.21/0.48  fof(f31,plain,(
% 0.21/0.48    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 0.21/0.48    inference(rectify,[],[f30])).
% 0.21/0.48  fof(f30,plain,(
% 0.21/0.48    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 0.21/0.48    inference(nnf_transformation,[],[f1])).
% 0.21/0.48  fof(f1,axiom,(
% 0.21/0.48    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).
% 0.21/0.48  fof(f64,plain,(
% 0.21/0.48    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(X0))))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(X0)))) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 0.21/0.48    inference(definition_unfolding,[],[f47,f59,f46,f46,f46,f46])).
% 0.21/0.48  fof(f47,plain,(
% 0.21/0.48    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f19])).
% 0.21/0.48  fof(f19,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (! [X2] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 0.21/0.48    inference(flattening,[],[f18])).
% 0.21/0.48  fof(f18,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (! [X2] : (~v1_xboole_0(X2) | ~r2_hidden(X2,X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) | ~v13_waybel_0(X1,k3_yellow_1(X0)) | ~v2_waybel_0(X1,k3_yellow_1(X0)) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) | v1_xboole_0(X1))) | v1_xboole_0(X0))),
% 0.21/0.48    inference(ennf_transformation,[],[f13])).
% 0.21/0.48  fof(f13,axiom,(
% 0.21/0.48    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X0)))) & v13_waybel_0(X1,k3_yellow_1(X0)) & v2_waybel_0(X1,k3_yellow_1(X0)) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(X0))) & ~v1_xboole_0(X1)) => ! [X2] : ~(v1_xboole_0(X2) & r2_hidden(X2,X1))))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_yellow19)).
% 0.21/0.48  fof(f129,plain,(
% 0.21/0.48    spl3_8 | ~spl3_7 | ~spl3_11 | ~spl3_10),
% 0.21/0.48    inference(avatar_split_clause,[],[f124,f120,f126,f100,f105])).
% 0.21/0.48  fof(f120,plain,(
% 0.21/0.48    spl3_10 <=> k2_struct_0(sK0) = u1_struct_0(sK0)),
% 0.21/0.48    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).
% 0.21/0.48  fof(f124,plain,(
% 0.21/0.48    ~v1_xboole_0(k2_struct_0(sK0)) | ~l1_struct_0(sK0) | v2_struct_0(sK0) | ~spl3_10),
% 0.21/0.48    inference(superposition,[],[f49,f122])).
% 0.21/0.48  fof(f122,plain,(
% 0.21/0.48    k2_struct_0(sK0) = u1_struct_0(sK0) | ~spl3_10),
% 0.21/0.48    inference(avatar_component_clause,[],[f120])).
% 0.21/0.49  fof(f49,plain,(
% 0.21/0.49    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f22])).
% 0.21/0.49  fof(f22,plain,(
% 0.21/0.49    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.21/0.49    inference(flattening,[],[f21])).
% 0.21/0.49  fof(f21,plain,(
% 0.21/0.49    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.21/0.49    inference(ennf_transformation,[],[f9])).
% 0.21/0.49  fof(f9,axiom,(
% 0.21/0.49    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).
% 0.21/0.49  fof(f123,plain,(
% 0.21/0.49    spl3_10 | ~spl3_7),
% 0.21/0.49    inference(avatar_split_clause,[],[f118,f100,f120])).
% 0.21/0.49  fof(f118,plain,(
% 0.21/0.49    k2_struct_0(sK0) = u1_struct_0(sK0) | ~spl3_7),
% 0.21/0.49    inference(resolution,[],[f48,f102])).
% 0.21/0.49  fof(f48,plain,(
% 0.21/0.49    ( ! [X0] : (~l1_struct_0(X0) | k2_struct_0(X0) = u1_struct_0(X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f20,plain,(
% 0.21/0.49    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 0.21/0.49    inference(ennf_transformation,[],[f8])).
% 0.21/0.49  fof(f8,axiom,(
% 0.21/0.49    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).
% 0.21/0.49  fof(f116,plain,(
% 0.21/0.49    spl3_9),
% 0.21/0.49    inference(avatar_split_clause,[],[f111,f113])).
% 0.21/0.49  fof(f111,plain,(
% 0.21/0.49    v1_xboole_0(k1_xboole_0)),
% 0.21/0.49    inference(resolution,[],[f110,f52])).
% 0.21/0.49  fof(f52,plain,(
% 0.21/0.49    ( ! [X0] : (r2_hidden(sK2(X0),X0) | v1_xboole_0(X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f33])).
% 0.21/0.49  fof(f110,plain,(
% 0.21/0.49    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0)) )),
% 0.21/0.49    inference(resolution,[],[f56,f43])).
% 0.21/0.49  fof(f43,plain,(
% 0.21/0.49    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f3])).
% 0.21/0.49  fof(f3,axiom,(
% 0.21/0.49    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).
% 0.21/0.49  fof(f56,plain,(
% 0.21/0.49    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f25])).
% 0.21/0.49  fof(f25,plain,(
% 0.21/0.49    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f6])).
% 0.21/0.49  fof(f6,axiom,(
% 0.21/0.49    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).
% 0.21/0.49  fof(f108,plain,(
% 0.21/0.49    ~spl3_8),
% 0.21/0.49    inference(avatar_split_clause,[],[f35,f105])).
% 0.21/0.49  fof(f35,plain,(
% 0.21/0.49    ~v2_struct_0(sK0)),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f29,plain,(
% 0.21/0.49    (sK1 != k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(sK1)) & l1_struct_0(sK0) & ~v2_struct_0(sK0)),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f17,f28,f27])).
% 0.21/0.49  fof(f27,plain,(
% 0.21/0.49    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (? [X1] : (k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(X1)) & l1_struct_0(sK0) & ~v2_struct_0(sK0))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f28,plain,(
% 0.21/0.49    ? [X1] : (k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(X1)) => (sK1 != k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(sK1))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f17,plain,(
% 0.21/0.49    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0))),
% 0.21/0.49    inference(flattening,[],[f16])).
% 0.21/0.49  fof(f16,plain,(
% 0.21/0.49    ? [X0] : (? [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) != X1 & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1))) & (l1_struct_0(X0) & ~v2_struct_0(X0)))),
% 0.21/0.49    inference(ennf_transformation,[],[f15])).
% 0.21/0.49  fof(f15,negated_conjecture,(
% 0.21/0.49    ~! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 0.21/0.49    inference(negated_conjecture,[],[f14])).
% 0.21/0.49  fof(f14,conjecture,(
% 0.21/0.49    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t15_yellow19)).
% 0.21/0.49  fof(f103,plain,(
% 0.21/0.49    spl3_7),
% 0.21/0.49    inference(avatar_split_clause,[],[f36,f100])).
% 0.21/0.49  fof(f36,plain,(
% 0.21/0.49    l1_struct_0(sK0)),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f98,plain,(
% 0.21/0.49    ~spl3_6),
% 0.21/0.49    inference(avatar_split_clause,[],[f37,f95])).
% 0.21/0.49  fof(f37,plain,(
% 0.21/0.49    ~v1_xboole_0(sK1)),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f93,plain,(
% 0.21/0.49    spl3_5),
% 0.21/0.49    inference(avatar_split_clause,[],[f63,f90])).
% 0.21/0.49  fof(f63,plain,(
% 0.21/0.49    v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))),
% 0.21/0.49    inference(definition_unfolding,[],[f38,f46])).
% 0.21/0.49  fof(f38,plain,(
% 0.21/0.49    v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f88,plain,(
% 0.21/0.49    spl3_4),
% 0.21/0.49    inference(avatar_split_clause,[],[f62,f85])).
% 0.21/0.49  fof(f62,plain,(
% 0.21/0.49    v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.21/0.49    inference(definition_unfolding,[],[f39,f46])).
% 0.21/0.49  fof(f39,plain,(
% 0.21/0.49    v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f83,plain,(
% 0.21/0.49    spl3_3),
% 0.21/0.49    inference(avatar_split_clause,[],[f61,f80])).
% 0.21/0.49  fof(f61,plain,(
% 0.21/0.49    v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.21/0.49    inference(definition_unfolding,[],[f40,f46])).
% 0.21/0.49  fof(f40,plain,(
% 0.21/0.49    v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f78,plain,(
% 0.21/0.49    spl3_2),
% 0.21/0.49    inference(avatar_split_clause,[],[f60,f75])).
% 0.21/0.49  % (8548)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.21/0.49  fof(f60,plain,(
% 0.21/0.49    m1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))))),
% 0.21/0.49    inference(definition_unfolding,[],[f41,f59,f46])).
% 0.21/0.49  fof(f41,plain,(
% 0.21/0.49    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f73,plain,(
% 0.21/0.49    ~spl3_1),
% 0.21/0.49    inference(avatar_split_clause,[],[f42,f70])).
% 0.21/0.49  fof(f42,plain,(
% 0.21/0.49    sK1 != k2_yellow19(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  % SZS output end Proof for theBenchmark
% 0.21/0.49  % (8551)------------------------------
% 0.21/0.49  % (8551)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.49  % (8551)Termination reason: Refutation
% 0.21/0.49  
% 0.21/0.49  % (8551)Memory used [KB]: 6268
% 0.21/0.49  % (8551)Time elapsed: 0.071 s
% 0.21/0.49  % (8551)------------------------------
% 0.21/0.49  % (8551)------------------------------
% 0.21/0.49  % (8539)Success in time 0.129 s
%------------------------------------------------------------------------------
