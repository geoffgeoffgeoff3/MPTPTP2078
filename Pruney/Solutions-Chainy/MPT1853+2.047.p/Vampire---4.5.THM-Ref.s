%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:20:49 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   72 (1652 expanded)
%              Number of leaves         :   10 ( 446 expanded)
%              Depth                    :   23
%              Number of atoms          :  301 (10271 expanded)
%              Number of equality atoms :   33 ( 212 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f87,plain,(
    $false ),
    inference(subsumption_resolution,[],[f86,f78])).

fof(f78,plain,(
    v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) ),
    inference(subsumption_resolution,[],[f77,f69])).

fof(f69,plain,
    ( v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))
    | v1_tex_2(k1_tex_2(sK0,sK1),sK0) ),
    inference(backward_demodulation,[],[f35,f67])).

fof(f67,plain,(
    k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1)) ),
    inference(subsumption_resolution,[],[f66,f32])).

fof(f32,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,
    ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0))
      | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0) )
    & ( v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0))
      | v1_tex_2(k1_tex_2(sK0,sK1),sK0) )
    & m1_subset_1(sK1,u1_struct_0(sK0))
    & l1_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f25,f24])).

fof(f24,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
              | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
            & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
              | v1_tex_2(k1_tex_2(X0,X1),X0) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0))
            | ~ v1_tex_2(k1_tex_2(sK0,X1),sK0) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0))
            | v1_tex_2(k1_tex_2(sK0,X1),sK0) )
          & m1_subset_1(X1,u1_struct_0(sK0)) )
      & l1_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ? [X1] :
        ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0))
          | ~ v1_tex_2(k1_tex_2(sK0,X1),sK0) )
        & ( v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0))
          | v1_tex_2(k1_tex_2(sK0,X1),sK0) )
        & m1_subset_1(X1,u1_struct_0(sK0)) )
   => ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0))
        | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0) )
      & ( v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0))
        | v1_tex_2(k1_tex_2(sK0,sK1),sK0) )
      & m1_subset_1(sK1,u1_struct_0(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | v1_tex_2(k1_tex_2(X0,X1),X0) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | v1_tex_2(k1_tex_2(X0,X1),X0) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f10,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_tex_2(k1_tex_2(X0,X1),X0)
          <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f9])).

fof(f9,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_tex_2(k1_tex_2(X0,X1),X0)
          <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ( v1_tex_2(k1_tex_2(X0,X1),X0)
            <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f7,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ( v1_tex_2(k1_tex_2(X0,X1),X0)
          <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_tex_2)).

fof(f66,plain,
    ( k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1))
    | v2_struct_0(sK0) ),
    inference(subsumption_resolution,[],[f65,f33])).

fof(f33,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f65,plain,
    ( k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1))
    | ~ l1_pre_topc(sK0)
    | v2_struct_0(sK0) ),
    inference(subsumption_resolution,[],[f64,f34])).

fof(f34,plain,(
    m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f26])).

fof(f64,plain,
    ( k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1))
    | ~ m1_subset_1(sK1,u1_struct_0(sK0))
    | ~ l1_pre_topc(sK0)
    | v2_struct_0(sK0) ),
    inference(subsumption_resolution,[],[f63,f58])).

fof(f58,plain,(
    ~ v2_struct_0(k1_tex_2(sK0,sK1)) ),
    inference(unit_resulting_resolution,[],[f32,f33,f34,f46])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ~ v2_struct_0(k1_tex_2(X0,X1))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & v1_pre_topc(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & v1_pre_topc(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & v1_pre_topc(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_tex_2)).

fof(f63,plain,
    ( k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1))
    | v2_struct_0(k1_tex_2(sK0,sK1))
    | ~ m1_subset_1(sK1,u1_struct_0(sK0))
    | ~ l1_pre_topc(sK0)
    | v2_struct_0(sK0) ),
    inference(subsumption_resolution,[],[f62,f60])).

