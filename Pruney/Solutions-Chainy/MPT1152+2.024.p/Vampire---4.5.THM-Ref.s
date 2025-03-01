%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:09:51 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  111 ( 555 expanded)
%              Number of leaves         :   16 ( 140 expanded)
%              Depth                    :   25
%              Number of atoms          :  498 (2811 expanded)
%              Number of equality atoms :   47 ( 423 expanded)
%              Maximal formula depth    :   15 (   6 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f892,plain,(
    $false ),
    inference(subsumption_resolution,[],[f891,f418])).

fof(f418,plain,(
    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) ),
    inference(forward_demodulation,[],[f194,f195])).

fof(f195,plain,(
    k2_struct_0(sK0) = u1_struct_0(sK0) ),
    inference(resolution,[],[f150,f46])).

fof(f46,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

fof(f150,plain,(
    l1_struct_0(sK0) ),
    inference(resolution,[],[f44,f48])).

fof(f48,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_orders_2)).

fof(f44,plain,(
    l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,
    ( k1_xboole_0 != k2_orders_2(sK0,k2_struct_0(sK0))
    & l1_orders_2(sK0)
    & v5_orders_2(sK0)
    & v4_orders_2(sK0)
    & v3_orders_2(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f29])).

fof(f29,plain,
    ( ? [X0] :
        ( k1_xboole_0 != k2_orders_2(X0,k2_struct_0(X0))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( k1_xboole_0 != k2_orders_2(sK0,k2_struct_0(sK0))
      & l1_orders_2(sK0)
      & v5_orders_2(sK0)
      & v4_orders_2(sK0)
      & v3_orders_2(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0] :
      ( k1_xboole_0 != k2_orders_2(X0,k2_struct_0(X0))
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f13,plain,(
    ? [X0] :
      ( k1_xboole_0 != k2_orders_2(X0,k2_struct_0(X0))
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => k1_xboole_0 = k2_orders_2(X0,k2_struct_0(X0)) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => k1_xboole_0 = k2_orders_2(X0,k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_orders_2)).

fof(f194,plain,(
    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(resolution,[],[f150,f47])).

fof(f47,plain,(
    ! [X0] :
      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_struct_0)).

fof(f891,plain,(
    ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) ),
    inference(subsumption_resolution,[],[f881,f45])).

fof(f45,plain,(
    k1_xboole_0 != k2_orders_2(sK0,k2_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f30])).

fof(f881,plain,
    ( k1_xboole_0 = k2_orders_2(sK0,k2_struct_0(sK0))
    | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) ),
    inference(superposition,[],[f835,f247])).

fof(f247,plain,(
    ! [X4] :
      ( k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_struct_0(sK0))) ) ),
    inference(backward_demodulation,[],[f165,f195])).

fof(f165,plain,(
    ! [X4] :
      ( k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(subsumption_resolution,[],[f164,f40])).

fof(f40,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f30])).

fof(f164,plain,(
    ! [X4] :
      ( k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0)))
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f163,f41])).

fof(f41,plain,(
    v3_orders_2(sK0) ),
    inference(cnf_transformation,[],[f30])).

fof(f163,plain,(
    ! [X4] :
      ( k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f162,f42])).

fof(f42,plain,(
    v4_orders_2(sK0) ),
    inference(cnf_transformation,[],[f30])).

fof(f162,plain,(
    ! [X4] :
      ( k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f153,f43])).

fof(f43,plain,(
    v5_orders_2(sK0) ),
    inference(cnf_transformation,[],[f30])).

fof(f153,plain,(
    ! [X4] :
      ( k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v5_orders_2(sK0)
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(resolution,[],[f44,f52])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d13_orders_2)).

fof(f835,plain,(
    k1_xboole_0 = a_2_1_orders_2(sK0,k2_struct_0(sK0)) ),
    inference(resolution,[],[f823,f53])).

fof(f53,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f33])).

fof(f33,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f823,plain,(
    ! [X0] : ~ r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0))) ),
    inference(subsumption_resolution,[],[f822,f418])).

fof(f822,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0)))
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) ) ),
    inference(duplicate_literal_removal,[],[f813])).

fof(f813,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0)))
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0))) ) ),
    inference(resolution,[],[f812,f601])).

fof(f601,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK3(X0,sK0,X1),X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(X0,a_2_1_orders_2(sK0,X1)) ) ),
    inference(subsumption_resolution,[],[f600,f470])).

fof(f470,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),k2_struct_0(sK0))
      | ~ m1_subset_1(X7,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7)) ) ),
    inference(forward_demodulation,[],[f469,f195])).

fof(f469,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),k2_struct_0(sK0))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7))
      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(forward_demodulation,[],[f173,f195])).

fof(f173,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7))
      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(subsumption_resolution,[],[f172,f40])).

fof(f172,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7))
      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0)))
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f171,f41])).

fof(f171,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7))
      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f170,f42])).

fof(f170,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7))
      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f155,f43])).

fof(f155,plain,(
    ! [X6,X7] :
      ( m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0))
      | ~ r2_hidden(X6,a_2_1_orders_2(sK0,X7))
      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v5_orders_2(sK0)
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(resolution,[],[f44,f56])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1))
      | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
          | ! [X3] :
              ( ( ~ r2_orders_2(X1,X3,sK2(X1,X2,X3))
                & r2_hidden(sK2(X1,X2,X3),X2)
                & m1_subset_1(sK2(X1,X2,X3),u1_struct_0(X1)) )
              | X0 != X3
              | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
        & ( ( ! [X6] :
                ( r2_orders_2(X1,sK3(X0,X1,X2),X6)
                | ~ r2_hidden(X6,X2)
                | ~ m1_subset_1(X6,u1_struct_0(X1)) )
            & sK3(X0,X1,X2) = X0
            & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1)) )
          | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f36,f38,f37])).

