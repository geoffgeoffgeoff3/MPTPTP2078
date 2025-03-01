%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:23:35 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  187 ( 516 expanded)
%              Number of leaves         :   41 ( 223 expanded)
%              Depth                    :   11
%              Number of atoms          :  960 (3587 expanded)
%              Number of equality atoms :   12 (  76 expanded)
%              Maximal formula depth    :   21 (   6 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f316,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f93,f94,f124,f159,f163,f165,f189,f198,f200,f202,f205,f206,f208,f216,f229,f232,f284,f287,f293,f295,f301,f304,f305,f310,f312,f315])).

fof(f315,plain,
    ( ~ spl3_3
    | spl3_15
    | ~ spl3_21
    | ~ spl3_16
    | ~ spl3_17
    | ~ spl3_23
    | spl3_12
    | ~ spl3_13
    | ~ spl3_10
    | spl3_24
    | ~ spl3_25
    | ~ spl3_26
    | ~ spl3_27
    | ~ spl3_28
    | spl3_2
    | ~ spl3_1 ),
    inference(avatar_split_clause,[],[f313,f86,f90,f281,f277,f273,f269,f265,f144,f156,f152,f261,f183,f179,f223,f175,f101])).

fof(f101,plain,
    ( spl3_3
  <=> l1_struct_0(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).

fof(f175,plain,
    ( spl3_15
  <=> v1_xboole_0(sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_15])])).

fof(f223,plain,
    ( spl3_21
  <=> v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_21])])).

fof(f179,plain,
    ( spl3_16
  <=> v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_16])])).

fof(f183,plain,
    ( spl3_17
  <=> v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_17])])).

fof(f261,plain,
    ( spl3_23
  <=> m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_23])])).

fof(f152,plain,
    ( spl3_12
  <=> v2_struct_0(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).

fof(f156,plain,
    ( spl3_13
  <=> v2_pre_topc(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).

fof(f144,plain,
    ( spl3_10
  <=> l1_pre_topc(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).

fof(f265,plain,
    ( spl3_24
  <=> v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_24])])).

fof(f269,plain,
    ( spl3_25
  <=> v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_25])])).

fof(f273,plain,
    ( spl3_26
  <=> v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_26])])).

fof(f277,plain,
    ( spl3_27
  <=> l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_27])])).

fof(f281,plain,
    ( spl3_28
  <=> m1_subset_1(sK2,u1_struct_0(sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_28])])).

fof(f90,plain,
    ( spl3_2
  <=> r2_waybel_7(sK0,sK1,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f86,plain,
    ( spl3_1
  <=> r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f313,plain,
    ( r2_waybel_7(sK0,sK1,sK2)
    | ~ m1_subset_1(sK2,u1_struct_0(sK0))
    | ~ l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0)
    | ~ v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | ~ v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | ~ l1_pre_topc(sK0)
    | ~ v2_pre_topc(sK0)
    | v2_struct_0(sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))
    | ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))
    | v1_xboole_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ spl3_1 ),
    inference(resolution,[],[f87,f235])).

fof(f235,plain,(
    ! [X4,X5,X3] :
      ( ~ r2_hidden(X5,k10_yellow_6(X3,k3_yellow19(X3,k2_struct_0(X3),X4)))
      | r2_waybel_7(X3,X4,X5)
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ l1_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4),X3)
      | ~ v7_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4))
      | ~ v4_orders_2(k3_yellow19(X3,k2_struct_0(X3),X4))
      | v2_struct_0(k3_yellow19(X3,k2_struct_0(X3),X4))
      | ~ l1_pre_topc(X3)
      | ~ v2_pre_topc(X3)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3))))))
      | ~ v13_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3))))
      | ~ v2_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3))))
      | ~ v1_subset_1(X4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3)))))
      | v1_xboole_0(X4)
      | ~ l1_struct_0(X3) ) ),
    inference(duplicate_literal_removal,[],[f234])).

fof(f234,plain,(
    ! [X4,X5,X3] :
      ( r2_waybel_7(X3,X4,X5)
      | ~ r2_hidden(X5,k10_yellow_6(X3,k3_yellow19(X3,k2_struct_0(X3),X4)))
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ l1_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4),X3)
      | ~ v7_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4))
      | ~ v4_orders_2(k3_yellow19(X3,k2_struct_0(X3),X4))
      | v2_struct_0(k3_yellow19(X3,k2_struct_0(X3),X4))
      | ~ l1_pre_topc(X3)
      | ~ v2_pre_topc(X3)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3))))))
      | ~ v13_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3))))
      | ~ v2_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3))))
      | ~ v1_subset_1(X4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3)))))
      | v1_xboole_0(X4)
      | ~ l1_struct_0(X3)
      | v2_struct_0(X3) ) ),
    inference(superposition,[],[f63,f78])).

fof(f78,plain,(
    ! [X0,X1] :
      ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f65,f59,f59,f59,f59])).

fof(f59,plain,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_yellow_1)).

fof(f65,plain,(
    ! [X0,X1] :
      ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
      | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
      | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          | ~ v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          | ~ v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          | v1_xboole_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_yellow19)).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( r2_waybel_7(X0,k2_yellow19(X0,X1),X2)
      | ~ r2_hidden(X2,k10_yellow_6(X0,X1))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f45,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k10_yellow_6(X0,X1))
                  | ~ r2_waybel_7(X0,k2_yellow19(X0,X1),X2) )
                & ( r2_waybel_7(X0,k2_yellow19(X0,X1),X2)
                  | ~ r2_hidden(X2,k10_yellow_6(X0,X1)) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,k10_yellow_6(X0,X1))
              <=> r2_waybel_7(X0,k2_yellow19(X0,X1),X2) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,k10_yellow_6(X0,X1))
              <=> r2_waybel_7(X0,k2_yellow19(X0,X1),X2) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r2_hidden(X2,k10_yellow_6(X0,X1))
              <=> r2_waybel_7(X0,k2_yellow19(X0,X1),X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t13_yellow19)).

fof(f87,plain,
    ( r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))
    | ~ spl3_1 ),
    inference(avatar_component_clause,[],[f86])).

fof(f312,plain,
    ( ~ spl3_29
    | ~ spl3_3
    | spl3_12
    | ~ spl3_19
    | ~ spl3_24 ),
    inference(avatar_split_clause,[],[f311,f265,f196,f152,f101,f290])).

fof(f290,plain,
    ( spl3_29
  <=> m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_29])])).

fof(f196,plain,
    ( spl3_19
  <=> ! [X5] :
        ( ~ v2_struct_0(k3_yellow19(X5,k2_struct_0(sK0),sK1))
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_19])])).

fof(f311,plain,
    ( v2_struct_0(sK0)
    | ~ l1_struct_0(sK0)
    | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ spl3_19
    | ~ spl3_24 ),
    inference(resolution,[],[f267,f197])).

fof(f197,plain,
    ( ! [X5] :
        ( ~ v2_struct_0(k3_yellow19(X5,k2_struct_0(sK0),sK1))
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) )
    | ~ spl3_19 ),
    inference(avatar_component_clause,[],[f196])).

fof(f267,plain,
    ( v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | ~ spl3_24 ),
    inference(avatar_component_clause,[],[f265])).

fof(f310,plain,(
    spl3_23 ),
    inference(avatar_contradiction_clause,[],[f308])).

fof(f308,plain,
    ( $false
    | spl3_23 ),
    inference(resolution,[],[f263,f74])).

fof(f74,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))) ),
    inference(definition_unfolding,[],[f53,f59])).

fof(f53,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) ),
    inference(cnf_transformation,[],[f44])).