fof(f60,plain,(
    m1_pre_topc(k1_tex_2(sK0,sK1),sK0) ),
    inference(unit_resulting_resolution,[],[f32,f33,f34,f48])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | m1_pre_topc(k1_tex_2(X0,X1),X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f62,plain,
    ( ~ m1_pre_topc(k1_tex_2(sK0,sK1),sK0)
    | k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1))
    | v2_struct_0(k1_tex_2(sK0,sK1))
    | ~ m1_subset_1(sK1,u1_struct_0(sK0))
    | ~ l1_pre_topc(sK0)
    | v2_struct_0(sK0) ),
    inference(resolution,[],[f59,f50])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ~ v1_pre_topc(k1_tex_2(X0,X1))
      | ~ m1_pre_topc(k1_tex_2(X0,X1),X0)
      | k6_domain_1(u1_struct_0(X0),X1) = u1_struct_0(k1_tex_2(X0,X1))
      | v2_struct_0(k1_tex_2(X0,X1))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f43])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1)
      | k1_tex_2(X0,X1) != X2
      | ~ m1_pre_topc(X2,X0)
      | ~ v1_pre_topc(X2)
      | v2_struct_0(X2)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k1_tex_2(X0,X1) = X2
                  | u1_struct_0(X2) != k6_domain_1(u1_struct_0(X0),X1) )
                & ( u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1)
                  | k1_tex_2(X0,X1) != X2 ) )
              | ~ m1_pre_topc(X2,X0)
              | ~ v1_pre_topc(X2)
              | v2_struct_0(X2) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k1_tex_2(X0,X1) = X2
              <=> u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1) )
              | ~ m1_pre_topc(X2,X0)
              | ~ v1_pre_topc(X2)
              | v2_struct_0(X2) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k1_tex_2(X0,X1) = X2
              <=> u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1) )
              | ~ m1_pre_topc(X2,X0)
              | ~ v1_pre_topc(X2)
              | v2_struct_0(X2) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & v1_pre_topc(X2)
                & ~ v2_struct_0(X2) )
             => ( k1_tex_2(X0,X1) = X2
              <=> u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_tex_2)).

fof(f59,plain,(
    v1_pre_topc(k1_tex_2(sK0,sK1)) ),
    inference(unit_resulting_resolution,[],[f32,f33,f34,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | v1_pre_topc(k1_tex_2(X0,X1))
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f35,plain,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0))
    | v1_tex_2(k1_tex_2(sK0,sK1),sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f77,plain,
    ( v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))
    | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0) ),
    inference(subsumption_resolution,[],[f76,f33])).

fof(f76,plain,
    ( v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))
    | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0)
    | ~ l1_pre_topc(sK0) ),
    inference(subsumption_resolution,[],[f75,f60])).

fof(f75,plain,
    ( v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))
    | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0)
    | ~ m1_pre_topc(k1_tex_2(sK0,sK1),sK0)
    | ~ l1_pre_topc(sK0) ),
    inference(resolution,[],[f68,f49])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | v1_subset_1(u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_tex_2(X1,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f38])).