fof(f37,plain,(
    ! [X3,X2,X1] :
      ( ? [X4] :
          ( ~ r2_orders_2(X1,X3,X4)
          & r2_hidden(X4,X2)
          & m1_subset_1(X4,u1_struct_0(X1)) )
     => ( ~ r2_orders_2(X1,X3,sK2(X1,X2,X3))
        & r2_hidden(sK2(X1,X2,X3),X2)
        & m1_subset_1(sK2(X1,X2,X3),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

% (22607)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_92 on theBenchmark
fof(f38,plain,(
    ! [X2,X1,X0] :
      ( ? [X5] :
          ( ! [X6] :
              ( r2_orders_2(X1,X5,X6)
              | ~ r2_hidden(X6,X2)
              | ~ m1_subset_1(X6,u1_struct_0(X1)) )
          & X0 = X5
          & m1_subset_1(X5,u1_struct_0(X1)) )
     => ( ! [X6] :
            ( r2_orders_2(X1,sK3(X0,X1,X2),X6)
            | ~ r2_hidden(X6,X2)
            | ~ m1_subset_1(X6,u1_struct_0(X1)) )
        & sK3(X0,X1,X2) = X0
        & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
          | ! [X3] :
              ( ? [X4] :
                  ( ~ r2_orders_2(X1,X3,X4)
                  & r2_hidden(X4,X2)
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              | X0 != X3
              | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
        & ( ? [X5] :
              ( ! [X6] :
                  ( r2_orders_2(X1,X5,X6)
                  | ~ r2_hidden(X6,X2)
                  | ~ m1_subset_1(X6,u1_struct_0(X1)) )
              & X0 = X5
              & m1_subset_1(X5,u1_struct_0(X1)) )
          | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(rectify,[],[f35])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
          | ! [X3] :
              ( ? [X4] :
                  ( ~ r2_orders_2(X1,X3,X4)
                  & r2_hidden(X4,X2)
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              | X0 != X3
              | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
        & ( ? [X3] :
              ( ! [X4] :
                  ( r2_orders_2(X1,X3,X4)
                  | ~ r2_hidden(X4,X2)
                  | ~ m1_subset_1(X4,u1_struct_0(X1)) )
              & X0 = X3
              & m1_subset_1(X3,u1_struct_0(X1)) )
          | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
      <=> ? [X3] :
            ( ! [X4] :
                ( r2_orders_2(X1,X3,X4)
                | ~ r2_hidden(X4,X2)
                | ~ m1_subset_1(X4,u1_struct_0(X1)) )
            & X0 = X3
            & m1_subset_1(X3,u1_struct_0(X1)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
      <=> ? [X3] :
            ( ! [X4] :
                ( r2_orders_2(X1,X3,X4)
                | ~ r2_hidden(X4,X2)
                | ~ m1_subset_1(X4,u1_struct_0(X1)) )
            & X0 = X3
            & m1_subset_1(X3,u1_struct_0(X1)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
        & l1_orders_2(X1)
        & v5_orders_2(X1)
        & v4_orders_2(X1)
        & v3_orders_2(X1)
        & ~ v2_struct_0(X1) )
     => ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
      <=> ? [X3] :
            ( ! [X4] :
                ( m1_subset_1(X4,u1_struct_0(X1))
               => ( r2_hidden(X4,X2)
                 => r2_orders_2(X1,X3,X4) ) )
            & X0 = X3
            & m1_subset_1(X3,u1_struct_0(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fraenkel_a_2_1_orders_2)).

fof(f600,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK3(X0,sK0,X1),k2_struct_0(sK0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(sK3(X0,sK0,X1),X1)
      | ~ r2_hidden(X0,a_2_1_orders_2(sK0,X1)) ) ),
    inference(duplicate_literal_removal,[],[f589])).

fof(f589,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK3(X0,sK0,X1),k2_struct_0(sK0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(sK3(X0,sK0,X1),X1)
      | ~ r2_hidden(X0,a_2_1_orders_2(sK0,X1))
      | ~ m1_subset_1(sK3(X0,sK0,X1),k2_struct_0(sK0)) ) ),
    inference(resolution,[],[f588,f248])).

fof(f248,plain,(
    ! [X19] :
      ( ~ r2_orders_2(sK0,X19,X19)
      | ~ m1_subset_1(X19,k2_struct_0(sK0)) ) ),
    inference(backward_demodulation,[],[f161,f195])).

fof(f161,plain,(
    ! [X19] :
      ( ~ r2_orders_2(sK0,X19,X19)
      | ~ m1_subset_1(X19,u1_struct_0(sK0)) ) ),
    inference(resolution,[],[f44,f69])).

fof(f69,plain,(
    ! [X2,X0] :
      ( ~ r2_orders_2(X0,X2,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(duplicate_literal_removal,[],[f63])).

fof(f63,plain,(
    ! [X2,X0] :
      ( ~ r2_orders_2(X0,X2,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( X1 != X2
      | ~ r2_orders_2(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_orders_2(X0,X1,X2)
                  | X1 = X2
                  | ~ r1_orders_2(X0,X1,X2) )
                & ( ( X1 != X2
                    & r1_orders_2(X0,X1,X2) )
                  | ~ r2_orders_2(X0,X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f31])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_orders_2(X0,X1,X2)
                  | X1 = X2
                  | ~ r1_orders_2(X0,X1,X2) )
                & ( ( X1 != X2
                    & r1_orders_2(X0,X1,X2) )
                  | ~ r2_orders_2(X0,X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_orders_2(X0,X1,X2)
              <=> ( X1 != X2
                  & r1_orders_2(X0,X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r2_orders_2(X0,X1,X2)
              <=> ( X1 != X2
                  & r1_orders_2(X0,X1,X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_orders_2)).

fof(f588,plain,(
    ! [X12,X10,X11] :
      ( r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ m1_subset_1(X12,k2_struct_0(sK0))
      | ~ m1_subset_1(X11,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(X12,X11)
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11)) ) ),
    inference(forward_demodulation,[],[f587,f195])).

fof(f587,plain,(
    ! [X12,X10,X11] :
      ( ~ m1_subset_1(X12,k2_struct_0(sK0))
      | r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ r2_hidden(X12,X11)
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11))
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(forward_demodulation,[],[f181,f195])).

fof(f181,plain,(
    ! [X12,X10,X11] :
      ( r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ r2_hidden(X12,X11)
      | ~ m1_subset_1(X12,u1_struct_0(sK0))
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11))
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(subsumption_resolution,[],[f180,f40])).

fof(f180,plain,(
    ! [X12,X10,X11] :
      ( r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ r2_hidden(X12,X11)
      | ~ m1_subset_1(X12,u1_struct_0(sK0))
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11))
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0)))
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f179,f41])).

fof(f179,plain,(
    ! [X12,X10,X11] :
      ( r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ r2_hidden(X12,X11)
      | ~ m1_subset_1(X12,u1_struct_0(sK0))
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11))
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f178,f42])).

fof(f178,plain,(
    ! [X12,X10,X11] :
      ( r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ r2_hidden(X12,X11)
      | ~ m1_subset_1(X12,u1_struct_0(sK0))
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11))
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f157,f43])).

fof(f157,plain,(
    ! [X12,X10,X11] :
      ( r2_orders_2(sK0,sK3(X10,sK0,X11),X12)
      | ~ r2_hidden(X12,X11)
      | ~ m1_subset_1(X12,u1_struct_0(sK0))
      | ~ r2_hidden(X10,a_2_1_orders_2(sK0,X11))
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v5_orders_2(sK0)
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(resolution,[],[f44,f58])).

fof(f58,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_orders_2(X1,sK3(X0,X1,X2),X6)
      | ~ r2_hidden(X6,X2)
      | ~ m1_subset_1(X6,u1_struct_0(X1))
      | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f812,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X1,sK0,X0),k2_struct_0(sK0))
      | ~ r2_hidden(X1,a_2_1_orders_2(sK0,X0))
      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK0))) ) ),
    inference(subsumption_resolution,[],[f471,f569])).

fof(f569,plain,(
    ~ v1_xboole_0(k2_struct_0(sK0)) ),
    inference(subsumption_resolution,[],[f566,f45])).

fof(f566,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK0))
    | k1_xboole_0 = k2_orders_2(sK0,k2_struct_0(sK0)) ),
    inference(resolution,[],[f552,f53])).

fof(f552,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,k2_orders_2(sK0,k2_struct_0(sK0)))
      | ~ v1_xboole_0(k2_struct_0(sK0)) ) ),
    inference(resolution,[],[f532,f68])).

fof(f68,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | ~ sP4(X1) ) ),
    inference(general_splitting,[],[f62,f67_D])).

fof(f67,plain,(
    ! [X2,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | sP4(X1) ) ),
    inference(cnf_transformation,[],[f67_D])).

fof(f67_D,plain,(
    ! [X1] :
      ( ! [X2] :
          ( ~ v1_xboole_0(X2)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) )
    <=> ~ sP4(X1) ) ),
    introduced(general_splitting_component_introduction,[new_symbols(naming,[sP4])])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).

fof(f532,plain,
    ( sP4(k2_orders_2(sK0,k2_struct_0(sK0)))
    | ~ v1_xboole_0(k2_struct_0(sK0)) ),
    inference(resolution,[],[f419,f418])).

fof(f419,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ v1_xboole_0(k2_struct_0(sK0))
      | sP4(k2_orders_2(sK0,X0)) ) ),
    inference(resolution,[],[f363,f67])).

fof(f363,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_struct_0(sK0))) ) ),
    inference(forward_demodulation,[],[f362,f195])).