fof(f44,plain,
    ( ( ~ r2_waybel_7(sK0,sK1,sK2)
      | ~ r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
    & ( r2_waybel_7(sK0,sK1,sK2)
      | r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
    & m1_subset_1(sK2,u1_struct_0(sK0))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
    & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
    & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
    & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
    & ~ v1_xboole_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f40,f43,f42,f41])).

fof(f41,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ( ~ r2_waybel_7(X0,X1,X2)
                  | ~ r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) )
                & ( r2_waybel_7(X0,X1,X2)
                  | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) )
                & m1_subset_1(X2,u1_struct_0(X0)) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
            & ~ v1_xboole_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r2_waybel_7(sK0,X1,X2)
                | ~ r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1))) )
              & ( r2_waybel_7(sK0,X1,X2)
                | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1))) )
              & m1_subset_1(X2,u1_struct_0(sK0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ? [X1] :
        ( ? [X2] :
            ( ( ~ r2_waybel_7(sK0,X1,X2)
              | ~ r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1))) )
            & ( r2_waybel_7(sK0,X1,X2)
              | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1))) )
            & m1_subset_1(X2,u1_struct_0(sK0)) )
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
        & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
        & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0)))
        & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
        & ~ v1_xboole_0(X1) )
   => ( ? [X2] :
          ( ( ~ r2_waybel_7(sK0,sK1,X2)
            | ~ r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
          & ( r2_waybel_7(sK0,sK1,X2)
            | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
          & m1_subset_1(X2,u1_struct_0(sK0)) )
      & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))
      & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
      & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))
      & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))
      & ~ v1_xboole_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,
    ( ? [X2] :
        ( ( ~ r2_waybel_7(sK0,sK1,X2)
          | ~ r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
        & ( r2_waybel_7(sK0,sK1,X2)
          | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
        & m1_subset_1(X2,u1_struct_0(sK0)) )
   => ( ( ~ r2_waybel_7(sK0,sK1,sK2)
        | ~ r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
      & ( r2_waybel_7(sK0,sK1,sK2)
        | r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) )
      & m1_subset_1(sK2,u1_struct_0(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r2_waybel_7(X0,X1,X2)
                | ~ r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) )
              & ( r2_waybel_7(X0,X1,X2)
                | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) )
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f39])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r2_waybel_7(X0,X1,X2)
                | ~ r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) )
              & ( r2_waybel_7(X0,X1,X2)
                | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) )
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))
              <~> r2_waybel_7(X0,X1,X2) )
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))
              <~> r2_waybel_7(X0,X1,X2) )
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
          & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
          & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
              & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
              & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
              & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
              & ~ v1_xboole_0(X1) )
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => ( r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))
                <=> r2_waybel_7(X0,X1,X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0)))))
            & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0)))
            & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0))))
            & ~ v1_xboole_0(X1) )
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))
              <=> r2_waybel_7(X0,X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t18_yellow19)).

fof(f263,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))
    | spl3_23 ),
    inference(avatar_component_clause,[],[f261])).

fof(f305,plain,
    ( ~ spl3_29
    | ~ spl3_3
    | spl3_12
    | ~ spl3_20
    | spl3_27 ),
    inference(avatar_split_clause,[],[f302,f277,f214,f152,f101,f290])).

fof(f214,plain,
    ( spl3_20
  <=> ! [X5] :
        ( l1_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1),X5)
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_20])])).

fof(f302,plain,
    ( v2_struct_0(sK0)
    | ~ l1_struct_0(sK0)
    | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ spl3_20
    | spl3_27 ),
    inference(resolution,[],[f279,f215])).

fof(f215,plain,
    ( ! [X5] :
        ( l1_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1),X5)
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) )
    | ~ spl3_20 ),
    inference(avatar_component_clause,[],[f214])).

fof(f279,plain,
    ( ~ l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0)
    | spl3_27 ),
    inference(avatar_component_clause,[],[f277])).

fof(f304,plain,(
    spl3_30 ),
    inference(avatar_contradiction_clause,[],[f303])).

fof(f303,plain,
    ( $false
    | spl3_30 ),
    inference(resolution,[],[f300,f96])).

fof(f96,plain,(
    ! [X0] : m1_subset_1(X0,k1_zfmisc_1(X0)) ),
    inference(forward_demodulation,[],[f58,f57])).

fof(f57,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(f58,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(f300,plain,
    ( ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))
    | spl3_30 ),
    inference(avatar_component_clause,[],[f298])).

fof(f298,plain,
    ( spl3_30
  <=> m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_30])])).

fof(f301,plain,
    ( ~ spl3_3
    | ~ spl3_30
    | spl3_29 ),
    inference(avatar_split_clause,[],[f296,f290,f298,f101])).

fof(f296,plain,
    ( ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))
    | ~ l1_struct_0(sK0)
    | spl3_29 ),
    inference(superposition,[],[f292,f61])).

fof(f61,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(f292,plain,
    ( ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))
    | spl3_29 ),
    inference(avatar_component_clause,[],[f290])).

fof(f295,plain,
    ( ~ spl3_29
    | ~ spl3_3
    | spl3_12
    | ~ spl3_22
    | spl3_26 ),
    inference(avatar_split_clause,[],[f294,f273,f227,f152,f101,f290])).

fof(f227,plain,
    ( spl3_22
  <=> ! [X5] :
        ( v7_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1))
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_22])])).

fof(f294,plain,
    ( v2_struct_0(sK0)
    | ~ l1_struct_0(sK0)
    | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ spl3_22
    | spl3_26 ),
    inference(resolution,[],[f275,f228])).

fof(f228,plain,
    ( ! [X5] :
        ( v7_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1))
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) )
    | ~ spl3_22 ),
    inference(avatar_component_clause,[],[f227])).

fof(f275,plain,
    ( ~ v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | spl3_26 ),
    inference(avatar_component_clause,[],[f273])).

fof(f293,plain,
    ( ~ spl3_29
    | ~ spl3_3
    | spl3_12
    | ~ spl3_18
    | spl3_25 ),
    inference(avatar_split_clause,[],[f288,f269,f187,f152,f101,f290])).

fof(f187,plain,
    ( spl3_18
  <=> ! [X5] :
        ( v4_orders_2(k3_yellow19(X5,k2_struct_0(sK0),sK1))
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_18])])).

fof(f288,plain,
    ( v2_struct_0(sK0)
    | ~ l1_struct_0(sK0)
    | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ spl3_18
    | spl3_25 ),
    inference(resolution,[],[f271,f188])).

fof(f188,plain,
    ( ! [X5] :
        ( v4_orders_2(k3_yellow19(X5,k2_struct_0(sK0),sK1))
        | v2_struct_0(X5)
        | ~ l1_struct_0(X5)
        | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) )
    | ~ spl3_18 ),
    inference(avatar_component_clause,[],[f187])).

fof(f271,plain,
    ( ~ v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | spl3_25 ),
    inference(avatar_component_clause,[],[f269])).

fof(f287,plain,(
    spl3_28 ),
    inference(avatar_contradiction_clause,[],[f285])).

fof(f285,plain,
    ( $false
    | spl3_28 ),
    inference(resolution,[],[f283,f54])).

fof(f54,plain,(
    m1_subset_1(sK2,u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f44])).

fof(f283,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK0))
    | spl3_28 ),
    inference(avatar_component_clause,[],[f281])).

fof(f284,plain,
    ( ~ spl3_3
    | spl3_15
    | ~ spl3_21
    | ~ spl3_16
    | ~ spl3_17
    | ~ spl3_23
    | spl3_12
    | ~ spl3_13
    | ~ spl3_10
    | spl3_24
    | ~ spl3_25
    | ~ spl3_26
    | ~ spl3_27
    | ~ spl3_28
    | ~ spl3_2
    | spl3_1 ),
    inference(avatar_split_clause,[],[f256,f86,f90,f281,f277,f273,f269,f265,f144,f156,f152,f261,f183,f179,f223,f175,f101])).

fof(f256,plain,
    ( ~ r2_waybel_7(sK0,sK1,sK2)
    | ~ m1_subset_1(sK2,u1_struct_0(sK0))
    | ~ l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0)
    | ~ v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | ~ v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))
    | ~ l1_pre_topc(sK0)
    | ~ v2_pre_topc(sK0)
    | v2_struct_0(sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))
    | ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | ~ v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))
    | v1_xboole_0(sK1)
    | ~ l1_struct_0(sK0)
    | spl3_1 ),
    inference(resolution,[],[f236,f88])).

fof(f88,plain,
    ( ~ r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))
    | spl3_1 ),
    inference(avatar_component_clause,[],[f86])).

fof(f236,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))
      | ~ r2_waybel_7(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1),X0)
      | ~ v7_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ v4_orders_2(k3_yellow19(X0,k2_struct_0(X0),X1))
      | v2_struct_0(k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(duplicate_literal_removal,[],[f233])).

fof(f233,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_waybel_7(X0,X1,X2)
      | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1),X0)
      | ~ v7_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ v4_orders_2(k3_yellow19(X0,k2_struct_0(X0),X1))
      | v2_struct_0(k3_yellow19(X0,k2_struct_0(X0),X1))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))))
      | ~ v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0))))
      | ~ v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(superposition,[],[f64,f78])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_waybel_7(X0,k2_yellow19(X0,X1),X2)
      | r2_hidden(X2,k10_yellow_6(X0,X1))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f232,plain,(
    spl3_21 ),
    inference(avatar_contradiction_clause,[],[f230])).

fof(f230,plain,
    ( $false
    | spl3_21 ),
    inference(resolution,[],[f225,f77])).

