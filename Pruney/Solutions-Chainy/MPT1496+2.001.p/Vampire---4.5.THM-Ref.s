%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:15:38 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   79 ( 205 expanded)
%              Number of leaves         :   19 (  95 expanded)
%              Depth                    :    9
%              Number of atoms          :  317 ( 867 expanded)
%              Number of equality atoms :   15 (  25 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f118,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f42,f43,f48,f53,f58,f63,f70,f80,f87,f99,f104,f106,f108,f113])).

fof(f113,plain,
    ( ~ spl3_1
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | spl3_9
    | ~ spl3_10
    | ~ spl3_12 ),
    inference(avatar_split_clause,[],[f112,f96,f84,f77,f60,f55,f50,f35])).

fof(f35,plain,
    ( spl3_1
  <=> r1_lattice3(k3_lattice3(sK1),sK0,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f50,plain,
    ( spl3_4
  <=> l3_lattices(sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).

fof(f55,plain,
    ( spl3_5
  <=> v10_lattices(sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).

fof(f60,plain,
    ( spl3_6
  <=> v2_struct_0(sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).

fof(f77,plain,
    ( spl3_9
  <=> r3_lattice3(sK1,sK2,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_9])])).

fof(f84,plain,
    ( spl3_10
  <=> m1_subset_1(sK2,u1_struct_0(sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).

fof(f96,plain,
    ( spl3_12
  <=> sK2 = k4_lattice3(sK1,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).

fof(f112,plain,
    ( ~ r1_lattice3(k3_lattice3(sK1),sK0,sK2)
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | spl3_9
    | ~ spl3_10
    | ~ spl3_12 ),
    inference(forward_demodulation,[],[f110,f98])).

fof(f98,plain,
    ( sK2 = k4_lattice3(sK1,sK2)
    | ~ spl3_12 ),
    inference(avatar_component_clause,[],[f96])).

fof(f110,plain,
    ( ~ r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2))
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | spl3_9
    | ~ spl3_10 ),
    inference(unit_resulting_resolution,[],[f62,f57,f52,f78,f86,f30])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( ~ l3_lattices(X1)
      | ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
      | ~ m1_subset_1(X2,u1_struct_0(X1))
      | r3_lattice3(X1,X2,X0)
      | ~ v10_lattices(X1)
      | v2_struct_0(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r3_lattice3(X1,X2,X0)
              | ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) )
            & ( r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
              | ~ r3_lattice3(X1,X2,X0) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X1)) )
      | ~ l3_lattices(X1)
      | ~ v10_lattices(X1)
      | v2_struct_0(X1) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f10,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r3_lattice3(X1,X2,X0)
          <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) )
          | ~ m1_subset_1(X2,u1_struct_0(X1)) )
      | ~ l3_lattices(X1)
      | ~ v10_lattices(X1)
      | v2_struct_0(X1) ) ),
    inference(flattening,[],[f9])).

fof(f9,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r3_lattice3(X1,X2,X0)
          <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) )
          | ~ m1_subset_1(X2,u1_struct_0(X1)) )
      | ~ l3_lattices(X1)
      | ~ v10_lattices(X1)
      | v2_struct_0(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ( l3_lattices(X1)
        & v10_lattices(X1)
        & ~ v2_struct_0(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ( r3_lattice3(X1,X2,X0)
          <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_lattice3)).

fof(f86,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ spl3_10 ),
    inference(avatar_component_clause,[],[f84])).

fof(f78,plain,
    ( ~ r3_lattice3(sK1,sK2,sK0)
    | spl3_9 ),
    inference(avatar_component_clause,[],[f77])).

fof(f52,plain,
    ( l3_lattices(sK1)
    | ~ spl3_4 ),
    inference(avatar_component_clause,[],[f50])).

fof(f57,plain,
    ( v10_lattices(sK1)
    | ~ spl3_5 ),
    inference(avatar_component_clause,[],[f55])).

fof(f62,plain,
    ( ~ v2_struct_0(sK1)
    | spl3_6 ),
    inference(avatar_component_clause,[],[f60])).

fof(f108,plain,
    ( spl3_1
    | ~ spl3_12
    | ~ spl3_13 ),
    inference(avatar_split_clause,[],[f107,f101,f96,f35])).

fof(f101,plain,
    ( spl3_13
  <=> r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).

fof(f107,plain,
    ( r1_lattice3(k3_lattice3(sK1),sK0,sK2)
    | ~ spl3_12
    | ~ spl3_13 ),
    inference(backward_demodulation,[],[f103,f98])).

fof(f103,plain,
    ( r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2))
    | ~ spl3_13 ),
    inference(avatar_component_clause,[],[f101])).