fof(f362,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(forward_demodulation,[],[f169,f195])).

fof(f169,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(subsumption_resolution,[],[f168,f40])).

fof(f168,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0)))
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f167,f41])).

fof(f167,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f166,f42])).

fof(f166,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(subsumption_resolution,[],[f154,f43])).

fof(f154,plain,(
    ! [X5] :
      ( m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v5_orders_2(sK0)
      | ~ v4_orders_2(sK0)
      | ~ v3_orders_2(sK0)
      | v2_struct_0(sK0) ) ),
    inference(resolution,[],[f44,f55])).

fof(f55,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

% (22628)dis+2_128_add=large:afp=100000:afq=1.4:amm=sco:anc=none:lma=on:nm=2:newcnf=on:nwc=1:nicw=on:sas=z3:sos=theory:sac=on:updr=off_288 on theBenchmark
fof(f24,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_orders_2)).

fof(f471,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK0)))
      | ~ r2_hidden(X1,a_2_1_orders_2(sK0,X0))
      | r2_hidden(sK3(X1,sK0,X0),k2_struct_0(sK0))
      | v1_xboole_0(k2_struct_0(sK0)) ) ),
    inference(resolution,[],[f470,f54])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n008.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 12:06:00 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.50  % (22622)dis+1010_3:1_av=off:gsp=input_only:nm=6:nwc=1:sos=all:sp=occurrence_48 on theBenchmark