fof(f77,plain,(
    v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) ),
    inference(definition_unfolding,[],[f50,f59])).

fof(f50,plain,(
    v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f44])).

fof(f225,plain,
    ( ~ v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))
    | spl3_21 ),
    inference(avatar_component_clause,[],[f223])).

fof(f229,plain,
    ( spl3_14
    | spl3_15
    | ~ spl3_21
    | ~ spl3_16
    | ~ spl3_17
    | spl3_22 ),
    inference(avatar_split_clause,[],[f220,f227,f183,f179,f223,f175,f171])).

fof(f171,plain,
    ( spl3_14
  <=> v1_xboole_0(k2_struct_0(sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_14])])).

fof(f220,plain,(
    ! [X5] :
      ( v7_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1))
      | ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | ~ v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))
      | v1_xboole_0(sK1)
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))
      | v1_xboole_0(k2_struct_0(sK0))
      | ~ l1_struct_0(X5)
      | v2_struct_0(X5) ) ),
    inference(resolution,[],[f83,f74])).

fof(f83,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
      | v7_waybel_0(k3_yellow19(X0,X1,X2))
      | ~ v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | ~ v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | ~ v1_subset_1(X2,u1_struct_0(k3_lattice3(k1_lattice3(X1))))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f72,f59,f59,f59,f59])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( v7_waybel_0(k3_yellow19(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | ~ v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1)))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ( v7_waybel_0(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | ~ v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1)))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f36])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( v7_waybel_0(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | ~ v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1)))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1)))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( v7_waybel_0(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1)))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( v7_waybel_0(k3_yellow19(X0,X1,X2))
        & v6_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_yellow19)).

fof(f216,plain,
    ( spl3_14
    | spl3_15
    | ~ spl3_16
    | ~ spl3_17
    | spl3_20 ),
    inference(avatar_split_clause,[],[f211,f214,f183,f179,f175,f171])).

fof(f211,plain,(
    ! [X5] :
      ( l1_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1),X5)
      | ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | v1_xboole_0(sK1)
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))
      | v1_xboole_0(k2_struct_0(sK0))
      | ~ l1_struct_0(X5)
      | v2_struct_0(X5) ) ),
    inference(resolution,[],[f81,f74])).

fof(f81,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
      | l1_waybel_0(k3_yellow19(X0,X1,X2),X0)
      | ~ v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | ~ v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f70,f59,f59,f59])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( l1_waybel_0(k3_yellow19(X0,X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( l1_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( l1_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & v6_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_yellow19)).

fof(f208,plain,(
    ~ spl3_15 ),
    inference(avatar_contradiction_clause,[],[f207])).

fof(f207,plain,
    ( $false
    | ~ spl3_15 ),
    inference(resolution,[],[f177,f49])).

fof(f49,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f177,plain,
    ( v1_xboole_0(sK1)
    | ~ spl3_15 ),
    inference(avatar_component_clause,[],[f175])).

fof(f206,plain,
    ( ~ spl3_3
    | ~ spl3_14
    | spl3_11 ),
    inference(avatar_split_clause,[],[f190,f148,f171,f101])).

fof(f148,plain,
    ( spl3_11
  <=> v1_xboole_0(u1_struct_0(sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_11])])).

fof(f190,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK0))
    | ~ l1_struct_0(sK0)
    | spl3_11 ),
    inference(superposition,[],[f150,f61])).

fof(f150,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK0))
    | spl3_11 ),
    inference(avatar_component_clause,[],[f148])).

fof(f205,plain,(
    ~ spl3_12 ),
    inference(avatar_contradiction_clause,[],[f204])).

fof(f204,plain,
    ( $false
    | ~ spl3_12 ),
    inference(resolution,[],[f154,f46])).

fof(f46,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f154,plain,
    ( v2_struct_0(sK0)
    | ~ spl3_12 ),
    inference(avatar_component_clause,[],[f152])).

fof(f202,plain,(
    spl3_17 ),
    inference(avatar_contradiction_clause,[],[f201])).

fof(f201,plain,
    ( $false
    | spl3_17 ),
    inference(resolution,[],[f185,f75])).

fof(f75,plain,(
    v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    inference(definition_unfolding,[],[f52,f59])).

fof(f52,plain,(
    v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f44])).

fof(f185,plain,
    ( ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | spl3_17 ),
    inference(avatar_component_clause,[],[f183])).

fof(f200,plain,(
    spl3_16 ),
    inference(avatar_contradiction_clause,[],[f199])).

fof(f199,plain,
    ( $false
    | spl3_16 ),
    inference(resolution,[],[f181,f76])).

fof(f76,plain,(
    v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) ),
    inference(definition_unfolding,[],[f51,f59])).

fof(f51,plain,(
    v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f44])).

fof(f181,plain,
    ( ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
    | spl3_16 ),
    inference(avatar_component_clause,[],[f179])).

fof(f198,plain,
    ( spl3_14
    | spl3_15
    | ~ spl3_16
    | ~ spl3_17
    | spl3_19 ),
    inference(avatar_split_clause,[],[f193,f196,f183,f179,f175,f171])).

fof(f193,plain,(
    ! [X5] :
      ( ~ v2_struct_0(k3_yellow19(X5,k2_struct_0(sK0),sK1))
      | ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | v1_xboole_0(sK1)
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))
      | v1_xboole_0(k2_struct_0(sK0))
      | ~ l1_struct_0(X5)
      | v2_struct_0(X5) ) ),
    inference(resolution,[],[f80,f74])).

fof(f80,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
      | ~ v2_struct_0(k3_yellow19(X0,X1,X2))
      | ~ v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | ~ v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f67,f59,f59,f59])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( ~ v2_struct_0(k3_yellow19(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( ( v4_orders_2(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( v4_orders_2(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( v4_orders_2(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    inference(pure_predicate_removal,[],[f16])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( v6_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & v4_orders_2(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
        & v13_waybel_0(X2,k3_yellow_1(X1))
        & v2_waybel_0(X2,k3_yellow_1(X1))
        & ~ v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ( v6_waybel_0(k3_yellow19(X0,X1,X2),X0)
        & v4_orders_2(k3_yellow19(X0,X1,X2))
        & v3_orders_2(k3_yellow19(X0,X1,X2))
        & ~ v2_struct_0(k3_yellow19(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc4_yellow19)).

fof(f189,plain,
    ( spl3_14
    | spl3_15
    | ~ spl3_16
    | ~ spl3_17
    | spl3_18 ),
    inference(avatar_split_clause,[],[f168,f187,f183,f179,f175,f171])).

fof(f168,plain,(
    ! [X5] :
      ( v4_orders_2(k3_yellow19(X5,k2_struct_0(sK0),sK1))
      | ~ v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | ~ v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))
      | v1_xboole_0(sK1)
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))
      | v1_xboole_0(k2_struct_0(sK0))
      | ~ l1_struct_0(X5)
      | v2_struct_0(X5) ) ),
    inference(resolution,[],[f79,f74])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1)))))
      | v4_orders_2(k3_yellow19(X0,X1,X2))
      | ~ v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | ~ v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1)))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(definition_unfolding,[],[f68,f59,f59,f59])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( v4_orders_2(k3_yellow19(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1))))
      | ~ v13_waybel_0(X2,k3_yellow_1(X1))
      | ~ v2_waybel_0(X2,k3_yellow_1(X1))
      | v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f165,plain,(
    spl3_13 ),
    inference(avatar_contradiction_clause,[],[f164])).

fof(f164,plain,
    ( $false
    | spl3_13 ),
    inference(resolution,[],[f158,f47])).

fof(f47,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f158,plain,
    ( ~ v2_pre_topc(sK0)
    | spl3_13 ),
    inference(avatar_component_clause,[],[f156])).

fof(f163,plain,(
    spl3_10 ),
    inference(avatar_contradiction_clause,[],[f162])).

fof(f162,plain,
    ( $false
    | spl3_10 ),
    inference(resolution,[],[f146,f48])).

fof(f48,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f146,plain,
    ( ~ l1_pre_topc(sK0)
    | spl3_10 ),
    inference(avatar_component_clause,[],[f144])).

fof(f159,plain,
    ( ~ spl3_10
    | ~ spl3_11
    | spl3_12
    | ~ spl3_13 ),
    inference(avatar_split_clause,[],[f141,f156,f152,f148,f144])).

fof(f141,plain,
    ( ~ v2_pre_topc(sK0)
    | v2_struct_0(sK0)
    | ~ v1_xboole_0(u1_struct_0(sK0))
    | ~ l1_pre_topc(sK0) ),
    inference(resolution,[],[f140,f54])).