fof(f106,plain,
    ( sK2 != k5_lattice3(sK1,sK2)
    | r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
    | ~ r3_lattice3(sK1,sK2,sK0) ),
    introduced(theory_tautology_sat_conflict,[])).

fof(f104,plain,
    ( spl3_13
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | ~ spl3_9
    | ~ spl3_10 ),
    inference(avatar_split_clause,[],[f93,f84,f77,f60,f55,f50,f101])).

fof(f93,plain,
    ( r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2))
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | ~ spl3_9
    | ~ spl3_10 ),
    inference(unit_resulting_resolution,[],[f62,f57,f52,f79,f86,f29])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( ~ l3_lattices(X1)
      | ~ r3_lattice3(X1,X2,X0)
      | ~ m1_subset_1(X2,u1_struct_0(X1))
      | r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
      | ~ v10_lattices(X1)
      | v2_struct_0(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f79,plain,
    ( r3_lattice3(sK1,sK2,sK0)
    | ~ spl3_9 ),
    inference(avatar_component_clause,[],[f77])).

fof(f99,plain,
    ( spl3_12
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | ~ spl3_10 ),
    inference(avatar_split_clause,[],[f94,f84,f60,f55,f50,f96])).

fof(f94,plain,
    ( sK2 = k4_lattice3(sK1,sK2)
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | ~ spl3_10 ),
    inference(unit_resulting_resolution,[],[f62,f57,f52,f86,f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k4_lattice3(X0,X1) = X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k4_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k4_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => k4_lattice3(X0,X1) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_lattice3)).

fof(f87,plain,
    ( spl3_10
    | ~ spl3_3
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | ~ spl3_7 ),
    inference(avatar_split_clause,[],[f82,f67,f60,f55,f50,f45,f84])).

fof(f45,plain,
    ( spl3_3
  <=> m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).

fof(f67,plain,
    ( spl3_7
  <=> sK2 = k5_lattice3(sK1,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_7])])).

fof(f82,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ spl3_3
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6
    | ~ spl3_7 ),
    inference(forward_demodulation,[],[f81,f69])).

fof(f69,plain,
    ( sK2 = k5_lattice3(sK1,sK2)
    | ~ spl3_7 ),
    inference(avatar_component_clause,[],[f67])).

fof(f81,plain,
    ( m1_subset_1(k5_lattice3(sK1,sK2),u1_struct_0(sK1))
    | ~ spl3_3
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6 ),
    inference(unit_resulting_resolution,[],[f62,f57,f52,f47,f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
        & l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k5_lattice3)).

fof(f47,plain,
    ( m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1)))
    | ~ spl3_3 ),
    inference(avatar_component_clause,[],[f45])).

fof(f80,plain,
    ( spl3_9
    | ~ spl3_2
    | ~ spl3_7 ),
    inference(avatar_split_clause,[],[f75,f67,f39,f77])).

fof(f39,plain,
    ( spl3_2
  <=> r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f75,plain,
    ( r3_lattice3(sK1,sK2,sK0)
    | ~ spl3_2
    | ~ spl3_7 ),
    inference(backward_demodulation,[],[f40,f69])).

fof(f40,plain,
    ( r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
    | ~ spl3_2 ),
    inference(avatar_component_clause,[],[f39])).

fof(f70,plain,
    ( spl3_7
    | ~ spl3_3
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6 ),
    inference(avatar_split_clause,[],[f64,f60,f55,f50,f45,f67])).

fof(f64,plain,
    ( sK2 = k5_lattice3(sK1,sK2)
    | ~ spl3_3
    | ~ spl3_4
    | ~ spl3_5
    | spl3_6 ),
    inference(unit_resulting_resolution,[],[f62,f57,f52,f47,f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ l3_lattices(X0)
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | k5_lattice3(X0,X1) = X1
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k5_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k5_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
         => k5_lattice3(X0,X1) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_lattice3)).

fof(f63,plain,(
    ~ spl3_6 ),
    inference(avatar_split_clause,[],[f23,f60])).

fof(f23,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,
    ( ( ~ r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
      | ~ r1_lattice3(k3_lattice3(sK1),sK0,sK2) )
    & ( r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
      | r1_lattice3(k3_lattice3(sK1),sK0,sK2) )
    & m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1)))
    & l3_lattices(sK1)
    & v10_lattices(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f18,f20,f19])).