% 0.21/0.51  % (22608)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_7 on theBenchmark
% 0.21/0.51  % (22626)lrs+3_64_add=large:afp=40000:afq=1.4:anc=none:bd=preordered:bsr=on:fde=unused:gs=on:gsaa=from_current:gsem=on:irw=on:lcm=predicate:lma=on:lwlo=on:nm=16:newcnf=on:nwc=1.2:stl=90:sos=theory_285 on theBenchmark
% 0.21/0.52  % (22616)ott+4_32_av=off:bsr=on:cond=on:er=known:fsr=off:gsp=input_only:gs=on:gsem=on:irw=on:lma=on:nm=4:nwc=1.2:sos=theory_197 on theBenchmark
% 0.21/0.52  % (22624)dis+1010_5_add=large:afp=10000:afq=1.2:amm=off:bs=unit_only:bsr=on:bce=on:cond=fast:fsr=off:fde=none:gsp=input_only:gs=on:irw=on:lma=on:nm=4:newcnf=on:nwc=1.3:nicw=on:sos=all:sac=on:updr=off_34 on theBenchmark
% 0.21/0.53  % (22629)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_364 on theBenchmark
% 0.21/0.54  % (22622)Refutation found. Thanks to Tanya!
% 0.21/0.54  % SZS status Theorem for theBenchmark
% 0.21/0.54  % SZS output start Proof for theBenchmark
% 0.21/0.54  fof(f892,plain,(
% 0.21/0.54    $false),
% 0.21/0.54    inference(subsumption_resolution,[],[f891,f418])).
% 0.21/0.54  fof(f418,plain,(
% 0.21/0.54    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))),
% 0.21/0.54    inference(forward_demodulation,[],[f194,f195])).
% 0.21/0.54  fof(f195,plain,(
% 0.21/0.54    k2_struct_0(sK0) = u1_struct_0(sK0)),
% 0.21/0.54    inference(resolution,[],[f150,f46])).
% 0.21/0.54  fof(f46,plain,(
% 0.21/0.54    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f15])).
% 0.21/0.54  fof(f15,plain,(
% 0.21/0.54    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 0.21/0.54    inference(ennf_transformation,[],[f4])).
% 0.21/0.54  fof(f4,axiom,(
% 0.21/0.54    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).
% 0.21/0.54  fof(f150,plain,(
% 0.21/0.54    l1_struct_0(sK0)),
% 0.21/0.54    inference(resolution,[],[f44,f48])).
% 0.21/0.54  fof(f48,plain,(
% 0.21/0.54    ( ! [X0] : (l1_struct_0(X0) | ~l1_orders_2(X0)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f17])).
% 0.21/0.54  fof(f17,plain,(
% 0.21/0.54    ! [X0] : (l1_struct_0(X0) | ~l1_orders_2(X0))),
% 0.21/0.54    inference(ennf_transformation,[],[f9])).
% 0.21/0.54  fof(f9,axiom,(
% 0.21/0.54    ! [X0] : (l1_orders_2(X0) => l1_struct_0(X0))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_orders_2)).
% 0.21/0.54  fof(f44,plain,(
% 0.21/0.54    l1_orders_2(sK0)),
% 0.21/0.54    inference(cnf_transformation,[],[f30])).
% 0.21/0.54  fof(f30,plain,(
% 0.21/0.54    k1_xboole_0 != k2_orders_2(sK0,k2_struct_0(sK0)) & l1_orders_2(sK0) & v5_orders_2(sK0) & v4_orders_2(sK0) & v3_orders_2(sK0) & ~v2_struct_0(sK0)),
% 0.21/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f29])).
% 0.21/0.54  fof(f29,plain,(
% 0.21/0.54    ? [X0] : (k1_xboole_0 != k2_orders_2(X0,k2_struct_0(X0)) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (k1_xboole_0 != k2_orders_2(sK0,k2_struct_0(sK0)) & l1_orders_2(sK0) & v5_orders_2(sK0) & v4_orders_2(sK0) & v3_orders_2(sK0) & ~v2_struct_0(sK0))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f14,plain,(
% 0.21/0.54    ? [X0] : (k1_xboole_0 != k2_orders_2(X0,k2_struct_0(X0)) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 0.21/0.54    inference(flattening,[],[f13])).
% 0.21/0.54  fof(f13,plain,(
% 0.21/0.54    ? [X0] : (k1_xboole_0 != k2_orders_2(X0,k2_struct_0(X0)) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 0.21/0.54    inference(ennf_transformation,[],[f12])).
% 0.21/0.54  fof(f12,negated_conjecture,(
% 0.21/0.54    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => k1_xboole_0 = k2_orders_2(X0,k2_struct_0(X0)))),
% 0.21/0.54    inference(negated_conjecture,[],[f11])).
% 0.21/0.54  fof(f11,conjecture,(
% 0.21/0.54    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => k1_xboole_0 = k2_orders_2(X0,k2_struct_0(X0)))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_orders_2)).
% 0.21/0.54  fof(f194,plain,(
% 0.21/0.54    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.21/0.54    inference(resolution,[],[f150,f47])).
% 0.21/0.54  fof(f47,plain,(
% 0.21/0.54    ( ! [X0] : (m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_struct_0(X0)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f16])).
% 0.21/0.54  fof(f16,plain,(
% 0.21/0.54    ! [X0] : (m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_struct_0(X0))),
% 0.21/0.54    inference(ennf_transformation,[],[f5])).
% 0.21/0.54  fof(f5,axiom,(
% 0.21/0.54    ! [X0] : (l1_struct_0(X0) => m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_struct_0)).
% 0.21/0.54  fof(f891,plain,(
% 0.21/0.54    ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))),
% 0.21/0.54    inference(subsumption_resolution,[],[f881,f45])).
% 0.21/0.54  fof(f45,plain,(
% 0.21/0.54    k1_xboole_0 != k2_orders_2(sK0,k2_struct_0(sK0))),
% 0.21/0.54    inference(cnf_transformation,[],[f30])).
% 0.21/0.54  fof(f881,plain,(
% 0.21/0.54    k1_xboole_0 = k2_orders_2(sK0,k2_struct_0(sK0)) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))),
% 0.21/0.54    inference(superposition,[],[f835,f247])).
% 0.21/0.54  fof(f247,plain,(
% 0.21/0.54    ( ! [X4] : (k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4) | ~m1_subset_1(X4,k1_zfmisc_1(k2_struct_0(sK0)))) )),
% 0.21/0.54    inference(backward_demodulation,[],[f165,f195])).
% 0.21/0.54  fof(f165,plain,(
% 0.21/0.54    ( ! [X4] : (k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f164,f40])).
% 0.21/0.54  fof(f40,plain,(
% 0.21/0.54    ~v2_struct_0(sK0)),
% 0.21/0.54    inference(cnf_transformation,[],[f30])).
% 0.21/0.54  fof(f164,plain,(
% 0.21/0.54    ( ! [X4] : (k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0))) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f163,f41])).
% 0.21/0.54  fof(f41,plain,(
% 0.21/0.54    v3_orders_2(sK0)),
% 0.21/0.54    inference(cnf_transformation,[],[f30])).
% 0.21/0.54  fof(f163,plain,(
% 0.21/0.54    ( ! [X4] : (k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0))) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f162,f42])).
% 0.21/0.54  fof(f42,plain,(
% 0.21/0.54    v4_orders_2(sK0)),
% 0.21/0.54    inference(cnf_transformation,[],[f30])).
% 0.21/0.54  fof(f162,plain,(
% 0.21/0.54    ( ! [X4] : (k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0))) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f153,f43])).
% 0.21/0.54  fof(f43,plain,(
% 0.21/0.54    v5_orders_2(sK0)),
% 0.21/0.54    inference(cnf_transformation,[],[f30])).
% 0.21/0.54  fof(f153,plain,(
% 0.21/0.54    ( ! [X4] : (k2_orders_2(sK0,X4) = a_2_1_orders_2(sK0,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK0))) | ~v5_orders_2(sK0) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(resolution,[],[f44,f52])).
% 0.21/0.54  fof(f52,plain,(
% 0.21/0.54    ( ! [X0,X1] : (k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f20])).
% 0.21/0.54  fof(f20,plain,(
% 0.21/0.54    ! [X0] : (! [X1] : (k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 0.21/0.54    inference(flattening,[],[f19])).
% 0.21/0.54  fof(f19,plain,(
% 0.21/0.54    ! [X0] : (! [X1] : (k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 0.21/0.54    inference(ennf_transformation,[],[f7])).
% 0.21/0.54  fof(f7,axiom,(
% 0.21/0.54    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d13_orders_2)).
% 0.21/0.54  fof(f835,plain,(
% 0.21/0.54    k1_xboole_0 = a_2_1_orders_2(sK0,k2_struct_0(sK0))),
% 0.21/0.54    inference(resolution,[],[f823,f53])).
% 0.21/0.54  fof(f53,plain,(
% 0.21/0.54    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 0.21/0.54    inference(cnf_transformation,[],[f34])).
% 0.21/0.54  fof(f34,plain,(
% 0.21/0.54    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 0.21/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f33])).
% 0.21/0.54  fof(f33,plain,(
% 0.21/0.54    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f21,plain,(
% 0.21/0.54    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 0.21/0.54    inference(ennf_transformation,[],[f1])).
% 0.21/0.54  fof(f1,axiom,(
% 0.21/0.54    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).
% 0.21/0.54  fof(f823,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0)))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f822,f418])).
% 0.21/0.54  fof(f822,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0))) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0)))) )),
% 0.21/0.54    inference(duplicate_literal_removal,[],[f813])).
% 0.21/0.54  fof(f813,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0))) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) | ~m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(X0,a_2_1_orders_2(sK0,k2_struct_0(sK0)))) )),
% 0.21/0.54    inference(resolution,[],[f812,f601])).
% 0.21/0.54  fof(f601,plain,(
% 0.21/0.54    ( ! [X0,X1] : (~r2_hidden(sK3(X0,sK0,X1),X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(X0,a_2_1_orders_2(sK0,X1))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f600,f470])).
% 0.21/0.54  fof(f470,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),k2_struct_0(sK0)) | ~m1_subset_1(X7,k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7))) )),
% 0.21/0.54    inference(forward_demodulation,[],[f469,f195])).
% 0.21/0.54  fof(f469,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),k2_struct_0(sK0)) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7)) | ~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(forward_demodulation,[],[f173,f195])).
% 0.21/0.54  fof(f173,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0)) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7)) | ~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f172,f40])).
% 0.21/0.54  fof(f172,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0)) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7)) | ~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0))) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f171,f41])).
% 0.21/0.54  fof(f171,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0)) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7)) | ~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0))) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f170,f42])).
% 0.21/0.54  fof(f170,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0)) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7)) | ~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0))) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f155,f43])).
% 0.21/0.54  fof(f155,plain,(
% 0.21/0.54    ( ! [X6,X7] : (m1_subset_1(sK3(X6,sK0,X7),u1_struct_0(sK0)) | ~r2_hidden(X6,a_2_1_orders_2(sK0,X7)) | ~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(sK0))) | ~v5_orders_2(sK0) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(resolution,[],[f44,f56])).
% 0.21/0.54  fof(f56,plain,(
% 0.21/0.54    ( ! [X2,X0,X1] : (m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1)) | ~r2_hidden(X0,a_2_1_orders_2(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f39])).
% 0.21/0.54  fof(f39,plain,(
% 0.21/0.54    ! [X0,X1,X2] : (((r2_hidden(X0,a_2_1_orders_2(X1,X2)) | ! [X3] : ((~r2_orders_2(X1,X3,sK2(X1,X2,X3)) & r2_hidden(sK2(X1,X2,X3),X2) & m1_subset_1(sK2(X1,X2,X3),u1_struct_0(X1))) | X0 != X3 | ~m1_subset_1(X3,u1_struct_0(X1)))) & ((! [X6] : (r2_orders_2(X1,sK3(X0,X1,X2),X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X1))) & sK3(X0,X1,X2) = X0 & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1))) | ~r2_hidden(X0,a_2_1_orders_2(X1,X2)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1))),
% 0.21/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f36,f38,f37])).
% 0.21/0.54  fof(f37,plain,(
% 0.21/0.54    ! [X3,X2,X1] : (? [X4] : (~r2_orders_2(X1,X3,X4) & r2_hidden(X4,X2) & m1_subset_1(X4,u1_struct_0(X1))) => (~r2_orders_2(X1,X3,sK2(X1,X2,X3)) & r2_hidden(sK2(X1,X2,X3),X2) & m1_subset_1(sK2(X1,X2,X3),u1_struct_0(X1))))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  % (22607)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_92 on theBenchmark
% 0.21/0.54  fof(f38,plain,(
% 0.21/0.54    ! [X2,X1,X0] : (? [X5] : (! [X6] : (r2_orders_2(X1,X5,X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X1))) & X0 = X5 & m1_subset_1(X5,u1_struct_0(X1))) => (! [X6] : (r2_orders_2(X1,sK3(X0,X1,X2),X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X1))) & sK3(X0,X1,X2) = X0 & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1))))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f36,plain,(
% 0.21/0.54    ! [X0,X1,X2] : (((r2_hidden(X0,a_2_1_orders_2(X1,X2)) | ! [X3] : (? [X4] : (~r2_orders_2(X1,X3,X4) & r2_hidden(X4,X2) & m1_subset_1(X4,u1_struct_0(X1))) | X0 != X3 | ~m1_subset_1(X3,u1_struct_0(X1)))) & (? [X5] : (! [X6] : (r2_orders_2(X1,X5,X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X1))) & X0 = X5 & m1_subset_1(X5,u1_struct_0(X1))) | ~r2_hidden(X0,a_2_1_orders_2(X1,X2)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1))),
% 0.21/0.54    inference(rectify,[],[f35])).
% 0.21/0.54  fof(f35,plain,(
% 0.21/0.54    ! [X0,X1,X2] : (((r2_hidden(X0,a_2_1_orders_2(X1,X2)) | ! [X3] : (? [X4] : (~r2_orders_2(X1,X3,X4) & r2_hidden(X4,X2) & m1_subset_1(X4,u1_struct_0(X1))) | X0 != X3 | ~m1_subset_1(X3,u1_struct_0(X1)))) & (? [X3] : (! [X4] : (r2_orders_2(X1,X3,X4) | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X1))) & X0 = X3 & m1_subset_1(X3,u1_struct_0(X1))) | ~r2_hidden(X0,a_2_1_orders_2(X1,X2)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1))),
% 0.21/0.54    inference(nnf_transformation,[],[f27])).
% 0.21/0.54  fof(f27,plain,(
% 0.21/0.54    ! [X0,X1,X2] : ((r2_hidden(X0,a_2_1_orders_2(X1,X2)) <=> ? [X3] : (! [X4] : (r2_orders_2(X1,X3,X4) | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X1))) & X0 = X3 & m1_subset_1(X3,u1_struct_0(X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1))),
% 0.21/0.54    inference(flattening,[],[f26])).
% 0.21/0.54  fof(f26,plain,(
% 0.21/0.54    ! [X0,X1,X2] : ((r2_hidden(X0,a_2_1_orders_2(X1,X2)) <=> ? [X3] : (! [X4] : ((r2_orders_2(X1,X3,X4) | ~r2_hidden(X4,X2)) | ~m1_subset_1(X4,u1_struct_0(X1))) & X0 = X3 & m1_subset_1(X3,u1_struct_0(X1)))) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1)))),
% 0.21/0.54    inference(ennf_transformation,[],[f10])).
% 0.21/0.54  fof(f10,axiom,(
% 0.21/0.54    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) & l1_orders_2(X1) & v5_orders_2(X1) & v4_orders_2(X1) & v3_orders_2(X1) & ~v2_struct_0(X1)) => (r2_hidden(X0,a_2_1_orders_2(X1,X2)) <=> ? [X3] : (! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => (r2_hidden(X4,X2) => r2_orders_2(X1,X3,X4))) & X0 = X3 & m1_subset_1(X3,u1_struct_0(X1)))))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fraenkel_a_2_1_orders_2)).
% 0.21/0.54  fof(f600,plain,(
% 0.21/0.54    ( ! [X0,X1] : (~m1_subset_1(sK3(X0,sK0,X1),k2_struct_0(sK0)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(sK3(X0,sK0,X1),X1) | ~r2_hidden(X0,a_2_1_orders_2(sK0,X1))) )),
% 0.21/0.54    inference(duplicate_literal_removal,[],[f589])).
% 0.21/0.54  fof(f589,plain,(
% 0.21/0.54    ( ! [X0,X1] : (~m1_subset_1(sK3(X0,sK0,X1),k2_struct_0(sK0)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(sK3(X0,sK0,X1),X1) | ~r2_hidden(X0,a_2_1_orders_2(sK0,X1)) | ~m1_subset_1(sK3(X0,sK0,X1),k2_struct_0(sK0))) )),
% 0.21/0.54    inference(resolution,[],[f588,f248])).
% 0.21/0.54  fof(f248,plain,(
% 0.21/0.54    ( ! [X19] : (~r2_orders_2(sK0,X19,X19) | ~m1_subset_1(X19,k2_struct_0(sK0))) )),
% 0.21/0.54    inference(backward_demodulation,[],[f161,f195])).
% 0.21/0.54  fof(f161,plain,(
% 0.21/0.54    ( ! [X19] : (~r2_orders_2(sK0,X19,X19) | ~m1_subset_1(X19,u1_struct_0(sK0))) )),
% 0.21/0.54    inference(resolution,[],[f44,f69])).
% 0.21/0.54  fof(f69,plain,(
% 0.21/0.54    ( ! [X2,X0] : (~r2_orders_2(X0,X2,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 0.21/0.54    inference(duplicate_literal_removal,[],[f63])).
% 0.21/0.54  fof(f63,plain,(
% 0.21/0.54    ( ! [X2,X0] : (~r2_orders_2(X0,X2,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 0.21/0.54    inference(equality_resolution,[],[f50])).
% 0.21/0.54  fof(f50,plain,(
% 0.21/0.54    ( ! [X2,X0,X1] : (X1 != X2 | ~r2_orders_2(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f32])).
% 0.21/0.54  fof(f32,plain,(
% 0.21/0.54    ! [X0] : (! [X1] : (! [X2] : (((r2_orders_2(X0,X1,X2) | X1 = X2 | ~r1_orders_2(X0,X1,X2)) & ((X1 != X2 & r1_orders_2(X0,X1,X2)) | ~r2_orders_2(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 0.21/0.54    inference(flattening,[],[f31])).
% 0.21/0.54  fof(f31,plain,(
% 0.21/0.54    ! [X0] : (! [X1] : (! [X2] : (((r2_orders_2(X0,X1,X2) | (X1 = X2 | ~r1_orders_2(X0,X1,X2))) & ((X1 != X2 & r1_orders_2(X0,X1,X2)) | ~r2_orders_2(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 0.21/0.54    inference(nnf_transformation,[],[f18])).
% 0.21/0.54  fof(f18,plain,(
% 0.21/0.54    ! [X0] : (! [X1] : (! [X2] : ((r2_orders_2(X0,X1,X2) <=> (X1 != X2 & r1_orders_2(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 0.21/0.54    inference(ennf_transformation,[],[f6])).
% 0.21/0.54  fof(f6,axiom,(
% 0.21/0.54    ! [X0] : (l1_orders_2(X0) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_orders_2(X0,X1,X2) <=> (X1 != X2 & r1_orders_2(X0,X1,X2))))))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_orders_2)).
% 0.21/0.54  fof(f588,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~m1_subset_1(X12,k2_struct_0(sK0)) | ~m1_subset_1(X11,k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(X12,X11) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11))) )),
% 0.21/0.54    inference(forward_demodulation,[],[f587,f195])).
% 0.21/0.54  fof(f587,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (~m1_subset_1(X12,k2_struct_0(sK0)) | r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~r2_hidden(X12,X11) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11)) | ~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(forward_demodulation,[],[f181,f195])).
% 0.21/0.54  fof(f181,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~r2_hidden(X12,X11) | ~m1_subset_1(X12,u1_struct_0(sK0)) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11)) | ~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f180,f40])).
% 0.21/0.54  fof(f180,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~r2_hidden(X12,X11) | ~m1_subset_1(X12,u1_struct_0(sK0)) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11)) | ~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0))) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f179,f41])).
% 0.21/0.54  fof(f179,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~r2_hidden(X12,X11) | ~m1_subset_1(X12,u1_struct_0(sK0)) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11)) | ~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0))) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f178,f42])).
% 0.21/0.54  fof(f178,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~r2_hidden(X12,X11) | ~m1_subset_1(X12,u1_struct_0(sK0)) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11)) | ~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0))) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f157,f43])).
% 0.21/0.54  fof(f157,plain,(
% 0.21/0.54    ( ! [X12,X10,X11] : (r2_orders_2(sK0,sK3(X10,sK0,X11),X12) | ~r2_hidden(X12,X11) | ~m1_subset_1(X12,u1_struct_0(sK0)) | ~r2_hidden(X10,a_2_1_orders_2(sK0,X11)) | ~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(sK0))) | ~v5_orders_2(sK0) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(resolution,[],[f44,f58])).
% 0.21/0.54  fof(f58,plain,(
% 0.21/0.54    ( ! [X6,X2,X0,X1] : (r2_orders_2(X1,sK3(X0,X1,X2),X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X1)) | ~r2_hidden(X0,a_2_1_orders_2(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~l1_orders_2(X1) | ~v5_orders_2(X1) | ~v4_orders_2(X1) | ~v3_orders_2(X1) | v2_struct_0(X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f39])).
% 0.21/0.54  fof(f812,plain,(
% 0.21/0.54    ( ! [X0,X1] : (r2_hidden(sK3(X1,sK0,X0),k2_struct_0(sK0)) | ~r2_hidden(X1,a_2_1_orders_2(sK0,X0)) | ~m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK0)))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f471,f569])).
% 0.21/0.54  fof(f569,plain,(
% 0.21/0.54    ~v1_xboole_0(k2_struct_0(sK0))),
% 0.21/0.54    inference(subsumption_resolution,[],[f566,f45])).
% 0.21/0.54  fof(f566,plain,(
% 0.21/0.54    ~v1_xboole_0(k2_struct_0(sK0)) | k1_xboole_0 = k2_orders_2(sK0,k2_struct_0(sK0))),
% 0.21/0.54    inference(resolution,[],[f552,f53])).
% 0.21/0.54  fof(f552,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(X0,k2_orders_2(sK0,k2_struct_0(sK0))) | ~v1_xboole_0(k2_struct_0(sK0))) )),
% 0.21/0.54    inference(resolution,[],[f532,f68])).
% 0.21/0.54  fof(f68,plain,(
% 0.21/0.54    ( ! [X0,X1] : (~r2_hidden(X0,X1) | ~sP4(X1)) )),
% 0.21/0.54    inference(general_splitting,[],[f62,f67_D])).
% 0.21/0.54  fof(f67,plain,(
% 0.21/0.54    ( ! [X2,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | sP4(X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f67_D])).
% 0.21/0.54  fof(f67_D,plain,(
% 0.21/0.54    ( ! [X1] : (( ! [X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2))) ) <=> ~sP4(X1)) )),
% 0.21/0.54    introduced(general_splitting_component_introduction,[new_symbols(naming,[sP4])])).
% 0.21/0.54  fof(f62,plain,(
% 0.21/0.54    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f28])).
% 0.21/0.54  fof(f28,plain,(
% 0.21/0.54    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 0.21/0.54    inference(ennf_transformation,[],[f3])).
% 0.21/0.54  fof(f3,axiom,(
% 0.21/0.54    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).
% 0.21/0.54  fof(f532,plain,(
% 0.21/0.54    sP4(k2_orders_2(sK0,k2_struct_0(sK0))) | ~v1_xboole_0(k2_struct_0(sK0))),
% 0.21/0.54    inference(resolution,[],[f419,f418])).
% 0.21/0.54  fof(f419,plain,(
% 0.21/0.54    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK0))) | ~v1_xboole_0(k2_struct_0(sK0)) | sP4(k2_orders_2(sK0,X0))) )),
% 0.21/0.54    inference(resolution,[],[f363,f67])).
% 0.21/0.54  fof(f363,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(k2_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_struct_0(sK0)))) )),
% 0.21/0.54    inference(forward_demodulation,[],[f362,f195])).
% 0.21/0.54  fof(f362,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(k2_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(forward_demodulation,[],[f169,f195])).
% 0.21/0.54  fof(f169,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f168,f40])).
% 0.21/0.54  fof(f168,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0))) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f167,f41])).
% 0.21/0.54  fof(f167,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0))) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f166,f42])).
% 0.21/0.54  fof(f166,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0))) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(subsumption_resolution,[],[f154,f43])).
% 0.21/0.54  fof(f154,plain,(
% 0.21/0.54    ( ! [X5] : (m1_subset_1(k2_orders_2(sK0,X5),k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK0))) | ~v5_orders_2(sK0) | ~v4_orders_2(sK0) | ~v3_orders_2(sK0) | v2_struct_0(sK0)) )),
% 0.21/0.54    inference(resolution,[],[f44,f55])).
% 0.21/0.54  fof(f55,plain,(
% 0.21/0.54    ( ! [X0,X1] : (m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f25])).
% 0.21/0.54  fof(f25,plain,(
% 0.21/0.54    ! [X0,X1] : (m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 0.21/0.54    inference(flattening,[],[f24])).
% 0.21/0.54  % (22628)dis+2_128_add=large:afp=100000:afq=1.4:amm=sco:anc=none:lma=on:nm=2:newcnf=on:nwc=1:nicw=on:sas=z3:sos=theory:sac=on:updr=off_288 on theBenchmark
% 0.21/0.54  fof(f24,plain,(
% 0.21/0.54    ! [X0,X1] : (m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 0.21/0.54    inference(ennf_transformation,[],[f8])).
% 0.21/0.54  fof(f8,axiom,(
% 0.21/0.54    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => m1_subset_1(k2_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_orders_2)).
% 0.21/0.54  fof(f471,plain,(
% 0.21/0.54    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK0))) | ~r2_hidden(X1,a_2_1_orders_2(sK0,X0)) | r2_hidden(sK3(X1,sK0,X0),k2_struct_0(sK0)) | v1_xboole_0(k2_struct_0(sK0))) )),
% 0.21/0.54    inference(resolution,[],[f470,f54])).
% 0.21/0.54  fof(f54,plain,(
% 0.21/0.54    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f23])).
% 0.21/0.54  fof(f23,plain,(
% 0.21/0.54    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 0.21/0.54    inference(flattening,[],[f22])).
% 0.21/0.54  fof(f22,plain,(
% 0.21/0.54    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 0.21/0.54    inference(ennf_transformation,[],[f2])).
% 0.21/0.54  fof(f2,axiom,(
% 0.21/0.54    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).
% 0.21/0.54  % SZS output end Proof for theBenchmark
% 0.21/0.54  % (22622)------------------------------
% 0.21/0.54  % (22622)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.54  % (22622)Termination reason: Refutation
% 0.21/0.54  
% 0.21/0.54  % (22622)Memory used [KB]: 1791
% 0.21/0.54  % (22622)Time elapsed: 0.095 s
% 0.21/0.54  % (22622)------------------------------
% 0.21/0.54  % (22622)------------------------------
% 0.21/0.54  % (22603)Success in time 0.174 s
%------------------------------------------------------------------------------