fof(f140,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0)
      | ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_pre_topc(X0) ) ),
    inference(duplicate_literal_removal,[],[f139])).

fof(f139,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0)
      | ~ v1_xboole_0(u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(resolution,[],[f137,f62])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,k1_connsp_2(X0,X1))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,k1_connsp_2(X0,X1))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,k1_connsp_2(X0,X1))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => r2_hidden(X1,k1_connsp_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t30_connsp_2)).

fof(f137,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X2,k1_connsp_2(X1,X0))
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ v1_xboole_0(u1_struct_0(X1))
      | ~ m1_subset_1(X0,u1_struct_0(X1)) ) ),
    inference(resolution,[],[f66,f73])).

fof(f73,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ v1_xboole_0(X2)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_subset)).

fof(f66,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_connsp_2)).

fof(f124,plain,(
    spl3_3 ),
    inference(avatar_contradiction_clause,[],[f123])).

fof(f123,plain,
    ( $false
    | spl3_3 ),
    inference(resolution,[],[f103,f95])).

fof(f95,plain,(
    l1_struct_0(sK0) ),
    inference(resolution,[],[f60,f48])).

fof(f60,plain,(
    ! [X0] :
      ( ~ l1_pre_topc(X0)
      | l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(f103,plain,
    ( ~ l1_struct_0(sK0)
    | spl3_3 ),
    inference(avatar_component_clause,[],[f101])).

fof(f94,plain,
    ( spl3_1
    | spl3_2 ),
    inference(avatar_split_clause,[],[f55,f90,f86])).

fof(f55,plain,
    ( r2_waybel_7(sK0,sK1,sK2)
    | r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) ),
    inference(cnf_transformation,[],[f44])).

fof(f93,plain,
    ( ~ spl3_1
    | ~ spl3_2 ),
    inference(avatar_split_clause,[],[f56,f90,f86])).

fof(f56,plain,
    ( ~ r2_waybel_7(sK0,sK1,sK2)
    | ~ r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) ),
    inference(cnf_transformation,[],[f44])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : run_vampire %s %d
% 0.12/0.33  % Computer   : n014.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:53:07 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.20/0.44  % (31008)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.20/0.44  % (31008)Refutation found. Thanks to Tanya!
% 0.20/0.44  % SZS status Theorem for theBenchmark
% 0.20/0.45  % (31009)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.45  % (31017)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.20/0.45  % (31016)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.20/0.46  % (31005)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.20/0.46  % SZS output start Proof for theBenchmark
% 0.20/0.46  fof(f316,plain,(
% 0.20/0.46    $false),
% 0.20/0.46    inference(avatar_sat_refutation,[],[f93,f94,f124,f159,f163,f165,f189,f198,f200,f202,f205,f206,f208,f216,f229,f232,f284,f287,f293,f295,f301,f304,f305,f310,f312,f315])).
% 0.20/0.46  fof(f315,plain,(
% 0.20/0.46    ~spl3_3 | spl3_15 | ~spl3_21 | ~spl3_16 | ~spl3_17 | ~spl3_23 | spl3_12 | ~spl3_13 | ~spl3_10 | spl3_24 | ~spl3_25 | ~spl3_26 | ~spl3_27 | ~spl3_28 | spl3_2 | ~spl3_1),
% 0.20/0.46    inference(avatar_split_clause,[],[f313,f86,f90,f281,f277,f273,f269,f265,f144,f156,f152,f261,f183,f179,f223,f175,f101])).
% 0.20/0.46  fof(f101,plain,(
% 0.20/0.46    spl3_3 <=> l1_struct_0(sK0)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).
% 0.20/0.46  fof(f175,plain,(
% 0.20/0.46    spl3_15 <=> v1_xboole_0(sK1)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_15])])).
% 0.20/0.46  fof(f223,plain,(
% 0.20/0.46    spl3_21 <=> v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_21])])).
% 0.20/0.46  fof(f179,plain,(
% 0.20/0.46    spl3_16 <=> v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_16])])).
% 0.20/0.46  fof(f183,plain,(
% 0.20/0.46    spl3_17 <=> v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_17])])).
% 0.20/0.46  fof(f261,plain,(
% 0.20/0.46    spl3_23 <=> m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_23])])).
% 0.20/0.46  fof(f152,plain,(
% 0.20/0.46    spl3_12 <=> v2_struct_0(sK0)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).
% 0.20/0.46  fof(f156,plain,(
% 0.20/0.46    spl3_13 <=> v2_pre_topc(sK0)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).
% 0.20/0.46  fof(f144,plain,(
% 0.20/0.46    spl3_10 <=> l1_pre_topc(sK0)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).
% 0.20/0.46  fof(f265,plain,(
% 0.20/0.46    spl3_24 <=> v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_24])])).
% 0.20/0.46  fof(f269,plain,(
% 0.20/0.46    spl3_25 <=> v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_25])])).
% 0.20/0.46  fof(f273,plain,(
% 0.20/0.46    spl3_26 <=> v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_26])])).
% 0.20/0.46  fof(f277,plain,(
% 0.20/0.46    spl3_27 <=> l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_27])])).
% 0.20/0.46  fof(f281,plain,(
% 0.20/0.46    spl3_28 <=> m1_subset_1(sK2,u1_struct_0(sK0))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_28])])).
% 0.20/0.46  fof(f90,plain,(
% 0.20/0.46    spl3_2 <=> r2_waybel_7(sK0,sK1,sK2)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 0.20/0.46  fof(f86,plain,(
% 0.20/0.46    spl3_1 <=> r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 0.20/0.46  fof(f313,plain,(
% 0.20/0.46    r2_waybel_7(sK0,sK1,sK2) | ~m1_subset_1(sK2,u1_struct_0(sK0)) | ~l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0) | ~v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | ~v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | ~l1_pre_topc(sK0) | ~v2_pre_topc(sK0) | v2_struct_0(sK0) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))) | ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) | v1_xboole_0(sK1) | ~l1_struct_0(sK0) | ~spl3_1),
% 0.20/0.46    inference(resolution,[],[f87,f235])).
% 0.20/0.46  fof(f235,plain,(
% 0.20/0.46    ( ! [X4,X5,X3] : (~r2_hidden(X5,k10_yellow_6(X3,k3_yellow19(X3,k2_struct_0(X3),X4))) | r2_waybel_7(X3,X4,X5) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~l1_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4),X3) | ~v7_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4)) | ~v4_orders_2(k3_yellow19(X3,k2_struct_0(X3),X4)) | v2_struct_0(k3_yellow19(X3,k2_struct_0(X3),X4)) | ~l1_pre_topc(X3) | ~v2_pre_topc(X3) | v2_struct_0(X3) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3)))))) | ~v13_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3)))) | ~v2_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3)))) | ~v1_subset_1(X4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3))))) | v1_xboole_0(X4) | ~l1_struct_0(X3)) )),
% 0.20/0.46    inference(duplicate_literal_removal,[],[f234])).
% 0.20/0.46  fof(f234,plain,(
% 0.20/0.46    ( ! [X4,X5,X3] : (r2_waybel_7(X3,X4,X5) | ~r2_hidden(X5,k10_yellow_6(X3,k3_yellow19(X3,k2_struct_0(X3),X4))) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~l1_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4),X3) | ~v7_waybel_0(k3_yellow19(X3,k2_struct_0(X3),X4)) | ~v4_orders_2(k3_yellow19(X3,k2_struct_0(X3),X4)) | v2_struct_0(k3_yellow19(X3,k2_struct_0(X3),X4)) | ~l1_pre_topc(X3) | ~v2_pre_topc(X3) | v2_struct_0(X3) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3)))))) | ~v13_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3)))) | ~v2_waybel_0(X4,k3_lattice3(k1_lattice3(k2_struct_0(X3)))) | ~v1_subset_1(X4,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X3))))) | v1_xboole_0(X4) | ~l1_struct_0(X3) | v2_struct_0(X3)) )),
% 0.20/0.46    inference(superposition,[],[f63,f78])).
% 0.20/0.46  fof(f78,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f65,f59,f59,f59,f59])).
% 0.20/0.46  fof(f59,plain,(
% 0.20/0.46    ( ! [X0] : (k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))) )),
% 0.20/0.46    inference(cnf_transformation,[],[f8])).
% 0.20/0.46  fof(f8,axiom,(
% 0.20/0.46    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_yellow_1)).
% 0.20/0.46  fof(f65,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f29])).
% 0.20/0.46  fof(f29,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) | v1_xboole_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f28])).
% 0.20/0.46  fof(f28,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1 | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) | ~v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) | ~v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) | v1_xboole_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f13])).
% 0.20/0.46  fof(f13,axiom,(
% 0.20/0.46    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => k2_yellow19(X0,k3_yellow19(X0,k2_struct_0(X0),X1)) = X1))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_yellow19)).
% 0.20/0.46  fof(f63,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (r2_waybel_7(X0,k2_yellow19(X0,X1),X2) | ~r2_hidden(X2,k10_yellow_6(X0,X1)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f45])).
% 0.20/0.46  fof(f45,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k10_yellow_6(X0,X1)) | ~r2_waybel_7(X0,k2_yellow19(X0,X1),X2)) & (r2_waybel_7(X0,k2_yellow19(X0,X1),X2) | ~r2_hidden(X2,k10_yellow_6(X0,X1)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(nnf_transformation,[],[f27])).
% 0.20/0.46  fof(f27,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,k10_yellow_6(X0,X1)) <=> r2_waybel_7(X0,k2_yellow19(X0,X1),X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f26])).
% 0.20/0.46  fof(f26,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,k10_yellow_6(X0,X1)) <=> r2_waybel_7(X0,k2_yellow19(X0,X1),X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f12])).
% 0.20/0.46  fof(f12,axiom,(
% 0.20/0.46    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_hidden(X2,k10_yellow_6(X0,X1)) <=> r2_waybel_7(X0,k2_yellow19(X0,X1),X2)))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t13_yellow19)).
% 0.20/0.46  fof(f87,plain,(
% 0.20/0.46    r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) | ~spl3_1),
% 0.20/0.46    inference(avatar_component_clause,[],[f86])).
% 0.20/0.46  fof(f312,plain,(
% 0.20/0.46    ~spl3_29 | ~spl3_3 | spl3_12 | ~spl3_19 | ~spl3_24),
% 0.20/0.46    inference(avatar_split_clause,[],[f311,f265,f196,f152,f101,f290])).
% 0.20/0.46  fof(f290,plain,(
% 0.20/0.46    spl3_29 <=> m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_29])])).
% 0.20/0.46  fof(f196,plain,(
% 0.20/0.46    spl3_19 <=> ! [X5] : (~v2_struct_0(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_19])])).
% 0.20/0.46  fof(f311,plain,(
% 0.20/0.46    v2_struct_0(sK0) | ~l1_struct_0(sK0) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) | (~spl3_19 | ~spl3_24)),
% 0.20/0.46    inference(resolution,[],[f267,f197])).
% 0.20/0.46  fof(f197,plain,(
% 0.20/0.46    ( ! [X5] : (~v2_struct_0(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))) ) | ~spl3_19),
% 0.20/0.46    inference(avatar_component_clause,[],[f196])).
% 0.20/0.46  fof(f267,plain,(
% 0.20/0.46    v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | ~spl3_24),
% 0.20/0.46    inference(avatar_component_clause,[],[f265])).
% 0.20/0.46  fof(f310,plain,(
% 0.20/0.46    spl3_23),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f308])).
% 0.20/0.46  fof(f308,plain,(
% 0.20/0.46    $false | spl3_23),
% 0.20/0.46    inference(resolution,[],[f263,f74])).
% 0.20/0.46  fof(f74,plain,(
% 0.20/0.46    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))))),
% 0.20/0.46    inference(definition_unfolding,[],[f53,f59])).
% 0.20/0.46  fof(f53,plain,(
% 0.20/0.46    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f44,plain,(
% 0.20/0.46    (((~r2_waybel_7(sK0,sK1,sK2) | ~r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & (r2_waybel_7(sK0,sK1,sK2) | r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & m1_subset_1(sK2,u1_struct_0(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 0.20/0.46    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f40,f43,f42,f41])).
% 0.20/0.46  fof(f41,plain,(
% 0.20/0.46    ? [X0] : (? [X1] : (? [X2] : ((~r2_waybel_7(X0,X1,X2) | ~r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))) & (r2_waybel_7(X0,X1,X2) | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : ((~r2_waybel_7(sK0,X1,X2) | ~r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)))) & (r2_waybel_7(sK0,X1,X2) | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)))) & m1_subset_1(X2,u1_struct_0(sK0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 0.20/0.46    introduced(choice_axiom,[])).
% 0.20/0.46  fof(f42,plain,(
% 0.20/0.46    ? [X1] : (? [X2] : ((~r2_waybel_7(sK0,X1,X2) | ~r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)))) & (r2_waybel_7(sK0,X1,X2) | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),X1)))) & m1_subset_1(X2,u1_struct_0(sK0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(X1)) => (? [X2] : ((~r2_waybel_7(sK0,sK1,X2) | ~r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & (r2_waybel_7(sK0,sK1,X2) | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & m1_subset_1(X2,u1_struct_0(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))) & v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0))) & v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0)))) & ~v1_xboole_0(sK1))),
% 0.20/0.46    introduced(choice_axiom,[])).
% 0.20/0.46  fof(f43,plain,(
% 0.20/0.46    ? [X2] : ((~r2_waybel_7(sK0,sK1,X2) | ~r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & (r2_waybel_7(sK0,sK1,X2) | r2_hidden(X2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & m1_subset_1(X2,u1_struct_0(sK0))) => ((~r2_waybel_7(sK0,sK1,sK2) | ~r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & (r2_waybel_7(sK0,sK1,sK2) | r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))) & m1_subset_1(sK2,u1_struct_0(sK0)))),
% 0.20/0.46    introduced(choice_axiom,[])).
% 0.20/0.46  fof(f40,plain,(
% 0.20/0.46    ? [X0] : (? [X1] : (? [X2] : ((~r2_waybel_7(X0,X1,X2) | ~r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))) & (r2_waybel_7(X0,X1,X2) | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f39])).
% 0.20/0.46  fof(f39,plain,(
% 0.20/0.46    ? [X0] : (? [X1] : (? [X2] : (((~r2_waybel_7(X0,X1,X2) | ~r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1)))) & (r2_waybel_7(X0,X1,X2) | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.20/0.46    inference(nnf_transformation,[],[f21])).
% 0.20/0.46  fof(f21,plain,(
% 0.20/0.46    ? [X0] : (? [X1] : (? [X2] : ((r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) <~> r2_waybel_7(X0,X1,X2)) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f20])).
% 0.20/0.46  fof(f20,plain,(
% 0.20/0.46    ? [X0] : (? [X1] : (? [X2] : ((r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) <~> r2_waybel_7(X0,X1,X2)) & m1_subset_1(X2,u1_struct_0(X0))) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f15])).
% 0.20/0.46  fof(f15,negated_conjecture,(
% 0.20/0.46    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) <=> r2_waybel_7(X0,X1,X2)))))),
% 0.20/0.46    inference(negated_conjecture,[],[f14])).
% 0.20/0.46  fof(f14,conjecture,(
% 0.20/0.46    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(X0))))) & v13_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v2_waybel_0(X1,k3_yellow_1(k2_struct_0(X0))) & v1_subset_1(X1,u1_struct_0(k3_yellow_1(k2_struct_0(X0)))) & ~v1_xboole_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) <=> r2_waybel_7(X0,X1,X2)))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t18_yellow19)).
% 0.20/0.46  fof(f263,plain,(
% 0.20/0.46    ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))) | spl3_23),
% 0.20/0.46    inference(avatar_component_clause,[],[f261])).
% 0.20/0.46  fof(f305,plain,(
% 0.20/0.46    ~spl3_29 | ~spl3_3 | spl3_12 | ~spl3_20 | spl3_27),
% 0.20/0.46    inference(avatar_split_clause,[],[f302,f277,f214,f152,f101,f290])).
% 0.20/0.46  fof(f214,plain,(
% 0.20/0.46    spl3_20 <=> ! [X5] : (l1_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1),X5) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_20])])).
% 0.20/0.46  fof(f302,plain,(
% 0.20/0.46    v2_struct_0(sK0) | ~l1_struct_0(sK0) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) | (~spl3_20 | spl3_27)),
% 0.20/0.46    inference(resolution,[],[f279,f215])).
% 0.20/0.46  fof(f215,plain,(
% 0.20/0.46    ( ! [X5] : (l1_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1),X5) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))) ) | ~spl3_20),
% 0.20/0.46    inference(avatar_component_clause,[],[f214])).
% 0.20/0.46  fof(f279,plain,(
% 0.20/0.46    ~l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0) | spl3_27),
% 0.20/0.46    inference(avatar_component_clause,[],[f277])).
% 0.20/0.46  fof(f304,plain,(
% 0.20/0.46    spl3_30),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f303])).
% 0.20/0.46  fof(f303,plain,(
% 0.20/0.46    $false | spl3_30),
% 0.20/0.46    inference(resolution,[],[f300,f96])).
% 0.20/0.46  fof(f96,plain,(
% 0.20/0.46    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(X0))) )),
% 0.20/0.46    inference(forward_demodulation,[],[f58,f57])).
% 0.20/0.46  fof(f57,plain,(
% 0.20/0.46    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 0.20/0.46    inference(cnf_transformation,[],[f1])).
% 0.20/0.46  fof(f1,axiom,(
% 0.20/0.46    ! [X0] : k2_subset_1(X0) = X0),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).
% 0.20/0.46  fof(f58,plain,(
% 0.20/0.46    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 0.20/0.46    inference(cnf_transformation,[],[f2])).
% 0.20/0.46  fof(f2,axiom,(
% 0.20/0.46    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).
% 0.20/0.46  fof(f300,plain,(
% 0.20/0.46    ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) | spl3_30),
% 0.20/0.46    inference(avatar_component_clause,[],[f298])).
% 0.20/0.46  fof(f298,plain,(
% 0.20/0.46    spl3_30 <=> m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_30])])).
% 0.20/0.46  fof(f301,plain,(
% 0.20/0.46    ~spl3_3 | ~spl3_30 | spl3_29),
% 0.20/0.46    inference(avatar_split_clause,[],[f296,f290,f298,f101])).
% 0.20/0.46  fof(f296,plain,(
% 0.20/0.46    ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) | ~l1_struct_0(sK0) | spl3_29),
% 0.20/0.46    inference(superposition,[],[f292,f61])).
% 0.20/0.46  fof(f61,plain,(
% 0.20/0.46    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f23])).
% 0.20/0.46  fof(f23,plain,(
% 0.20/0.46    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 0.20/0.46    inference(ennf_transformation,[],[f4])).
% 0.20/0.46  fof(f4,axiom,(
% 0.20/0.46    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).
% 0.20/0.46  fof(f292,plain,(
% 0.20/0.46    ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) | spl3_29),
% 0.20/0.46    inference(avatar_component_clause,[],[f290])).
% 0.20/0.46  fof(f295,plain,(
% 0.20/0.46    ~spl3_29 | ~spl3_3 | spl3_12 | ~spl3_22 | spl3_26),
% 0.20/0.46    inference(avatar_split_clause,[],[f294,f273,f227,f152,f101,f290])).
% 0.20/0.46  fof(f227,plain,(
% 0.20/0.46    spl3_22 <=> ! [X5] : (v7_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_22])])).
% 0.20/0.46  fof(f294,plain,(
% 0.20/0.46    v2_struct_0(sK0) | ~l1_struct_0(sK0) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) | (~spl3_22 | spl3_26)),
% 0.20/0.46    inference(resolution,[],[f275,f228])).
% 0.20/0.46  fof(f228,plain,(
% 0.20/0.46    ( ! [X5] : (v7_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))) ) | ~spl3_22),
% 0.20/0.46    inference(avatar_component_clause,[],[f227])).
% 0.20/0.46  fof(f275,plain,(
% 0.20/0.46    ~v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | spl3_26),
% 0.20/0.46    inference(avatar_component_clause,[],[f273])).
% 0.20/0.46  fof(f293,plain,(
% 0.20/0.46    ~spl3_29 | ~spl3_3 | spl3_12 | ~spl3_18 | spl3_25),
% 0.20/0.46    inference(avatar_split_clause,[],[f288,f269,f187,f152,f101,f290])).
% 0.20/0.46  fof(f187,plain,(
% 0.20/0.46    spl3_18 <=> ! [X5] : (v4_orders_2(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_18])])).
% 0.20/0.46  fof(f288,plain,(
% 0.20/0.46    v2_struct_0(sK0) | ~l1_struct_0(sK0) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) | (~spl3_18 | spl3_25)),
% 0.20/0.46    inference(resolution,[],[f271,f188])).
% 0.20/0.46  fof(f188,plain,(
% 0.20/0.46    ( ! [X5] : (v4_orders_2(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | v2_struct_0(X5) | ~l1_struct_0(X5) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5)))) ) | ~spl3_18),
% 0.20/0.46    inference(avatar_component_clause,[],[f187])).
% 0.20/0.46  fof(f271,plain,(
% 0.20/0.46    ~v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | spl3_25),
% 0.20/0.46    inference(avatar_component_clause,[],[f269])).
% 0.20/0.46  fof(f287,plain,(
% 0.20/0.46    spl3_28),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f285])).
% 0.20/0.46  fof(f285,plain,(
% 0.20/0.46    $false | spl3_28),
% 0.20/0.46    inference(resolution,[],[f283,f54])).
% 0.20/0.46  fof(f54,plain,(
% 0.20/0.46    m1_subset_1(sK2,u1_struct_0(sK0))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f283,plain,(
% 0.20/0.46    ~m1_subset_1(sK2,u1_struct_0(sK0)) | spl3_28),
% 0.20/0.46    inference(avatar_component_clause,[],[f281])).
% 0.20/0.46  fof(f284,plain,(
% 0.20/0.46    ~spl3_3 | spl3_15 | ~spl3_21 | ~spl3_16 | ~spl3_17 | ~spl3_23 | spl3_12 | ~spl3_13 | ~spl3_10 | spl3_24 | ~spl3_25 | ~spl3_26 | ~spl3_27 | ~spl3_28 | ~spl3_2 | spl3_1),
% 0.20/0.46    inference(avatar_split_clause,[],[f256,f86,f90,f281,f277,f273,f269,f265,f144,f156,f152,f261,f183,f179,f223,f175,f101])).
% 0.20/0.46  fof(f256,plain,(
% 0.20/0.46    ~r2_waybel_7(sK0,sK1,sK2) | ~m1_subset_1(sK2,u1_struct_0(sK0)) | ~l1_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1),sK0) | ~v7_waybel_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | ~v4_orders_2(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | v2_struct_0(k3_yellow19(sK0,k2_struct_0(sK0),sK1)) | ~l1_pre_topc(sK0) | ~v2_pre_topc(sK0) | v2_struct_0(sK0) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))) | ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) | v1_xboole_0(sK1) | ~l1_struct_0(sK0) | spl3_1),
% 0.20/0.46    inference(resolution,[],[f236,f88])).
% 0.20/0.46  fof(f88,plain,(
% 0.20/0.46    ~r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1))) | spl3_1),
% 0.20/0.46    inference(avatar_component_clause,[],[f86])).
% 0.20/0.46  fof(f236,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) | ~r2_waybel_7(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1),X0) | ~v7_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1)) | ~v4_orders_2(k3_yellow19(X0,k2_struct_0(X0),X1)) | v2_struct_0(k3_yellow19(X0,k2_struct_0(X0),X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))) | v1_xboole_0(X1) | ~l1_struct_0(X0)) )),
% 0.20/0.46    inference(duplicate_literal_removal,[],[f233])).
% 0.20/0.46  fof(f233,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~r2_waybel_7(X0,X1,X2) | r2_hidden(X2,k10_yellow_6(X0,k3_yellow19(X0,k2_struct_0(X0),X1))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1),X0) | ~v7_waybel_0(k3_yellow19(X0,k2_struct_0(X0),X1)) | ~v4_orders_2(k3_yellow19(X0,k2_struct_0(X0),X1)) | v2_struct_0(k3_yellow19(X0,k2_struct_0(X0),X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0)))))) | ~v13_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v2_waybel_0(X1,k3_lattice3(k1_lattice3(k2_struct_0(X0)))) | ~v1_subset_1(X1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(X0))))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(superposition,[],[f64,f78])).
% 0.20/0.46  fof(f64,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~r2_waybel_7(X0,k2_yellow19(X0,X1),X2) | r2_hidden(X2,k10_yellow_6(X0,X1)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f45])).
% 0.20/0.46  fof(f232,plain,(
% 0.20/0.46    spl3_21),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f230])).
% 0.20/0.46  fof(f230,plain,(
% 0.20/0.46    $false | spl3_21),
% 0.20/0.46    inference(resolution,[],[f225,f77])).
% 0.20/0.46  fof(f77,plain,(
% 0.20/0.46    v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0)))))),
% 0.20/0.46    inference(definition_unfolding,[],[f50,f59])).
% 0.20/0.46  fof(f50,plain,(
% 0.20/0.46    v1_subset_1(sK1,u1_struct_0(k3_yellow_1(k2_struct_0(sK0))))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f225,plain,(
% 0.20/0.46    ~v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) | spl3_21),
% 0.20/0.46    inference(avatar_component_clause,[],[f223])).
% 0.20/0.46  fof(f229,plain,(
% 0.20/0.46    spl3_14 | spl3_15 | ~spl3_21 | ~spl3_16 | ~spl3_17 | spl3_22),
% 0.20/0.46    inference(avatar_split_clause,[],[f220,f227,f183,f179,f223,f175,f171])).
% 0.20/0.46  fof(f171,plain,(
% 0.20/0.46    spl3_14 <=> v1_xboole_0(k2_struct_0(sK0))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_14])])).
% 0.20/0.46  fof(f220,plain,(
% 0.20/0.46    ( ! [X5] : (v7_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v1_subset_1(sK1,u1_struct_0(k3_lattice3(k1_lattice3(k2_struct_0(sK0))))) | v1_xboole_0(sK1) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) | v1_xboole_0(k2_struct_0(sK0)) | ~l1_struct_0(X5) | v2_struct_0(X5)) )),
% 0.20/0.46    inference(resolution,[],[f83,f74])).
% 0.20/0.46  fof(f83,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))) | v7_waybel_0(k3_yellow19(X0,X1,X2)) | ~v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | ~v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | ~v1_subset_1(X2,u1_struct_0(k3_lattice3(k1_lattice3(X1)))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f72,f59,f59,f59,f59])).
% 0.20/0.46  fof(f72,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (v7_waybel_0(k3_yellow19(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | ~v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f37])).
% 0.20/0.46  fof(f37,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((v7_waybel_0(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | ~v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f36])).
% 0.20/0.46  fof(f36,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((v7_waybel_0(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | ~v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f17])).
% 0.20/0.46  fof(f17,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1))) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (v7_waybel_0(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    inference(pure_predicate_removal,[],[f11])).
% 0.20/0.46  fof(f11,axiom,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & v1_subset_1(X2,u1_struct_0(k3_yellow_1(X1))) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (v7_waybel_0(k3_yellow19(X0,X1,X2)) & v6_waybel_0(k3_yellow19(X0,X1,X2),X0) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_yellow19)).
% 0.20/0.46  fof(f216,plain,(
% 0.20/0.46    spl3_14 | spl3_15 | ~spl3_16 | ~spl3_17 | spl3_20),
% 0.20/0.46    inference(avatar_split_clause,[],[f211,f214,f183,f179,f175,f171])).
% 0.20/0.46  fof(f211,plain,(
% 0.20/0.46    ( ! [X5] : (l1_waybel_0(k3_yellow19(X5,k2_struct_0(sK0),sK1),X5) | ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | v1_xboole_0(sK1) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) | v1_xboole_0(k2_struct_0(sK0)) | ~l1_struct_0(X5) | v2_struct_0(X5)) )),
% 0.20/0.46    inference(resolution,[],[f81,f74])).
% 0.20/0.46  fof(f81,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))) | l1_waybel_0(k3_yellow19(X0,X1,X2),X0) | ~v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | ~v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f70,f59,f59,f59])).
% 0.20/0.46  fof(f70,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (l1_waybel_0(k3_yellow19(X0,X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f35])).
% 0.20/0.46  fof(f35,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((l1_waybel_0(k3_yellow19(X0,X1,X2),X0) & ~v2_struct_0(k3_yellow19(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f34])).
% 0.20/0.46  fof(f34,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((l1_waybel_0(k3_yellow19(X0,X1,X2),X0) & ~v2_struct_0(k3_yellow19(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f18])).
% 0.20/0.46  fof(f18,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (l1_waybel_0(k3_yellow19(X0,X1,X2),X0) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    inference(pure_predicate_removal,[],[f9])).
% 0.20/0.46  fof(f9,axiom,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (l1_waybel_0(k3_yellow19(X0,X1,X2),X0) & v6_waybel_0(k3_yellow19(X0,X1,X2),X0) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_yellow19)).
% 0.20/0.46  fof(f208,plain,(
% 0.20/0.46    ~spl3_15),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f207])).
% 0.20/0.46  fof(f207,plain,(
% 0.20/0.46    $false | ~spl3_15),
% 0.20/0.46    inference(resolution,[],[f177,f49])).
% 0.20/0.46  fof(f49,plain,(
% 0.20/0.46    ~v1_xboole_0(sK1)),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f177,plain,(
% 0.20/0.46    v1_xboole_0(sK1) | ~spl3_15),
% 0.20/0.46    inference(avatar_component_clause,[],[f175])).
% 0.20/0.46  fof(f206,plain,(
% 0.20/0.46    ~spl3_3 | ~spl3_14 | spl3_11),
% 0.20/0.46    inference(avatar_split_clause,[],[f190,f148,f171,f101])).
% 0.20/0.46  fof(f148,plain,(
% 0.20/0.46    spl3_11 <=> v1_xboole_0(u1_struct_0(sK0))),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl3_11])])).
% 0.20/0.46  fof(f190,plain,(
% 0.20/0.46    ~v1_xboole_0(k2_struct_0(sK0)) | ~l1_struct_0(sK0) | spl3_11),
% 0.20/0.46    inference(superposition,[],[f150,f61])).
% 0.20/0.46  fof(f150,plain,(
% 0.20/0.46    ~v1_xboole_0(u1_struct_0(sK0)) | spl3_11),
% 0.20/0.46    inference(avatar_component_clause,[],[f148])).
% 0.20/0.46  fof(f205,plain,(
% 0.20/0.46    ~spl3_12),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f204])).
% 0.20/0.46  fof(f204,plain,(
% 0.20/0.46    $false | ~spl3_12),
% 0.20/0.46    inference(resolution,[],[f154,f46])).
% 0.20/0.46  fof(f46,plain,(
% 0.20/0.46    ~v2_struct_0(sK0)),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f154,plain,(
% 0.20/0.46    v2_struct_0(sK0) | ~spl3_12),
% 0.20/0.46    inference(avatar_component_clause,[],[f152])).
% 0.20/0.46  fof(f202,plain,(
% 0.20/0.46    spl3_17),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f201])).
% 0.20/0.46  fof(f201,plain,(
% 0.20/0.46    $false | spl3_17),
% 0.20/0.46    inference(resolution,[],[f185,f75])).
% 0.20/0.46  fof(f75,plain,(
% 0.20/0.46    v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.20/0.46    inference(definition_unfolding,[],[f52,f59])).
% 0.20/0.46  fof(f52,plain,(
% 0.20/0.46    v13_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f185,plain,(
% 0.20/0.46    ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | spl3_17),
% 0.20/0.46    inference(avatar_component_clause,[],[f183])).
% 0.20/0.46  fof(f200,plain,(
% 0.20/0.46    spl3_16),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f199])).
% 0.20/0.46  fof(f199,plain,(
% 0.20/0.46    $false | spl3_16),
% 0.20/0.46    inference(resolution,[],[f181,f76])).
% 0.20/0.46  fof(f76,plain,(
% 0.20/0.46    v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0))))),
% 0.20/0.46    inference(definition_unfolding,[],[f51,f59])).
% 0.20/0.46  fof(f51,plain,(
% 0.20/0.46    v2_waybel_0(sK1,k3_yellow_1(k2_struct_0(sK0)))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f181,plain,(
% 0.20/0.46    ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | spl3_16),
% 0.20/0.46    inference(avatar_component_clause,[],[f179])).
% 0.20/0.46  fof(f198,plain,(
% 0.20/0.46    spl3_14 | spl3_15 | ~spl3_16 | ~spl3_17 | spl3_19),
% 0.20/0.46    inference(avatar_split_clause,[],[f193,f196,f183,f179,f175,f171])).
% 0.20/0.46  fof(f193,plain,(
% 0.20/0.46    ( ! [X5] : (~v2_struct_0(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | v1_xboole_0(sK1) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) | v1_xboole_0(k2_struct_0(sK0)) | ~l1_struct_0(X5) | v2_struct_0(X5)) )),
% 0.20/0.46    inference(resolution,[],[f80,f74])).
% 0.20/0.46  fof(f80,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))) | ~v2_struct_0(k3_yellow19(X0,X1,X2)) | ~v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | ~v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f67,f59,f59,f59])).
% 0.20/0.46  fof(f67,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~v2_struct_0(k3_yellow19(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f33])).
% 0.20/0.46  fof(f33,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((v4_orders_2(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f32])).
% 0.20/0.46  fof(f32,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((v4_orders_2(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f19])).
% 0.20/0.46  fof(f19,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (v4_orders_2(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    inference(pure_predicate_removal,[],[f16])).
% 0.20/0.46  fof(f16,plain,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (v6_waybel_0(k3_yellow19(X0,X1,X2),X0) & v4_orders_2(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    inference(pure_predicate_removal,[],[f10])).
% 0.20/0.46  fof(f10,axiom,(
% 0.20/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) & v13_waybel_0(X2,k3_yellow_1(X1)) & v2_waybel_0(X2,k3_yellow_1(X1)) & ~v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (v6_waybel_0(k3_yellow19(X0,X1,X2),X0) & v4_orders_2(k3_yellow19(X0,X1,X2)) & v3_orders_2(k3_yellow19(X0,X1,X2)) & ~v2_struct_0(k3_yellow19(X0,X1,X2))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc4_yellow19)).
% 0.20/0.46  fof(f189,plain,(
% 0.20/0.46    spl3_14 | spl3_15 | ~spl3_16 | ~spl3_17 | spl3_18),
% 0.20/0.46    inference(avatar_split_clause,[],[f168,f187,f183,f179,f175,f171])).
% 0.20/0.46  fof(f168,plain,(
% 0.20/0.46    ( ! [X5] : (v4_orders_2(k3_yellow19(X5,k2_struct_0(sK0),sK1)) | ~v13_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | ~v2_waybel_0(sK1,k3_lattice3(k1_lattice3(k2_struct_0(sK0)))) | v1_xboole_0(sK1) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(X5))) | v1_xboole_0(k2_struct_0(sK0)) | ~l1_struct_0(X5) | v2_struct_0(X5)) )),
% 0.20/0.46    inference(resolution,[],[f79,f74])).
% 0.20/0.46  fof(f79,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_lattice3(k1_lattice3(X1))))) | v4_orders_2(k3_yellow19(X0,X1,X2)) | ~v13_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | ~v2_waybel_0(X2,k3_lattice3(k1_lattice3(X1))) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f68,f59,f59,f59])).
% 0.20/0.46  fof(f68,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (v4_orders_2(k3_yellow19(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k3_yellow_1(X1)))) | ~v13_waybel_0(X2,k3_yellow_1(X1)) | ~v2_waybel_0(X2,k3_yellow_1(X1)) | v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f33])).
% 0.20/0.46  fof(f165,plain,(
% 0.20/0.46    spl3_13),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f164])).
% 0.20/0.46  fof(f164,plain,(
% 0.20/0.46    $false | spl3_13),
% 0.20/0.46    inference(resolution,[],[f158,f47])).
% 0.20/0.46  fof(f47,plain,(
% 0.20/0.46    v2_pre_topc(sK0)),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f158,plain,(
% 0.20/0.46    ~v2_pre_topc(sK0) | spl3_13),
% 0.20/0.46    inference(avatar_component_clause,[],[f156])).
% 0.20/0.46  fof(f163,plain,(
% 0.20/0.46    spl3_10),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f162])).
% 0.20/0.46  fof(f162,plain,(
% 0.20/0.46    $false | spl3_10),
% 0.20/0.46    inference(resolution,[],[f146,f48])).
% 0.20/0.46  fof(f48,plain,(
% 0.20/0.46    l1_pre_topc(sK0)),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f146,plain,(
% 0.20/0.46    ~l1_pre_topc(sK0) | spl3_10),
% 0.20/0.46    inference(avatar_component_clause,[],[f144])).
% 0.20/0.46  fof(f159,plain,(
% 0.20/0.46    ~spl3_10 | ~spl3_11 | spl3_12 | ~spl3_13),
% 0.20/0.46    inference(avatar_split_clause,[],[f141,f156,f152,f148,f144])).
% 0.20/0.46  fof(f141,plain,(
% 0.20/0.46    ~v2_pre_topc(sK0) | v2_struct_0(sK0) | ~v1_xboole_0(u1_struct_0(sK0)) | ~l1_pre_topc(sK0)),
% 0.20/0.46    inference(resolution,[],[f140,f54])).
% 0.20/0.46  fof(f140,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~m1_subset_1(X1,u1_struct_0(X0)) | ~v2_pre_topc(X0) | v2_struct_0(X0) | ~v1_xboole_0(u1_struct_0(X0)) | ~l1_pre_topc(X0)) )),
% 0.20/0.46    inference(duplicate_literal_removal,[],[f139])).
% 0.20/0.46  fof(f139,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0) | ~v1_xboole_0(u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(resolution,[],[f137,f62])).
% 0.20/0.46  fof(f62,plain,(
% 0.20/0.46    ( ! [X0,X1] : (r2_hidden(X1,k1_connsp_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f25])).
% 0.20/0.46  fof(f25,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (r2_hidden(X1,k1_connsp_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f24])).
% 0.20/0.46  fof(f24,plain,(
% 0.20/0.46    ! [X0] : (! [X1] : (r2_hidden(X1,k1_connsp_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f7])).
% 0.20/0.46  fof(f7,axiom,(
% 0.20/0.46    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => r2_hidden(X1,k1_connsp_2(X0,X1))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t30_connsp_2)).
% 0.20/0.46  fof(f137,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~r2_hidden(X2,k1_connsp_2(X1,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~v1_xboole_0(u1_struct_0(X1)) | ~m1_subset_1(X0,u1_struct_0(X1))) )),
% 0.20/0.46    inference(resolution,[],[f66,f73])).
% 0.20/0.46  fof(f73,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~v1_xboole_0(X2) | ~r2_hidden(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f38])).
% 0.20/0.46  fof(f38,plain,(
% 0.20/0.46    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f3])).
% 0.20/0.46  fof(f3,axiom,(
% 0.20/0.46    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_subset)).
% 0.20/0.46  fof(f66,plain,(
% 0.20/0.46    ( ! [X0,X1] : (m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f31])).
% 0.20/0.46  fof(f31,plain,(
% 0.20/0.46    ! [X0,X1] : (m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 0.20/0.46    inference(flattening,[],[f30])).
% 0.20/0.46  fof(f30,plain,(
% 0.20/0.46    ! [X0,X1] : (m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 0.20/0.46    inference(ennf_transformation,[],[f6])).
% 0.20/0.46  fof(f6,axiom,(
% 0.20/0.46    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => m1_subset_1(k1_connsp_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_connsp_2)).
% 0.20/0.46  fof(f124,plain,(
% 0.20/0.46    spl3_3),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f123])).
% 0.20/0.46  fof(f123,plain,(
% 0.20/0.46    $false | spl3_3),
% 0.20/0.46    inference(resolution,[],[f103,f95])).
% 0.20/0.46  fof(f95,plain,(
% 0.20/0.46    l1_struct_0(sK0)),
% 0.20/0.46    inference(resolution,[],[f60,f48])).
% 0.20/0.46  fof(f60,plain,(
% 0.20/0.46    ( ! [X0] : (~l1_pre_topc(X0) | l1_struct_0(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f22])).
% 0.20/0.46  fof(f22,plain,(
% 0.20/0.46    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 0.20/0.46    inference(ennf_transformation,[],[f5])).
% 0.20/0.46  fof(f5,axiom,(
% 0.20/0.46    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).
% 0.20/0.46  fof(f103,plain,(
% 0.20/0.46    ~l1_struct_0(sK0) | spl3_3),
% 0.20/0.46    inference(avatar_component_clause,[],[f101])).
% 0.20/0.46  fof(f94,plain,(
% 0.20/0.46    spl3_1 | spl3_2),
% 0.20/0.46    inference(avatar_split_clause,[],[f55,f90,f86])).
% 0.20/0.46  fof(f55,plain,(
% 0.20/0.46    r2_waybel_7(sK0,sK1,sK2) | r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  fof(f93,plain,(
% 0.20/0.46    ~spl3_1 | ~spl3_2),
% 0.20/0.46    inference(avatar_split_clause,[],[f56,f90,f86])).
% 0.20/0.46  fof(f56,plain,(
% 0.20/0.46    ~r2_waybel_7(sK0,sK1,sK2) | ~r2_hidden(sK2,k10_yellow_6(sK0,k3_yellow19(sK0,k2_struct_0(sK0),sK1)))),
% 0.20/0.46    inference(cnf_transformation,[],[f44])).
% 0.20/0.46  % SZS output end Proof for theBenchmark
% 0.20/0.46  % (31008)------------------------------
% 0.20/0.46  % (31008)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.46  % (31008)Termination reason: Refutation
% 0.20/0.46  
% 0.20/0.46  % (31008)Memory used [KB]: 6396
% 0.20/0.46  % (31008)Time elapsed: 0.044 s
% 0.20/0.46  % (31008)------------------------------
% 0.20/0.46  % (31008)------------------------------
% 0.20/0.46  % (31019)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.20/0.46  % (31002)Success in time 0.111 s
%------------------------------------------------------------------------------