fof(f38,plain,(
    ! [X0,X3,X1] :
      ( v1_subset_1(X3,u1_struct_0(X0))
      | u1_struct_0(X1) != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v1_tex_2(X1,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tex_2(X1,X0)
              | ( ~ v1_subset_1(sK2(X0,X1),u1_struct_0(X0))
                & u1_struct_0(X1) = sK2(X0,X1)
                & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X3] :
                  ( v1_subset_1(X3,u1_struct_0(X0))
                  | u1_struct_0(X1) != X3
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v1_tex_2(X1,X0) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f29])).

fof(f29,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ v1_subset_1(X2,u1_struct_0(X0))
          & u1_struct_0(X1) = X2
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v1_subset_1(sK2(X0,X1),u1_struct_0(X0))
        & u1_struct_0(X1) = sK2(X0,X1)
        & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tex_2(X1,X0)
              | ? [X2] :
                  ( ~ v1_subset_1(X2,u1_struct_0(X0))
                  & u1_struct_0(X1) = X2
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X3] :
                  ( v1_subset_1(X3,u1_struct_0(X0))
                  | u1_struct_0(X1) != X3
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v1_tex_2(X1,X0) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tex_2(X1,X0)
              | ? [X2] :
                  ( ~ v1_subset_1(X2,u1_struct_0(X0))
                  & u1_struct_0(X1) = X2
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X2] :
                  ( v1_subset_1(X2,u1_struct_0(X0))
                  | u1_struct_0(X1) != X2
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v1_tex_2(X1,X0) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tex_2(X1,X0)
          <=> ! [X2] :
                ( v1_subset_1(X2,u1_struct_0(X0))
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f12])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tex_2(X1,X0)
          <=> ! [X2] :
                ( v1_subset_1(X2,u1_struct_0(X0))
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( v1_tex_2(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( u1_struct_0(X1) = X2
                 => v1_subset_1(X2,u1_struct_0(X0)) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tex_2)).

fof(f68,plain,(
    m1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(backward_demodulation,[],[f61,f67])).

fof(f61,plain,(
    m1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unit_resulting_resolution,[],[f57,f34,f45])).

fof(f45,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_domain_1)).

fof(f57,plain,(
    ~ v1_xboole_0(u1_struct_0(sK0)) ),
    inference(unit_resulting_resolution,[],[f32,f51,f42])).

fof(f42,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

fof(f51,plain,(
    l1_struct_0(sK0) ),
    inference(unit_resulting_resolution,[],[f33,f37])).

fof(f37,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(f86,plain,(
    ~ v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) ),
    inference(backward_demodulation,[],[f85,f84])).

fof(f84,plain,(
    u1_struct_0(k1_tex_2(sK0,sK1)) = sK2(sK0,k1_tex_2(sK0,sK1)) ),
    inference(unit_resulting_resolution,[],[f33,f60,f79,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | u1_struct_0(X1) = sK2(X0,X1)
      | ~ m1_pre_topc(X1,X0)
      | v1_tex_2(X1,X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f79,plain,(
    ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0) ),
    inference(unit_resulting_resolution,[],[f78,f70])).

fof(f70,plain,
    ( ~ v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))
    | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0) ),
    inference(backward_demodulation,[],[f36,f67])).

fof(f36,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0))
    | ~ v1_tex_2(k1_tex_2(sK0,sK1),sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f85,plain,(
    ~ v1_subset_1(sK2(sK0,k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) ),
    inference(unit_resulting_resolution,[],[f33,f60,f79,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ v1_subset_1(sK2(X0,X1),u1_struct_0(X0))
      | v1_tex_2(X1,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f30])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:29:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.47  % (10910)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_159 on theBenchmark
% 0.21/0.47  % (10902)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.21/0.47  % (10910)Refutation found. Thanks to Tanya!
% 0.21/0.47  % SZS status Theorem for theBenchmark
% 0.21/0.47  % SZS output start Proof for theBenchmark
% 0.21/0.47  fof(f87,plain,(
% 0.21/0.47    $false),
% 0.21/0.47    inference(subsumption_resolution,[],[f86,f78])).
% 0.21/0.47  fof(f78,plain,(
% 0.21/0.47    v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))),
% 0.21/0.47    inference(subsumption_resolution,[],[f77,f69])).
% 0.21/0.47  fof(f69,plain,(
% 0.21/0.47    v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) | v1_tex_2(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.47    inference(backward_demodulation,[],[f35,f67])).
% 0.21/0.47  fof(f67,plain,(
% 0.21/0.47    k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1))),
% 0.21/0.47    inference(subsumption_resolution,[],[f66,f32])).
% 0.21/0.47  fof(f32,plain,(
% 0.21/0.47    ~v2_struct_0(sK0)),
% 0.21/0.47    inference(cnf_transformation,[],[f26])).
% 0.21/0.47  fof(f26,plain,(
% 0.21/0.47    ((~v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0)) & (v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) | v1_tex_2(k1_tex_2(sK0,sK1),sK0)) & m1_subset_1(sK1,u1_struct_0(sK0))) & l1_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 0.21/0.47    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f25,f24])).
% 0.21/0.47  fof(f24,plain,(
% 0.21/0.47    ? [X0] : (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0)) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,X1),sK0)) & (v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0)) | v1_tex_2(k1_tex_2(sK0,X1),sK0)) & m1_subset_1(X1,u1_struct_0(sK0))) & l1_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 0.21/0.47    introduced(choice_axiom,[])).
% 0.21/0.47  fof(f25,plain,(
% 0.21/0.47    ? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,X1),sK0)) & (v1_subset_1(k6_domain_1(u1_struct_0(sK0),X1),u1_struct_0(sK0)) | v1_tex_2(k1_tex_2(sK0,X1),sK0)) & m1_subset_1(X1,u1_struct_0(sK0))) => ((~v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0)) & (v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) | v1_tex_2(k1_tex_2(sK0,sK1),sK0)) & m1_subset_1(sK1,u1_struct_0(sK0)))),
% 0.21/0.47    introduced(choice_axiom,[])).
% 0.21/0.47  fof(f23,plain,(
% 0.21/0.47    ? [X0] : (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0)) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.21/0.47    inference(flattening,[],[f22])).
% 0.21/0.47  fof(f22,plain,(
% 0.21/0.47    ? [X0] : (? [X1] : (((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.21/0.47    inference(nnf_transformation,[],[f10])).
% 0.21/0.47  fof(f10,plain,(
% 0.21/0.47    ? [X0] : (? [X1] : ((v1_tex_2(k1_tex_2(X0,X1),X0) <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.21/0.47    inference(flattening,[],[f9])).
% 0.21/0.47  fof(f9,plain,(
% 0.21/0.47    ? [X0] : (? [X1] : ((v1_tex_2(k1_tex_2(X0,X1),X0) <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & ~v2_struct_0(X0)))),
% 0.21/0.47    inference(ennf_transformation,[],[f8])).
% 0.21/0.47  fof(f8,negated_conjecture,(
% 0.21/0.47    ~! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (v1_tex_2(k1_tex_2(X0,X1),X0) <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)))))),
% 0.21/0.47    inference(negated_conjecture,[],[f7])).
% 0.21/0.47  fof(f7,conjecture,(
% 0.21/0.47    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (v1_tex_2(k1_tex_2(X0,X1),X0) <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)))))),
% 0.21/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_tex_2)).
% 0.21/0.47  fof(f66,plain,(
% 0.21/0.47    k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1)) | v2_struct_0(sK0)),
% 0.21/0.47    inference(subsumption_resolution,[],[f65,f33])).
% 0.21/0.47  fof(f33,plain,(
% 0.21/0.47    l1_pre_topc(sK0)),
% 0.21/0.47    inference(cnf_transformation,[],[f26])).
% 0.21/0.47  fof(f65,plain,(
% 0.21/0.47    k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1)) | ~l1_pre_topc(sK0) | v2_struct_0(sK0)),
% 0.21/0.47    inference(subsumption_resolution,[],[f64,f34])).
% 0.21/0.47  fof(f34,plain,(
% 0.21/0.47    m1_subset_1(sK1,u1_struct_0(sK0))),
% 0.21/0.47    inference(cnf_transformation,[],[f26])).
% 0.21/0.47  fof(f64,plain,(
% 0.21/0.47    k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1)) | ~m1_subset_1(sK1,u1_struct_0(sK0)) | ~l1_pre_topc(sK0) | v2_struct_0(sK0)),
% 0.21/0.47    inference(subsumption_resolution,[],[f63,f58])).
% 0.21/0.47  fof(f58,plain,(
% 0.21/0.47    ~v2_struct_0(k1_tex_2(sK0,sK1))),
% 0.21/0.47    inference(unit_resulting_resolution,[],[f32,f33,f34,f46])).
% 0.21/0.47  fof(f46,plain,(
% 0.21/0.47    ( ! [X0,X1] : (~v2_struct_0(k1_tex_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.21/0.47    inference(cnf_transformation,[],[f21])).
% 0.21/0.47  fof(f21,plain,(
% 0.21/0.47    ! [X0,X1] : ((m1_pre_topc(k1_tex_2(X0,X1),X0) & v1_pre_topc(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 0.21/0.47    inference(flattening,[],[f20])).
% 0.21/0.47  fof(f20,plain,(
% 0.21/0.47    ! [X0,X1] : ((m1_pre_topc(k1_tex_2(X0,X1),X0) & v1_pre_topc(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))) | (~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 0.21/0.47    inference(ennf_transformation,[],[f6])).
% 0.21/0.47  fof(f6,axiom,(
% 0.21/0.47    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_pre_topc(k1_tex_2(X0,X1),X0) & v1_pre_topc(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))))),
% 0.21/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_tex_2)).
% 0.21/0.47  fof(f63,plain,(
% 0.21/0.47    k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1)) | v2_struct_0(k1_tex_2(sK0,sK1)) | ~m1_subset_1(sK1,u1_struct_0(sK0)) | ~l1_pre_topc(sK0) | v2_struct_0(sK0)),
% 0.21/0.47    inference(subsumption_resolution,[],[f62,f60])).
% 0.21/0.47  fof(f60,plain,(
% 0.21/0.47    m1_pre_topc(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.47    inference(unit_resulting_resolution,[],[f32,f33,f34,f48])).
% 0.21/0.47  fof(f48,plain,(
% 0.21/0.47    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | m1_pre_topc(k1_tex_2(X0,X1),X0) | v2_struct_0(X0)) )),
% 0.21/0.47    inference(cnf_transformation,[],[f21])).
% 0.21/0.47  fof(f62,plain,(
% 0.21/0.47    ~m1_pre_topc(k1_tex_2(sK0,sK1),sK0) | k6_domain_1(u1_struct_0(sK0),sK1) = u1_struct_0(k1_tex_2(sK0,sK1)) | v2_struct_0(k1_tex_2(sK0,sK1)) | ~m1_subset_1(sK1,u1_struct_0(sK0)) | ~l1_pre_topc(sK0) | v2_struct_0(sK0)),
% 0.21/0.47    inference(resolution,[],[f59,f50])).
% 0.21/0.47  fof(f50,plain,(
% 0.21/0.47    ( ! [X0,X1] : (~v1_pre_topc(k1_tex_2(X0,X1)) | ~m1_pre_topc(k1_tex_2(X0,X1),X0) | k6_domain_1(u1_struct_0(X0),X1) = u1_struct_0(k1_tex_2(X0,X1)) | v2_struct_0(k1_tex_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.21/0.47    inference(equality_resolution,[],[f43])).
% 0.21/0.47  fof(f43,plain,(
% 0.21/0.47    ( ! [X2,X0,X1] : (u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1) | k1_tex_2(X0,X1) != X2 | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | v2_struct_0(X2) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 0.21/0.47    inference(cnf_transformation,[],[f31])).
% 0.21/0.47  fof(f31,plain,(
% 0.21/0.47    ! [X0] : (! [X1] : (! [X2] : (((k1_tex_2(X0,X1) = X2 | u1_struct_0(X2) != k6_domain_1(u1_struct_0(X0),X1)) & (u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1) | k1_tex_2(X0,X1) != X2)) | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | v2_struct_0(X2)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 0.21/0.47    inference(nnf_transformation,[],[f17])).
% 0.21/0.47  fof(f17,plain,(
% 0.21/0.47    ! [X0] : (! [X1] : (! [X2] : ((k1_tex_2(X0,X1) = X2 <=> u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1)) | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | v2_struct_0(X2)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 0.21/0.47    inference(flattening,[],[f16])).
% 0.21/0.47  fof(f16,plain,(
% 0.21/0.47    ! [X0] : (! [X1] : (! [X2] : ((k1_tex_2(X0,X1) = X2 <=> u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1)) | (~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | v2_struct_0(X2))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 0.21/0.47    inference(ennf_transformation,[],[f5])).
% 0.21/0.47  fof(f5,axiom,(
% 0.21/0.47    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : ((m1_pre_topc(X2,X0) & v1_pre_topc(X2) & ~v2_struct_0(X2)) => (k1_tex_2(X0,X1) = X2 <=> u1_struct_0(X2) = k6_domain_1(u1_struct_0(X0),X1)))))),
% 0.21/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_tex_2)).
% 0.21/0.47  fof(f59,plain,(
% 0.21/0.47    v1_pre_topc(k1_tex_2(sK0,sK1))),
% 0.21/0.47    inference(unit_resulting_resolution,[],[f32,f33,f34,f47])).
% 0.21/0.47  fof(f47,plain,(
% 0.21/0.47    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | v1_pre_topc(k1_tex_2(X0,X1)) | v2_struct_0(X0)) )),
% 0.21/0.47    inference(cnf_transformation,[],[f21])).
% 0.21/0.47  fof(f35,plain,(
% 0.21/0.47    v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) | v1_tex_2(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.47    inference(cnf_transformation,[],[f26])).
% 0.21/0.47  fof(f77,plain,(
% 0.21/0.47    v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.47    inference(subsumption_resolution,[],[f76,f33])).
% 0.21/0.47  fof(f76,plain,(
% 0.21/0.47    v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0) | ~l1_pre_topc(sK0)),
% 0.21/0.47    inference(subsumption_resolution,[],[f75,f60])).
% 0.21/0.47  fof(f75,plain,(
% 0.21/0.47    v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0) | ~m1_pre_topc(k1_tex_2(sK0,sK1),sK0) | ~l1_pre_topc(sK0)),
% 0.21/0.47    inference(resolution,[],[f68,f49])).
% 0.21/0.47  fof(f49,plain,(
% 0.21/0.47    ( ! [X0,X1] : (~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | v1_subset_1(u1_struct_0(X1),u1_struct_0(X0)) | ~v1_tex_2(X1,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 0.21/0.47    inference(equality_resolution,[],[f38])).
% 0.21/0.47  fof(f38,plain,(
% 0.21/0.47    ( ! [X0,X3,X1] : (v1_subset_1(X3,u1_struct_0(X0)) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v1_tex_2(X1,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 0.21/0.47    inference(cnf_transformation,[],[f30])).
% 0.21/0.48  fof(f30,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (((v1_tex_2(X1,X0) | (~v1_subset_1(sK2(X0,X1),u1_struct_0(X0)) & u1_struct_0(X1) = sK2(X0,X1) & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (v1_subset_1(X3,u1_struct_0(X0)) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tex_2(X1,X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 0.21/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f29])).
% 0.21/0.48  fof(f29,plain,(
% 0.21/0.48    ! [X1,X0] : (? [X2] : (~v1_subset_1(X2,u1_struct_0(X0)) & u1_struct_0(X1) = X2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~v1_subset_1(sK2(X0,X1),u1_struct_0(X0)) & u1_struct_0(X1) = sK2(X0,X1) & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 0.21/0.48    introduced(choice_axiom,[])).
% 0.21/0.48  fof(f28,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (((v1_tex_2(X1,X0) | ? [X2] : (~v1_subset_1(X2,u1_struct_0(X0)) & u1_struct_0(X1) = X2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (v1_subset_1(X3,u1_struct_0(X0)) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tex_2(X1,X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 0.21/0.48    inference(rectify,[],[f27])).
% 0.21/0.48  fof(f27,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : (((v1_tex_2(X1,X0) | ? [X2] : (~v1_subset_1(X2,u1_struct_0(X0)) & u1_struct_0(X1) = X2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v1_subset_1(X2,u1_struct_0(X0)) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tex_2(X1,X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 0.21/0.48    inference(nnf_transformation,[],[f13])).
% 0.21/0.48  fof(f13,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : ((v1_tex_2(X1,X0) <=> ! [X2] : (v1_subset_1(X2,u1_struct_0(X0)) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 0.21/0.48    inference(flattening,[],[f12])).
% 0.21/0.48  fof(f12,plain,(
% 0.21/0.48    ! [X0] : (! [X1] : ((v1_tex_2(X1,X0) <=> ! [X2] : ((v1_subset_1(X2,u1_struct_0(X0)) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 0.21/0.48    inference(ennf_transformation,[],[f4])).
% 0.21/0.48  fof(f4,axiom,(
% 0.21/0.48    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => (v1_tex_2(X1,X0) <=> ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => v1_subset_1(X2,u1_struct_0(X0)))))))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tex_2)).
% 0.21/0.48  fof(f68,plain,(
% 0.21/0.48    m1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.21/0.48    inference(backward_demodulation,[],[f61,f67])).
% 0.21/0.48  fof(f61,plain,(
% 0.21/0.48    m1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.21/0.48    inference(unit_resulting_resolution,[],[f57,f34,f45])).
% 0.21/0.48  fof(f45,plain,(
% 0.21/0.48    ( ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f19])).
% 0.21/0.48  fof(f19,plain,(
% 0.21/0.48    ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 0.21/0.48    inference(flattening,[],[f18])).
% 0.21/0.48  fof(f18,plain,(
% 0.21/0.48    ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 0.21/0.48    inference(ennf_transformation,[],[f3])).
% 0.21/0.48  fof(f3,axiom,(
% 0.21/0.48    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_domain_1)).
% 0.21/0.48  fof(f57,plain,(
% 0.21/0.48    ~v1_xboole_0(u1_struct_0(sK0))),
% 0.21/0.48    inference(unit_resulting_resolution,[],[f32,f51,f42])).
% 0.21/0.48  fof(f42,plain,(
% 0.21/0.48    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f15])).
% 0.21/0.48  fof(f15,plain,(
% 0.21/0.48    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.21/0.48    inference(flattening,[],[f14])).
% 0.21/0.48  fof(f14,plain,(
% 0.21/0.48    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.21/0.48    inference(ennf_transformation,[],[f2])).
% 0.21/0.48  fof(f2,axiom,(
% 0.21/0.48    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).
% 0.21/0.48  fof(f51,plain,(
% 0.21/0.48    l1_struct_0(sK0)),
% 0.21/0.48    inference(unit_resulting_resolution,[],[f33,f37])).
% 0.21/0.48  fof(f37,plain,(
% 0.21/0.48    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f11])).
% 0.21/0.48  fof(f11,plain,(
% 0.21/0.48    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 0.21/0.48    inference(ennf_transformation,[],[f1])).
% 0.21/0.48  fof(f1,axiom,(
% 0.21/0.48    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 0.21/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_pre_topc)).
% 0.21/0.48  fof(f86,plain,(
% 0.21/0.48    ~v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0))),
% 0.21/0.48    inference(backward_demodulation,[],[f85,f84])).
% 0.21/0.48  fof(f84,plain,(
% 0.21/0.48    u1_struct_0(k1_tex_2(sK0,sK1)) = sK2(sK0,k1_tex_2(sK0,sK1))),
% 0.21/0.48    inference(unit_resulting_resolution,[],[f33,f60,f79,f40])).
% 0.21/0.48  fof(f40,plain,(
% 0.21/0.48    ( ! [X0,X1] : (~l1_pre_topc(X0) | u1_struct_0(X1) = sK2(X0,X1) | ~m1_pre_topc(X1,X0) | v1_tex_2(X1,X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f30])).
% 0.21/0.48  fof(f79,plain,(
% 0.21/0.48    ~v1_tex_2(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.48    inference(unit_resulting_resolution,[],[f78,f70])).
% 0.21/0.48  fof(f70,plain,(
% 0.21/0.48    ~v1_subset_1(u1_struct_0(k1_tex_2(sK0,sK1)),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.48    inference(backward_demodulation,[],[f36,f67])).
% 0.21/0.48  fof(f36,plain,(
% 0.21/0.48    ~v1_subset_1(k6_domain_1(u1_struct_0(sK0),sK1),u1_struct_0(sK0)) | ~v1_tex_2(k1_tex_2(sK0,sK1),sK0)),
% 0.21/0.48    inference(cnf_transformation,[],[f26])).
% 0.21/0.48  fof(f85,plain,(
% 0.21/0.48    ~v1_subset_1(sK2(sK0,k1_tex_2(sK0,sK1)),u1_struct_0(sK0))),
% 0.21/0.48    inference(unit_resulting_resolution,[],[f33,f60,f79,f41])).
% 0.21/0.48  fof(f41,plain,(
% 0.21/0.48    ( ! [X0,X1] : (~v1_subset_1(sK2(X0,X1),u1_struct_0(X0)) | v1_tex_2(X1,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 0.21/0.48    inference(cnf_transformation,[],[f30])).
% 0.21/0.48  % SZS output end Proof for theBenchmark
% 0.21/0.48  % (10910)------------------------------
% 0.21/0.48  % (10910)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.48  % (10910)Termination reason: Refutation
% 0.21/0.48  
% 0.21/0.48  % (10910)Memory used [KB]: 6140
% 0.21/0.48  % (10910)Time elapsed: 0.011 s
% 0.21/0.48  % (10910)------------------------------
% 0.21/0.48  % (10910)------------------------------
% 0.21/0.48  % (10894)Success in time 0.119 s
%------------------------------------------------------------------------------