fof(f19,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ( ~ r3_lattice3(X1,k5_lattice3(X1,X2),X0)
              | ~ r1_lattice3(k3_lattice3(X1),X0,X2) )
            & ( r3_lattice3(X1,k5_lattice3(X1,X2),X0)
              | r1_lattice3(k3_lattice3(X1),X0,X2) )
            & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) )
        & l3_lattices(X1)
        & v10_lattices(X1)
        & ~ v2_struct_0(X1) )
   => ( ? [X2] :
          ( ( ~ r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0)
            | ~ r1_lattice3(k3_lattice3(sK1),sK0,X2) )
          & ( r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0)
            | r1_lattice3(k3_lattice3(sK1),sK0,X2) )
          & m1_subset_1(X2,u1_struct_0(k3_lattice3(sK1))) )
      & l3_lattices(sK1)
      & v10_lattices(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( ? [X2] :
        ( ( ~ r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0)
          | ~ r1_lattice3(k3_lattice3(sK1),sK0,X2) )
        & ( r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0)
          | r1_lattice3(k3_lattice3(sK1),sK0,X2) )
        & m1_subset_1(X2,u1_struct_0(k3_lattice3(sK1))) )
   => ( ( ~ r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
        | ~ r1_lattice3(k3_lattice3(sK1),sK0,sK2) )
      & ( r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
        | r1_lattice3(k3_lattice3(sK1),sK0,sK2) )
      & m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1))) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r3_lattice3(X1,k5_lattice3(X1,X2),X0)
            | ~ r1_lattice3(k3_lattice3(X1),X0,X2) )
          & ( r3_lattice3(X1,k5_lattice3(X1,X2),X0)
            | r1_lattice3(k3_lattice3(X1),X0,X2) )
          & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(flattening,[],[f17])).

fof(f17,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r3_lattice3(X1,k5_lattice3(X1,X2),X0)
            | ~ r1_lattice3(k3_lattice3(X1),X0,X2) )
          & ( r3_lattice3(X1,k5_lattice3(X1,X2),X0)
            | r1_lattice3(k3_lattice3(X1),X0,X2) )
          & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f8,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( r1_lattice3(k3_lattice3(X1),X0,X2)
          <~> r3_lattice3(X1,k5_lattice3(X1,X2),X0) )
          & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(flattening,[],[f7])).

fof(f7,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( r1_lattice3(k3_lattice3(X1),X0,X2)
          <~> r3_lattice3(X1,k5_lattice3(X1,X2),X0) )
          & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( l3_lattices(X1)
          & v10_lattices(X1)
          & ~ v2_struct_0(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))
           => ( r1_lattice3(k3_lattice3(X1),X0,X2)
            <=> r3_lattice3(X1,k5_lattice3(X1,X2),X0) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f5,conjecture,(
    ! [X0,X1] :
      ( ( l3_lattices(X1)
        & v10_lattices(X1)
        & ~ v2_struct_0(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))
         => ( r1_lattice3(k3_lattice3(X1),X0,X2)
          <=> r3_lattice3(X1,k5_lattice3(X1,X2),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_lattice3)).

fof(f58,plain,(
    spl3_5 ),
    inference(avatar_split_clause,[],[f24,f55])).

fof(f24,plain,(
    v10_lattices(sK1) ),
    inference(cnf_transformation,[],[f21])).

fof(f53,plain,(
    spl3_4 ),
    inference(avatar_split_clause,[],[f25,f50])).

fof(f25,plain,(
    l3_lattices(sK1) ),
    inference(cnf_transformation,[],[f21])).

fof(f48,plain,(
    spl3_3 ),
    inference(avatar_split_clause,[],[f26,f45])).

fof(f26,plain,(
    m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1))) ),
    inference(cnf_transformation,[],[f21])).

fof(f43,plain,
    ( spl3_1
    | spl3_2 ),
    inference(avatar_split_clause,[],[f27,f39,f35])).

fof(f27,plain,
    ( r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
    | r1_lattice3(k3_lattice3(sK1),sK0,sK2) ),
    inference(cnf_transformation,[],[f21])).

fof(f42,plain,
    ( ~ spl3_1
    | ~ spl3_2 ),
    inference(avatar_split_clause,[],[f28,f39,f35])).

fof(f28,plain,
    ( ~ r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)
    | ~ r1_lattice3(k3_lattice3(sK1),sK0,sK2) ),
    inference(cnf_transformation,[],[f21])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n005.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:26:47 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.48  % (26302)dis+1011_5:1_add=off:afr=on:afp=40000:afq=1.0:amm=off:anc=none:bs=unit_only:bce=on:ep=RS:fsr=off:fde=none:irw=on:lwlo=on:nwc=1:sas=z3:sos=theory:sac=on:updr=off:uhcvi=on_398 on theBenchmark
% 0.20/0.48  % (26283)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_22 on theBenchmark
% 0.20/0.48  % (26286)lrs+1011_4:1_acc=model:add=large:afp=40000:afq=1.4:ccuc=first:cond=on:fsr=off:gsp=input_only:gs=on:gsem=off:irw=on:nwc=1:stl=30:sd=1:ss=axioms:st=5.0:sp=reverse_arity:urr=on_42 on theBenchmark
% 0.20/0.49  % (26286)Refutation found. Thanks to Tanya!
% 0.20/0.49  % SZS status Theorem for theBenchmark
% 0.20/0.49  % SZS output start Proof for theBenchmark
% 0.20/0.49  fof(f118,plain,(
% 0.20/0.49    $false),
% 0.20/0.49    inference(avatar_sat_refutation,[],[f42,f43,f48,f53,f58,f63,f70,f80,f87,f99,f104,f106,f108,f113])).
% 0.20/0.49  fof(f113,plain,(
% 0.20/0.49    ~spl3_1 | ~spl3_4 | ~spl3_5 | spl3_6 | spl3_9 | ~spl3_10 | ~spl3_12),
% 0.20/0.49    inference(avatar_split_clause,[],[f112,f96,f84,f77,f60,f55,f50,f35])).
% 0.20/0.49  fof(f35,plain,(
% 0.20/0.49    spl3_1 <=> r1_lattice3(k3_lattice3(sK1),sK0,sK2)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 0.20/0.49  fof(f50,plain,(
% 0.20/0.49    spl3_4 <=> l3_lattices(sK1)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).
% 0.20/0.49  fof(f55,plain,(
% 0.20/0.49    spl3_5 <=> v10_lattices(sK1)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).
% 0.20/0.49  fof(f60,plain,(
% 0.20/0.49    spl3_6 <=> v2_struct_0(sK1)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).
% 0.20/0.49  fof(f77,plain,(
% 0.20/0.49    spl3_9 <=> r3_lattice3(sK1,sK2,sK0)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_9])])).
% 0.20/0.49  fof(f84,plain,(
% 0.20/0.49    spl3_10 <=> m1_subset_1(sK2,u1_struct_0(sK1))),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).
% 0.20/0.49  fof(f96,plain,(
% 0.20/0.49    spl3_12 <=> sK2 = k4_lattice3(sK1,sK2)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).
% 0.20/0.49  fof(f112,plain,(
% 0.20/0.49    ~r1_lattice3(k3_lattice3(sK1),sK0,sK2) | (~spl3_4 | ~spl3_5 | spl3_6 | spl3_9 | ~spl3_10 | ~spl3_12)),
% 0.20/0.49    inference(forward_demodulation,[],[f110,f98])).
% 0.20/0.49  fof(f98,plain,(
% 0.20/0.49    sK2 = k4_lattice3(sK1,sK2) | ~spl3_12),
% 0.20/0.49    inference(avatar_component_clause,[],[f96])).
% 0.20/0.49  fof(f110,plain,(
% 0.20/0.49    ~r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2)) | (~spl3_4 | ~spl3_5 | spl3_6 | spl3_9 | ~spl3_10)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f62,f57,f52,f78,f86,f30])).
% 0.20/0.49  fof(f30,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (~l3_lattices(X1) | ~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X1)) | r3_lattice3(X1,X2,X0) | ~v10_lattices(X1) | v2_struct_0(X1)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f22])).
% 0.20/0.49  fof(f22,plain,(
% 0.20/0.49    ! [X0,X1] : (! [X2] : (((r3_lattice3(X1,X2,X0) | ~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))) & (r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~r3_lattice3(X1,X2,X0))) | ~m1_subset_1(X2,u1_struct_0(X1))) | ~l3_lattices(X1) | ~v10_lattices(X1) | v2_struct_0(X1))),
% 0.20/0.49    inference(nnf_transformation,[],[f10])).
% 0.20/0.49  fof(f10,plain,(
% 0.20/0.49    ! [X0,X1] : (! [X2] : ((r3_lattice3(X1,X2,X0) <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X1))) | ~l3_lattices(X1) | ~v10_lattices(X1) | v2_struct_0(X1))),
% 0.20/0.49    inference(flattening,[],[f9])).
% 0.20/0.49  fof(f9,plain,(
% 0.20/0.49    ! [X0,X1] : (! [X2] : ((r3_lattice3(X1,X2,X0) <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X1))) | (~l3_lattices(X1) | ~v10_lattices(X1) | v2_struct_0(X1)))),
% 0.20/0.49    inference(ennf_transformation,[],[f4])).
% 0.20/0.49  fof(f4,axiom,(
% 0.20/0.49    ! [X0,X1] : ((l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X1)) => (r3_lattice3(X1,X2,X0) <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)))))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_lattice3)).
% 0.20/0.49  fof(f86,plain,(
% 0.20/0.49    m1_subset_1(sK2,u1_struct_0(sK1)) | ~spl3_10),
% 0.20/0.49    inference(avatar_component_clause,[],[f84])).
% 0.20/0.49  fof(f78,plain,(
% 0.20/0.49    ~r3_lattice3(sK1,sK2,sK0) | spl3_9),
% 0.20/0.49    inference(avatar_component_clause,[],[f77])).
% 0.20/0.49  fof(f52,plain,(
% 0.20/0.49    l3_lattices(sK1) | ~spl3_4),
% 0.20/0.49    inference(avatar_component_clause,[],[f50])).
% 0.20/0.49  fof(f57,plain,(
% 0.20/0.49    v10_lattices(sK1) | ~spl3_5),
% 0.20/0.49    inference(avatar_component_clause,[],[f55])).
% 0.20/0.49  fof(f62,plain,(
% 0.20/0.49    ~v2_struct_0(sK1) | spl3_6),
% 0.20/0.49    inference(avatar_component_clause,[],[f60])).
% 0.20/0.49  fof(f108,plain,(
% 0.20/0.49    spl3_1 | ~spl3_12 | ~spl3_13),
% 0.20/0.49    inference(avatar_split_clause,[],[f107,f101,f96,f35])).
% 0.20/0.49  fof(f101,plain,(
% 0.20/0.49    spl3_13 <=> r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2))),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).
% 0.20/0.49  fof(f107,plain,(
% 0.20/0.49    r1_lattice3(k3_lattice3(sK1),sK0,sK2) | (~spl3_12 | ~spl3_13)),
% 0.20/0.49    inference(backward_demodulation,[],[f103,f98])).
% 0.20/0.49  fof(f103,plain,(
% 0.20/0.49    r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2)) | ~spl3_13),
% 0.20/0.49    inference(avatar_component_clause,[],[f101])).
% 0.20/0.49  fof(f106,plain,(
% 0.20/0.49    sK2 != k5_lattice3(sK1,sK2) | r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | ~r3_lattice3(sK1,sK2,sK0)),
% 0.20/0.49    introduced(theory_tautology_sat_conflict,[])).
% 0.20/0.49  fof(f104,plain,(
% 0.20/0.49    spl3_13 | ~spl3_4 | ~spl3_5 | spl3_6 | ~spl3_9 | ~spl3_10),
% 0.20/0.49    inference(avatar_split_clause,[],[f93,f84,f77,f60,f55,f50,f101])).
% 0.20/0.49  fof(f93,plain,(
% 0.20/0.49    r1_lattice3(k3_lattice3(sK1),sK0,k4_lattice3(sK1,sK2)) | (~spl3_4 | ~spl3_5 | spl3_6 | ~spl3_9 | ~spl3_10)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f62,f57,f52,f79,f86,f29])).
% 0.20/0.49  fof(f29,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (~l3_lattices(X1) | ~r3_lattice3(X1,X2,X0) | ~m1_subset_1(X2,u1_struct_0(X1)) | r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~v10_lattices(X1) | v2_struct_0(X1)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f22])).
% 0.20/0.49  fof(f79,plain,(
% 0.20/0.49    r3_lattice3(sK1,sK2,sK0) | ~spl3_9),
% 0.20/0.49    inference(avatar_component_clause,[],[f77])).
% 0.20/0.49  fof(f99,plain,(
% 0.20/0.49    spl3_12 | ~spl3_4 | ~spl3_5 | spl3_6 | ~spl3_10),
% 0.20/0.49    inference(avatar_split_clause,[],[f94,f84,f60,f55,f50,f96])).
% 0.20/0.49  fof(f94,plain,(
% 0.20/0.49    sK2 = k4_lattice3(sK1,sK2) | (~spl3_4 | ~spl3_5 | spl3_6 | ~spl3_10)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f62,f57,f52,f86,f33])).
% 0.20/0.49  fof(f33,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k4_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f16])).
% 0.20/0.49  fof(f16,plain,(
% 0.20/0.49    ! [X0] : (! [X1] : (k4_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 0.20/0.49    inference(flattening,[],[f15])).
% 0.20/0.49  fof(f15,plain,(
% 0.20/0.49    ! [X0] : (! [X1] : (k4_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 0.20/0.49    inference(ennf_transformation,[],[f1])).
% 0.20/0.49  fof(f1,axiom,(
% 0.20/0.49    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => k4_lattice3(X0,X1) = X1))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_lattice3)).
% 0.20/0.49  fof(f87,plain,(
% 0.20/0.49    spl3_10 | ~spl3_3 | ~spl3_4 | ~spl3_5 | spl3_6 | ~spl3_7),
% 0.20/0.49    inference(avatar_split_clause,[],[f82,f67,f60,f55,f50,f45,f84])).
% 0.20/0.49  fof(f45,plain,(
% 0.20/0.49    spl3_3 <=> m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1)))),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).
% 0.20/0.49  fof(f67,plain,(
% 0.20/0.49    spl3_7 <=> sK2 = k5_lattice3(sK1,sK2)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_7])])).
% 0.20/0.49  fof(f82,plain,(
% 0.20/0.49    m1_subset_1(sK2,u1_struct_0(sK1)) | (~spl3_3 | ~spl3_4 | ~spl3_5 | spl3_6 | ~spl3_7)),
% 0.20/0.49    inference(forward_demodulation,[],[f81,f69])).
% 0.20/0.49  fof(f69,plain,(
% 0.20/0.49    sK2 = k5_lattice3(sK1,sK2) | ~spl3_7),
% 0.20/0.49    inference(avatar_component_clause,[],[f67])).
% 0.20/0.49  fof(f81,plain,(
% 0.20/0.49    m1_subset_1(k5_lattice3(sK1,sK2),u1_struct_0(sK1)) | (~spl3_3 | ~spl3_4 | ~spl3_5 | spl3_6)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f62,f57,f52,f47,f31])).
% 0.20/0.49  fof(f31,plain,(
% 0.20/0.49    ( ! [X0,X1] : (m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f12])).
% 0.20/0.49  fof(f12,plain,(
% 0.20/0.49    ! [X0,X1] : (m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 0.20/0.49    inference(flattening,[],[f11])).
% 0.20/0.49  fof(f11,plain,(
% 0.20/0.49    ! [X0,X1] : (m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) | (~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 0.20/0.49    inference(ennf_transformation,[],[f3])).
% 0.20/0.49  fof(f3,axiom,(
% 0.20/0.49    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) & l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k5_lattice3)).
% 0.20/0.49  fof(f47,plain,(
% 0.20/0.49    m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1))) | ~spl3_3),
% 0.20/0.49    inference(avatar_component_clause,[],[f45])).
% 0.20/0.49  fof(f80,plain,(
% 0.20/0.49    spl3_9 | ~spl3_2 | ~spl3_7),
% 0.20/0.49    inference(avatar_split_clause,[],[f75,f67,f39,f77])).
% 0.20/0.49  fof(f39,plain,(
% 0.20/0.49    spl3_2 <=> r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 0.20/0.49  fof(f75,plain,(
% 0.20/0.49    r3_lattice3(sK1,sK2,sK0) | (~spl3_2 | ~spl3_7)),
% 0.20/0.49    inference(backward_demodulation,[],[f40,f69])).
% 0.20/0.49  fof(f40,plain,(
% 0.20/0.49    r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | ~spl3_2),
% 0.20/0.49    inference(avatar_component_clause,[],[f39])).
% 0.20/0.49  fof(f70,plain,(
% 0.20/0.49    spl3_7 | ~spl3_3 | ~spl3_4 | ~spl3_5 | spl3_6),
% 0.20/0.49    inference(avatar_split_clause,[],[f64,f60,f55,f50,f45,f67])).
% 0.20/0.49  fof(f64,plain,(
% 0.20/0.49    sK2 = k5_lattice3(sK1,sK2) | (~spl3_3 | ~spl3_4 | ~spl3_5 | spl3_6)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f62,f57,f52,f47,f32])).
% 0.20/0.49  fof(f32,plain,(
% 0.20/0.49    ( ! [X0,X1] : (~l3_lattices(X0) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | k5_lattice3(X0,X1) = X1 | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f14])).
% 0.20/0.49  fof(f14,plain,(
% 0.20/0.49    ! [X0] : (! [X1] : (k5_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 0.20/0.49    inference(flattening,[],[f13])).
% 0.20/0.49  fof(f13,plain,(
% 0.20/0.49    ! [X0] : (! [X1] : (k5_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 0.20/0.49    inference(ennf_transformation,[],[f2])).
% 0.20/0.49  fof(f2,axiom,(
% 0.20/0.49    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) => k5_lattice3(X0,X1) = X1))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_lattice3)).
% 0.20/0.49  fof(f63,plain,(
% 0.20/0.49    ~spl3_6),
% 0.20/0.49    inference(avatar_split_clause,[],[f23,f60])).
% 0.20/0.49  fof(f23,plain,(
% 0.20/0.49    ~v2_struct_0(sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f21])).
% 0.20/0.49  fof(f21,plain,(
% 0.20/0.49    ((~r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | ~r1_lattice3(k3_lattice3(sK1),sK0,sK2)) & (r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | r1_lattice3(k3_lattice3(sK1),sK0,sK2)) & m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1)))) & l3_lattices(sK1) & v10_lattices(sK1) & ~v2_struct_0(sK1)),
% 0.20/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f18,f20,f19])).
% 0.20/0.49  fof(f19,plain,(
% 0.20/0.49    ? [X0,X1] : (? [X2] : ((~r3_lattice3(X1,k5_lattice3(X1,X2),X0) | ~r1_lattice3(k3_lattice3(X1),X0,X2)) & (r3_lattice3(X1,k5_lattice3(X1,X2),X0) | r1_lattice3(k3_lattice3(X1),X0,X2)) & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => (? [X2] : ((~r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0) | ~r1_lattice3(k3_lattice3(sK1),sK0,X2)) & (r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0) | r1_lattice3(k3_lattice3(sK1),sK0,X2)) & m1_subset_1(X2,u1_struct_0(k3_lattice3(sK1)))) & l3_lattices(sK1) & v10_lattices(sK1) & ~v2_struct_0(sK1))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f20,plain,(
% 0.20/0.49    ? [X2] : ((~r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0) | ~r1_lattice3(k3_lattice3(sK1),sK0,X2)) & (r3_lattice3(sK1,k5_lattice3(sK1,X2),sK0) | r1_lattice3(k3_lattice3(sK1),sK0,X2)) & m1_subset_1(X2,u1_struct_0(k3_lattice3(sK1)))) => ((~r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | ~r1_lattice3(k3_lattice3(sK1),sK0,sK2)) & (r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | r1_lattice3(k3_lattice3(sK1),sK0,sK2)) & m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1))))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f18,plain,(
% 0.20/0.49    ? [X0,X1] : (? [X2] : ((~r3_lattice3(X1,k5_lattice3(X1,X2),X0) | ~r1_lattice3(k3_lattice3(X1),X0,X2)) & (r3_lattice3(X1,k5_lattice3(X1,X2),X0) | r1_lattice3(k3_lattice3(X1),X0,X2)) & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1))),
% 0.20/0.49    inference(flattening,[],[f17])).
% 0.20/0.49  fof(f17,plain,(
% 0.20/0.49    ? [X0,X1] : (? [X2] : (((~r3_lattice3(X1,k5_lattice3(X1,X2),X0) | ~r1_lattice3(k3_lattice3(X1),X0,X2)) & (r3_lattice3(X1,k5_lattice3(X1,X2),X0) | r1_lattice3(k3_lattice3(X1),X0,X2))) & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1))),
% 0.20/0.49    inference(nnf_transformation,[],[f8])).
% 0.20/0.49  fof(f8,plain,(
% 0.20/0.49    ? [X0,X1] : (? [X2] : ((r1_lattice3(k3_lattice3(X1),X0,X2) <~> r3_lattice3(X1,k5_lattice3(X1,X2),X0)) & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1))),
% 0.20/0.49    inference(flattening,[],[f7])).
% 0.20/0.49  fof(f7,plain,(
% 0.20/0.49    ? [X0,X1] : (? [X2] : ((r1_lattice3(k3_lattice3(X1),X0,X2) <~> r3_lattice3(X1,k5_lattice3(X1,X2),X0)) & m1_subset_1(X2,u1_struct_0(k3_lattice3(X1)))) & (l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)))),
% 0.20/0.49    inference(ennf_transformation,[],[f6])).
% 0.20/0.49  fof(f6,negated_conjecture,(
% 0.20/0.49    ~! [X0,X1] : ((l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) => (r1_lattice3(k3_lattice3(X1),X0,X2) <=> r3_lattice3(X1,k5_lattice3(X1,X2),X0))))),
% 0.20/0.49    inference(negated_conjecture,[],[f5])).
% 0.20/0.49  fof(f5,conjecture,(
% 0.20/0.49    ! [X0,X1] : ((l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k3_lattice3(X1))) => (r1_lattice3(k3_lattice3(X1),X0,X2) <=> r3_lattice3(X1,k5_lattice3(X1,X2),X0))))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_lattice3)).
% 0.20/0.49  fof(f58,plain,(
% 0.20/0.49    spl3_5),
% 0.20/0.49    inference(avatar_split_clause,[],[f24,f55])).
% 0.20/0.49  fof(f24,plain,(
% 0.20/0.49    v10_lattices(sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f21])).
% 0.20/0.49  fof(f53,plain,(
% 0.20/0.49    spl3_4),
% 0.20/0.49    inference(avatar_split_clause,[],[f25,f50])).
% 0.20/0.49  fof(f25,plain,(
% 0.20/0.49    l3_lattices(sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f21])).
% 0.20/0.49  fof(f48,plain,(
% 0.20/0.49    spl3_3),
% 0.20/0.49    inference(avatar_split_clause,[],[f26,f45])).
% 0.20/0.49  fof(f26,plain,(
% 0.20/0.49    m1_subset_1(sK2,u1_struct_0(k3_lattice3(sK1)))),
% 0.20/0.49    inference(cnf_transformation,[],[f21])).
% 0.20/0.49  fof(f43,plain,(
% 0.20/0.49    spl3_1 | spl3_2),
% 0.20/0.49    inference(avatar_split_clause,[],[f27,f39,f35])).
% 0.20/0.49  fof(f27,plain,(
% 0.20/0.49    r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | r1_lattice3(k3_lattice3(sK1),sK0,sK2)),
% 0.20/0.49    inference(cnf_transformation,[],[f21])).
% 0.20/0.49  fof(f42,plain,(
% 0.20/0.49    ~spl3_1 | ~spl3_2),
% 0.20/0.49    inference(avatar_split_clause,[],[f28,f39,f35])).
% 0.20/0.49  fof(f28,plain,(
% 0.20/0.49    ~r3_lattice3(sK1,k5_lattice3(sK1,sK2),sK0) | ~r1_lattice3(k3_lattice3(sK1),sK0,sK2)),
% 0.20/0.49    inference(cnf_transformation,[],[f21])).
% 0.20/0.49  % SZS output end Proof for theBenchmark
% 0.20/0.49  % (26286)------------------------------
% 0.20/0.49  % (26286)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.49  % (26286)Termination reason: Refutation
% 0.20/0.49  
% 0.20/0.49  % (26286)Memory used [KB]: 10618
% 0.20/0.49  % (26286)Time elapsed: 0.011 s
% 0.20/0.49  % (26286)------------------------------
% 0.20/0.49  % (26286)------------------------------
% 0.20/0.49  % (26284)lrs+1010_32_afr=on:anc=none:bd=off:fsr=off:gs=on:gsem=on:nwc=1.3:nicw=on:sas=z3:stl=30:updr=off_63 on theBenchmark
% 0.20/0.50  % (26279)Success in time 0.137 s
%------------------------------------------------------------------------------
