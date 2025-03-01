%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:05:29 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :  128 (9298 expanded)
%              Number of leaves         :   15 (2423 expanded)
%              Depth                    :   46
%              Number of atoms          :  490 (71698 expanded)
%              Number of equality atoms :  177 (21076 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f205,plain,(
    $false ),
    inference(subsumption_resolution,[],[f204,f49])).

fof(f49,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(f204,plain,(
    ~ v1_xboole_0(k1_xboole_0) ),
    inference(resolution,[],[f197,f58])).

fof(f58,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] : ~ r2_hidden(X1,X0) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f197,plain,(
    r2_hidden(sK5,k1_xboole_0) ),
    inference(subsumption_resolution,[],[f181,f196])).

fof(f196,plain,(
    v2_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f73,f195])).

fof(f195,plain,(
    sP0(sK3) ),
    inference(subsumption_resolution,[],[f188,f49])).

fof(f188,plain,
    ( ~ v1_xboole_0(k1_xboole_0)
    | sP0(sK3) ),
    inference(backward_demodulation,[],[f84,f176])).

fof(f176,plain,(
    k1_xboole_0 = sK2 ),
    inference(subsumption_resolution,[],[f175,f135])).

fof(f135,plain,
    ( sK4 != sK5
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f132,f48])).

fof(f48,plain,
    ( ~ v2_funct_1(sK3)
    | sK4 != sK5 ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,
    ( ( ( sK4 != sK5
        & k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)
        & r2_hidden(sK5,sK2)
        & r2_hidden(sK4,sK2) )
      | ~ v2_funct_1(sK3) )
    & ( ! [X4,X5] :
          ( X4 = X5
          | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5)
          | ~ r2_hidden(X5,sK2)
          | ~ r2_hidden(X4,sK2) )
      | v2_funct_1(sK3) )
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
    & v1_funct_2(sK3,sK2,sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f30,f32,f31])).

fof(f31,plain,
    ( ? [X0,X1] :
        ( ( ? [X2,X3] :
              ( X2 != X3
              & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
          | ~ v2_funct_1(X1) )
        & ( ! [X4,X5] :
              ( X4 = X5
              | k1_funct_1(X1,X4) != k1_funct_1(X1,X5)
              | ~ r2_hidden(X5,X0)
              | ~ r2_hidden(X4,X0) )
          | v2_funct_1(X1) )
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
   => ( ( ? [X3,X2] :
            ( X2 != X3
            & k1_funct_1(sK3,X2) = k1_funct_1(sK3,X3)
            & r2_hidden(X3,sK2)
            & r2_hidden(X2,sK2) )
        | ~ v2_funct_1(sK3) )
      & ( ! [X5,X4] :
            ( X4 = X5
            | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5)
            | ~ r2_hidden(X5,sK2)
            | ~ r2_hidden(X4,sK2) )
        | v2_funct_1(sK3) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
      & v1_funct_2(sK3,sK2,sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ? [X3,X2] :
        ( X2 != X3
        & k1_funct_1(sK3,X2) = k1_funct_1(sK3,X3)
        & r2_hidden(X3,sK2)
        & r2_hidden(X2,sK2) )
   => ( sK4 != sK5
      & k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)
      & r2_hidden(sK5,sK2)
      & r2_hidden(sK4,sK2) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X4,X5] :
            ( X4 = X5
            | k1_funct_1(X1,X4) != k1_funct_1(X1,X5)
            | ~ r2_hidden(X5,X0)
            | ~ r2_hidden(X4,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(rectify,[],[f29])).

fof(f29,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f28])).

fof(f28,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f15,plain,(
    ? [X0,X1] :
      ( ( v2_funct_1(X1)
      <~> ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) ) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ? [X0,X1] :
      ( ( v2_funct_1(X1)
      <~> ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) ) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
       => ( v2_funct_1(X1)
        <=> ! [X2,X3] :
              ( ( k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
                & r2_hidden(X3,X0)
                & r2_hidden(X2,X0) )
             => X2 = X3 ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f10,conjecture,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
      <=> ! [X2,X3] :
            ( ( k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t77_funct_2)).

fof(f132,plain,
    ( v2_funct_1(sK3)
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f131,f73])).

fof(f131,plain,
    ( sP0(sK3)
    | k1_xboole_0 = sK2 ),
    inference(subsumption_resolution,[],[f130,f56])).

fof(f56,plain,(
    ! [X0] :
      ( sK6(X0) != sK7(X0)
      | sP0(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f38,plain,(
    ! [X0] :
      ( ( sP0(X0)
        | ( sK6(X0) != sK7(X0)
          & k1_funct_1(X0,sK6(X0)) = k1_funct_1(X0,sK7(X0))
          & r2_hidden(sK7(X0),k1_relat_1(X0))
          & r2_hidden(sK6(X0),k1_relat_1(X0)) ) )
      & ( ! [X3,X4] :
            ( X3 = X4
            | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
            | ~ r2_hidden(X4,k1_relat_1(X0))
            | ~ r2_hidden(X3,k1_relat_1(X0)) )
        | ~ sP0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7])],[f36,f37])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1,X2] :
          ( X1 != X2
          & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
          & r2_hidden(X2,k1_relat_1(X0))
          & r2_hidden(X1,k1_relat_1(X0)) )
     => ( sK6(X0) != sK7(X0)
        & k1_funct_1(X0,sK6(X0)) = k1_funct_1(X0,sK7(X0))
        & r2_hidden(sK7(X0),k1_relat_1(X0))
        & r2_hidden(sK6(X0),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0] :
      ( ( sP0(X0)
        | ? [X1,X2] :
            ( X1 != X2
            & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
            & r2_hidden(X2,k1_relat_1(X0))
            & r2_hidden(X1,k1_relat_1(X0)) ) )
      & ( ! [X3,X4] :
            ( X3 = X4
            | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
            | ~ r2_hidden(X4,k1_relat_1(X0))
            | ~ r2_hidden(X3,k1_relat_1(X0)) )
        | ~ sP0(X0) ) ) ),
    inference(rectify,[],[f35])).

fof(f35,plain,(
    ! [X0] :
      ( ( sP0(X0)
        | ? [X1,X2] :
            ( X1 != X2
            & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
            & r2_hidden(X2,k1_relat_1(X0))
            & r2_hidden(X1,k1_relat_1(X0)) ) )
      & ( ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) )
        | ~ sP0(X0) ) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0] :
      ( sP0(X0)
    <=> ! [X1,X2] :
          ( X1 = X2
          | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
          | ~ r2_hidden(X2,k1_relat_1(X0))
          | ~ r2_hidden(X1,k1_relat_1(X0)) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f130,plain,
    ( sK6(sK3) = sK7(sK3)
    | sP0(sK3)
    | k1_xboole_0 = sK2 ),
    inference(subsumption_resolution,[],[f129,f83])).

fof(f83,plain,
    ( r2_hidden(sK7(sK3),sK2)
    | sP0(sK3) ),
    inference(resolution,[],[f81,f54])).

fof(f54,plain,(
    ! [X0] :
      ( r2_hidden(sK7(X0),k1_relat_1(X0))
      | sP0(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f81,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,k1_relat_1(sK3))
      | r2_hidden(X0,sK2) ) ),
    inference(resolution,[],[f80,f78])).

fof(f78,plain,(
    r1_tarski(k1_relat_1(sK3),sK2) ),
    inference(subsumption_resolution,[],[f77,f69])).

fof(f69,plain,(
    v1_relat_1(sK3) ),
    inference(resolution,[],[f64,f43])).

fof(f43,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ),
    inference(cnf_transformation,[],[f33])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(f77,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2)
    | ~ v1_relat_1(sK3) ),
    inference(resolution,[],[f75,f59])).

fof(f59,plain,(
    ! [X0,X1] :
      ( ~ v4_relat_1(X1,X0)
      | r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(f75,plain,(
    v4_relat_1(sK3,sK2) ),
    inference(resolution,[],[f65,f43])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v4_relat_1(X2,X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(f80,plain,(
    ! [X2,X3,X1] :
      ( ~ r1_tarski(X2,X3)
      | r2_hidden(X1,X3)
      | ~ r2_hidden(X1,X2) ) ),
    inference(resolution,[],[f61,f63])).

fof(f63,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ r2_hidden(X2,X1)
      | r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_subset_1)).

fof(f129,plain,
    ( ~ r2_hidden(sK7(sK3),sK2)
    | sK6(sK3) = sK7(sK3)
    | sP0(sK3)
    | k1_xboole_0 = sK2 ),
    inference(trivial_inequality_removal,[],[f128])).

fof(f128,plain,
    ( k1_funct_1(sK3,sK6(sK3)) != k1_funct_1(sK3,sK6(sK3))
    | ~ r2_hidden(sK7(sK3),sK2)
    | sK6(sK3) = sK7(sK3)
    | sP0(sK3)
    | k1_xboole_0 = sK2 ),
    inference(superposition,[],[f98,f125])).

fof(f125,plain,
    ( k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))
    | k1_xboole_0 = sK2 ),
    inference(subsumption_resolution,[],[f124,f89])).

fof(f89,plain,
    ( sK4 != sK5
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(resolution,[],[f86,f48])).

fof(f86,plain,
    ( v2_funct_1(sK3)
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(resolution,[],[f55,f73])).

fof(f55,plain,(
    ! [X0] :
      ( sP0(X0)
      | k1_funct_1(X0,sK6(X0)) = k1_funct_1(X0,sK7(X0)) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f124,plain,
    ( sK4 = sK5
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(duplicate_literal_removal,[],[f121])).

fof(f121,plain,
    ( sK4 = sK5
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(superposition,[],[f120,f119])).

fof(f119,plain,
    ( sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4))
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(duplicate_literal_removal,[],[f114])).

fof(f114,plain,
    ( sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4))
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(resolution,[],[f113,f91])).

fof(f91,plain,
    ( r2_hidden(sK4,sK2)
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(resolution,[],[f86,f45])).

fof(f45,plain,
    ( ~ v2_funct_1(sK3)
    | r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f33])).

fof(f113,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
      | k1_xboole_0 = sK2
      | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ) ),
    inference(subsumption_resolution,[],[f112,f43])).

fof(f112,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
      | k1_xboole_0 = sK2
      | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ) ),
    inference(resolution,[],[f111,f42])).

fof(f42,plain,(
    v1_funct_2(sK3,sK2,sK2) ),
    inference(cnf_transformation,[],[f33])).

fof(f111,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_funct_2(sK3,X2,X0)
      | ~ r2_hidden(X1,X2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | k1_xboole_0 = X0
      | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ) ),
    inference(subsumption_resolution,[],[f110,f41])).

fof(f41,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f110,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X0
      | ~ r2_hidden(X1,X2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | ~ v1_funct_2(sK3,X2,X0)
      | ~ v1_funct_1(sK3)
      | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ) ),
    inference(resolution,[],[f66,f86])).

fof(f66,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ v2_funct_1(X3)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( ( r2_hidden(X2,X0)
          & v2_funct_1(X3) )
       => ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_funct_2)).

fof(f120,plain,
    ( sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4))
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(forward_demodulation,[],[f118,f106])).

fof(f106,plain,(
    k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(global_subsumption,[],[f47,f73,f105])).

fof(f105,plain,
    ( sP0(sK3)
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(subsumption_resolution,[],[f104,f56])).

fof(f104,plain,
    ( sK6(sK3) = sK7(sK3)
    | sP0(sK3)
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(subsumption_resolution,[],[f103,f83])).

fof(f103,plain,
    ( ~ r2_hidden(sK7(sK3),sK2)
    | sK6(sK3) = sK7(sK3)
    | sP0(sK3)
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(trivial_inequality_removal,[],[f101])).

fof(f101,plain,
    ( k1_funct_1(sK3,sK6(sK3)) != k1_funct_1(sK3,sK6(sK3))
    | ~ r2_hidden(sK7(sK3),sK2)
    | sK6(sK3) = sK7(sK3)
    | sP0(sK3)
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(superposition,[],[f98,f87])).

fof(f87,plain,
    ( k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(resolution,[],[f86,f47])).

fof(f47,plain,
    ( ~ v2_funct_1(sK3)
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(cnf_transformation,[],[f33])).

fof(f118,plain,
    ( sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5))
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(duplicate_literal_removal,[],[f115])).

fof(f115,plain,
    ( sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5))
    | k1_xboole_0 = sK2
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(resolution,[],[f113,f90])).

fof(f90,plain,
    ( r2_hidden(sK5,sK2)
    | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) ),
    inference(resolution,[],[f86,f46])).

fof(f46,plain,
    ( ~ v2_funct_1(sK3)
    | r2_hidden(sK5,sK2) ),
    inference(cnf_transformation,[],[f33])).

fof(f98,plain,(
    ! [X2] :
      ( k1_funct_1(sK3,X2) != k1_funct_1(sK3,sK6(sK3))
      | ~ r2_hidden(X2,sK2)
      | sK6(sK3) = X2
      | sP0(sK3) ) ),
    inference(subsumption_resolution,[],[f96,f74])).

fof(f74,plain,
    ( ~ v2_funct_1(sK3)
    | sP0(sK3) ),
    inference(resolution,[],[f72,f50])).

fof(f50,plain,(
    ! [X0] :
      ( ~ sP1(X0)
      | ~ v2_funct_1(X0)
      | sP0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ~ sP0(X0) )
        & ( sP0(X0)
          | ~ v2_funct_1(X0) ) )
      | ~ sP1(X0) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> sP0(X0) )
      | ~ sP1(X0) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).

fof(f72,plain,(
    sP1(sK3) ),
    inference(subsumption_resolution,[],[f71,f41])).

fof(f71,plain,
    ( ~ v1_funct_1(sK3)
    | sP1(sK3) ),
    inference(resolution,[],[f69,f57])).

fof(f57,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | sP1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( sP1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_folding,[],[f17,f26,f25])).

fof(f17,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( ( k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_funct_1)).

fof(f96,plain,(
    ! [X2] :
      ( k1_funct_1(sK3,X2) != k1_funct_1(sK3,sK6(sK3))
      | ~ r2_hidden(X2,sK2)
      | sK6(sK3) = X2
      | v2_funct_1(sK3)
      | sP0(sK3) ) ),
    inference(resolution,[],[f44,f82])).

fof(f82,plain,
    ( r2_hidden(sK6(sK3),sK2)
    | sP0(sK3) ),
    inference(resolution,[],[f81,f53])).

fof(f53,plain,(
    ! [X0] :
      ( r2_hidden(sK6(X0),k1_relat_1(X0))
      | sP0(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f44,plain,(
    ! [X4,X5] :
      ( ~ r2_hidden(X4,sK2)
      | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5)
      | ~ r2_hidden(X5,sK2)
      | X4 = X5
      | v2_funct_1(sK3) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f175,plain,
    ( sK4 = sK5
    | k1_xboole_0 = sK2 ),
    inference(duplicate_literal_removal,[],[f168])).

fof(f168,plain,
    ( sK4 = sK5
    | k1_xboole_0 = sK2
    | k1_xboole_0 = sK2 ),
    inference(superposition,[],[f163,f162])).

fof(f162,plain,
    ( sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4))
    | k1_xboole_0 = sK2 ),
    inference(duplicate_literal_removal,[],[f155])).

fof(f155,plain,
    ( k1_xboole_0 = sK2
    | sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4))
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f154,f137])).

fof(f137,plain,
    ( r2_hidden(sK4,sK2)
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f132,f45])).

fof(f154,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK2)
      | k1_xboole_0 = sK2
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0 ) ),
    inference(subsumption_resolution,[],[f153,f43])).

fof(f153,plain,(
    ! [X0] :
      ( k1_xboole_0 = sK2
      | ~ r2_hidden(X0,sK2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ) ),
    inference(duplicate_literal_removal,[],[f152])).

fof(f152,plain,(
    ! [X0] :
      ( k1_xboole_0 = sK2
      | ~ r2_hidden(X0,sK2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
      | k1_xboole_0 = sK2 ) ),
    inference(resolution,[],[f139,f42])).

fof(f139,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_funct_2(sK3,X2,X0)
      | k1_xboole_0 = X0
      | ~ r2_hidden(X1,X2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | k1_xboole_0 = sK2 ) ),
    inference(subsumption_resolution,[],[f138,f41])).

fof(f138,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = sK2
      | k1_xboole_0 = X0
      | ~ r2_hidden(X1,X2)
      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | ~ v1_funct_2(sK3,X2,X0)
      | ~ v1_funct_1(sK3) ) ),
    inference(resolution,[],[f132,f66])).

fof(f163,plain,
    ( sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4))
    | k1_xboole_0 = sK2 ),
    inference(forward_demodulation,[],[f161,f106])).

fof(f161,plain,
    ( k1_xboole_0 = sK2
    | sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) ),
    inference(duplicate_literal_removal,[],[f157])).

fof(f157,plain,
    ( k1_xboole_0 = sK2
    | sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5))
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f154,f136])).

fof(f136,plain,
    ( r2_hidden(sK5,sK2)
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f132,f46])).

fof(f84,plain,
    ( ~ v1_xboole_0(sK2)
    | sP0(sK3) ),
    inference(resolution,[],[f82,f58])).

fof(f73,plain,
    ( ~ sP0(sK3)
    | v2_funct_1(sK3) ),
    inference(resolution,[],[f72,f51])).

fof(f51,plain,(
    ! [X0] :
      ( ~ sP1(X0)
      | ~ sP0(X0)
      | v2_funct_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f181,plain,
    ( r2_hidden(sK5,k1_xboole_0)
    | ~ v2_funct_1(sK3) ),
    inference(backward_demodulation,[],[f46,f176])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.15/0.14  % Command    : run_vampire %s %d
% 0.15/0.35  % Computer   : n024.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 18:50:36 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.22/0.50  % (23658)ott+4_32_av=off:bsr=on:cond=on:er=known:fsr=off:gsp=input_only:gs=on:gsem=on:irw=on:lma=on:nm=4:nwc=1.2:sos=theory_197 on theBenchmark
% 0.22/0.51  % (23649)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_92 on theBenchmark
% 0.22/0.51  % (23670)dis+2_128_add=large:afp=100000:afq=1.4:amm=sco:anc=none:lma=on:nm=2:newcnf=on:nwc=1:nicw=on:sas=z3:sos=theory:sac=on:updr=off_288 on theBenchmark
% 0.22/0.51  % (23660)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.22/0.51  % (23669)ott+11_8:1_acc=model:afp=1000:afq=1.0:anc=none:bd=off:bsr=on:cond=on:gs=on:gsem=off:irw=on:lma=on:nm=16:nwc=1.5:sac=on:sp=occurrence:urr=on_104 on theBenchmark
% 0.22/0.51  % (23649)Refutation found. Thanks to Tanya!
% 0.22/0.51  % SZS status Theorem for theBenchmark
% 0.22/0.51  % SZS output start Proof for theBenchmark
% 0.22/0.51  fof(f205,plain,(
% 0.22/0.51    $false),
% 0.22/0.51    inference(subsumption_resolution,[],[f204,f49])).
% 0.22/0.51  fof(f49,plain,(
% 0.22/0.51    v1_xboole_0(k1_xboole_0)),
% 0.22/0.51    inference(cnf_transformation,[],[f2])).
% 0.22/0.51  fof(f2,axiom,(
% 0.22/0.51    v1_xboole_0(k1_xboole_0)),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).
% 0.22/0.51  fof(f204,plain,(
% 0.22/0.51    ~v1_xboole_0(k1_xboole_0)),
% 0.22/0.51    inference(resolution,[],[f197,f58])).
% 0.22/0.51  fof(f58,plain,(
% 0.22/0.51    ( ! [X0,X1] : (~r2_hidden(X1,X0) | ~v1_xboole_0(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f18])).
% 0.22/0.51  fof(f18,plain,(
% 0.22/0.51    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0))),
% 0.22/0.51    inference(ennf_transformation,[],[f12])).
% 0.22/0.51  fof(f12,plain,(
% 0.22/0.51    ! [X0] : (v1_xboole_0(X0) => ! [X1] : ~r2_hidden(X1,X0))),
% 0.22/0.51    inference(unused_predicate_definition_removal,[],[f1])).
% 0.22/0.51  fof(f1,axiom,(
% 0.22/0.51    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).
% 0.22/0.51  fof(f197,plain,(
% 0.22/0.51    r2_hidden(sK5,k1_xboole_0)),
% 0.22/0.51    inference(subsumption_resolution,[],[f181,f196])).
% 0.22/0.51  fof(f196,plain,(
% 0.22/0.51    v2_funct_1(sK3)),
% 0.22/0.51    inference(subsumption_resolution,[],[f73,f195])).
% 0.22/0.51  fof(f195,plain,(
% 0.22/0.51    sP0(sK3)),
% 0.22/0.51    inference(subsumption_resolution,[],[f188,f49])).
% 0.22/0.51  fof(f188,plain,(
% 0.22/0.51    ~v1_xboole_0(k1_xboole_0) | sP0(sK3)),
% 0.22/0.51    inference(backward_demodulation,[],[f84,f176])).
% 0.22/0.51  fof(f176,plain,(
% 0.22/0.51    k1_xboole_0 = sK2),
% 0.22/0.51    inference(subsumption_resolution,[],[f175,f135])).
% 0.22/0.51  fof(f135,plain,(
% 0.22/0.51    sK4 != sK5 | k1_xboole_0 = sK2),
% 0.22/0.51    inference(resolution,[],[f132,f48])).
% 0.22/0.51  fof(f48,plain,(
% 0.22/0.51    ~v2_funct_1(sK3) | sK4 != sK5),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f33,plain,(
% 0.22/0.51    ((sK4 != sK5 & k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) & r2_hidden(sK5,sK2) & r2_hidden(sK4,sK2)) | ~v2_funct_1(sK3)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5) | ~r2_hidden(X5,sK2) | ~r2_hidden(X4,sK2)) | v2_funct_1(sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) & v1_funct_2(sK3,sK2,sK2) & v1_funct_1(sK3)),
% 0.22/0.51    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f30,f32,f31])).
% 0.22/0.51  fof(f31,plain,(
% 0.22/0.51    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((? [X3,X2] : (X2 != X3 & k1_funct_1(sK3,X2) = k1_funct_1(sK3,X3) & r2_hidden(X3,sK2) & r2_hidden(X2,sK2)) | ~v2_funct_1(sK3)) & (! [X5,X4] : (X4 = X5 | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5) | ~r2_hidden(X5,sK2) | ~r2_hidden(X4,sK2)) | v2_funct_1(sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) & v1_funct_2(sK3,sK2,sK2) & v1_funct_1(sK3))),
% 0.22/0.51    introduced(choice_axiom,[])).
% 0.22/0.51  fof(f32,plain,(
% 0.22/0.51    ? [X3,X2] : (X2 != X3 & k1_funct_1(sK3,X2) = k1_funct_1(sK3,X3) & r2_hidden(X3,sK2) & r2_hidden(X2,sK2)) => (sK4 != sK5 & k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) & r2_hidden(sK5,sK2) & r2_hidden(sK4,sK2))),
% 0.22/0.51    introduced(choice_axiom,[])).
% 0.22/0.51  fof(f30,plain,(
% 0.22/0.51    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 0.22/0.51    inference(rectify,[],[f29])).
% 0.22/0.51  fof(f29,plain,(
% 0.22/0.51    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 0.22/0.51    inference(flattening,[],[f28])).
% 0.22/0.51  fof(f28,plain,(
% 0.22/0.51    ? [X0,X1] : (((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 0.22/0.51    inference(nnf_transformation,[],[f15])).
% 0.22/0.51  fof(f15,plain,(
% 0.22/0.51    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 0.22/0.51    inference(flattening,[],[f14])).
% 0.22/0.51  fof(f14,plain,(
% 0.22/0.51    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | (k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 0.22/0.51    inference(ennf_transformation,[],[f11])).
% 0.22/0.51  fof(f11,negated_conjecture,(
% 0.22/0.51    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 0.22/0.51    inference(negated_conjecture,[],[f10])).
% 0.22/0.51  fof(f10,conjecture,(
% 0.22/0.51    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t77_funct_2)).
% 0.22/0.51  fof(f132,plain,(
% 0.22/0.51    v2_funct_1(sK3) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(resolution,[],[f131,f73])).
% 0.22/0.51  fof(f131,plain,(
% 0.22/0.51    sP0(sK3) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(subsumption_resolution,[],[f130,f56])).
% 0.22/0.51  fof(f56,plain,(
% 0.22/0.51    ( ! [X0] : (sK6(X0) != sK7(X0) | sP0(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f38])).
% 0.22/0.51  fof(f38,plain,(
% 0.22/0.51    ! [X0] : ((sP0(X0) | (sK6(X0) != sK7(X0) & k1_funct_1(X0,sK6(X0)) = k1_funct_1(X0,sK7(X0)) & r2_hidden(sK7(X0),k1_relat_1(X0)) & r2_hidden(sK6(X0),k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~sP0(X0)))),
% 0.22/0.51    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7])],[f36,f37])).
% 0.22/0.51  fof(f37,plain,(
% 0.22/0.51    ! [X0] : (? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => (sK6(X0) != sK7(X0) & k1_funct_1(X0,sK6(X0)) = k1_funct_1(X0,sK7(X0)) & r2_hidden(sK7(X0),k1_relat_1(X0)) & r2_hidden(sK6(X0),k1_relat_1(X0))))),
% 0.22/0.51    introduced(choice_axiom,[])).
% 0.22/0.51  fof(f36,plain,(
% 0.22/0.51    ! [X0] : ((sP0(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~sP0(X0)))),
% 0.22/0.51    inference(rectify,[],[f35])).
% 0.22/0.51  fof(f35,plain,(
% 0.22/0.51    ! [X0] : ((sP0(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))) | ~sP0(X0)))),
% 0.22/0.51    inference(nnf_transformation,[],[f25])).
% 0.22/0.51  fof(f25,plain,(
% 0.22/0.51    ! [X0] : (sP0(X0) <=> ! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))))),
% 0.22/0.51    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 0.22/0.51  fof(f130,plain,(
% 0.22/0.51    sK6(sK3) = sK7(sK3) | sP0(sK3) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(subsumption_resolution,[],[f129,f83])).
% 0.22/0.51  fof(f83,plain,(
% 0.22/0.51    r2_hidden(sK7(sK3),sK2) | sP0(sK3)),
% 0.22/0.51    inference(resolution,[],[f81,f54])).
% 0.22/0.51  fof(f54,plain,(
% 0.22/0.51    ( ! [X0] : (r2_hidden(sK7(X0),k1_relat_1(X0)) | sP0(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f38])).
% 0.22/0.51  fof(f81,plain,(
% 0.22/0.51    ( ! [X0] : (~r2_hidden(X0,k1_relat_1(sK3)) | r2_hidden(X0,sK2)) )),
% 0.22/0.51    inference(resolution,[],[f80,f78])).
% 0.22/0.51  fof(f78,plain,(
% 0.22/0.51    r1_tarski(k1_relat_1(sK3),sK2)),
% 0.22/0.51    inference(subsumption_resolution,[],[f77,f69])).
% 0.22/0.51  fof(f69,plain,(
% 0.22/0.51    v1_relat_1(sK3)),
% 0.22/0.51    inference(resolution,[],[f64,f43])).
% 0.22/0.51  fof(f43,plain,(
% 0.22/0.51    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f64,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_relat_1(X2)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f21])).
% 0.22/0.51  fof(f21,plain,(
% 0.22/0.51    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.22/0.51    inference(ennf_transformation,[],[f7])).
% 0.22/0.51  fof(f7,axiom,(
% 0.22/0.51    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).
% 0.22/0.51  fof(f77,plain,(
% 0.22/0.51    r1_tarski(k1_relat_1(sK3),sK2) | ~v1_relat_1(sK3)),
% 0.22/0.51    inference(resolution,[],[f75,f59])).
% 0.22/0.51  fof(f59,plain,(
% 0.22/0.51    ( ! [X0,X1] : (~v4_relat_1(X1,X0) | r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f39])).
% 0.22/0.51  fof(f39,plain,(
% 0.22/0.51    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 0.22/0.51    inference(nnf_transformation,[],[f19])).
% 0.22/0.51  fof(f19,plain,(
% 0.22/0.51    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.22/0.51    inference(ennf_transformation,[],[f5])).
% 0.22/0.51  fof(f5,axiom,(
% 0.22/0.51    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).
% 0.22/0.51  fof(f75,plain,(
% 0.22/0.51    v4_relat_1(sK3,sK2)),
% 0.22/0.51    inference(resolution,[],[f65,f43])).
% 0.22/0.51  fof(f65,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v4_relat_1(X2,X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f22])).
% 0.22/0.51  fof(f22,plain,(
% 0.22/0.51    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.22/0.51    inference(ennf_transformation,[],[f13])).
% 0.22/0.51  fof(f13,plain,(
% 0.22/0.51    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 0.22/0.51    inference(pure_predicate_removal,[],[f8])).
% 0.22/0.51  fof(f8,axiom,(
% 0.22/0.51    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).
% 0.22/0.51  fof(f80,plain,(
% 0.22/0.51    ( ! [X2,X3,X1] : (~r1_tarski(X2,X3) | r2_hidden(X1,X3) | ~r2_hidden(X1,X2)) )),
% 0.22/0.51    inference(resolution,[],[f61,f63])).
% 0.22/0.51  fof(f63,plain,(
% 0.22/0.51    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f40])).
% 0.22/0.51  fof(f40,plain,(
% 0.22/0.51    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 0.22/0.51    inference(nnf_transformation,[],[f4])).
% 0.22/0.51  fof(f4,axiom,(
% 0.22/0.51    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).
% 0.22/0.51  fof(f61,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~r2_hidden(X2,X1) | r2_hidden(X2,X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f20])).
% 0.22/0.51  fof(f20,plain,(
% 0.22/0.51    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.22/0.51    inference(ennf_transformation,[],[f3])).
% 0.22/0.51  fof(f3,axiom,(
% 0.22/0.51    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_subset_1)).
% 0.22/0.51  fof(f129,plain,(
% 0.22/0.51    ~r2_hidden(sK7(sK3),sK2) | sK6(sK3) = sK7(sK3) | sP0(sK3) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(trivial_inequality_removal,[],[f128])).
% 0.22/0.51  fof(f128,plain,(
% 0.22/0.51    k1_funct_1(sK3,sK6(sK3)) != k1_funct_1(sK3,sK6(sK3)) | ~r2_hidden(sK7(sK3),sK2) | sK6(sK3) = sK7(sK3) | sP0(sK3) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(superposition,[],[f98,f125])).
% 0.22/0.51  fof(f125,plain,(
% 0.22/0.51    k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(subsumption_resolution,[],[f124,f89])).
% 0.22/0.51  fof(f89,plain,(
% 0.22/0.51    sK4 != sK5 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(resolution,[],[f86,f48])).
% 0.22/0.51  fof(f86,plain,(
% 0.22/0.51    v2_funct_1(sK3) | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(resolution,[],[f55,f73])).
% 0.22/0.51  fof(f55,plain,(
% 0.22/0.51    ( ! [X0] : (sP0(X0) | k1_funct_1(X0,sK6(X0)) = k1_funct_1(X0,sK7(X0))) )),
% 0.22/0.51    inference(cnf_transformation,[],[f38])).
% 0.22/0.51  fof(f124,plain,(
% 0.22/0.51    sK4 = sK5 | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f121])).
% 0.22/0.51  fof(f121,plain,(
% 0.22/0.51    sK4 = sK5 | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(superposition,[],[f120,f119])).
% 0.22/0.51  fof(f119,plain,(
% 0.22/0.51    sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f114])).
% 0.22/0.51  fof(f114,plain,(
% 0.22/0.51    sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(resolution,[],[f113,f91])).
% 0.22/0.51  fof(f91,plain,(
% 0.22/0.51    r2_hidden(sK4,sK2) | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(resolution,[],[f86,f45])).
% 0.22/0.51  fof(f45,plain,(
% 0.22/0.51    ~v2_funct_1(sK3) | r2_hidden(sK4,sK2)),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f113,plain,(
% 0.22/0.51    ( ! [X0] : (~r2_hidden(X0,sK2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0 | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))) )),
% 0.22/0.51    inference(subsumption_resolution,[],[f112,f43])).
% 0.22/0.51  fof(f112,plain,(
% 0.22/0.51    ( ! [X0] : (~r2_hidden(X0,sK2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))) )),
% 0.22/0.51    inference(resolution,[],[f111,f42])).
% 0.22/0.51  fof(f42,plain,(
% 0.22/0.51    v1_funct_2(sK3,sK2,sK2)),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f111,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (~v1_funct_2(sK3,X2,X0) | ~r2_hidden(X1,X2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | k1_xboole_0 = X0 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))) )),
% 0.22/0.51    inference(subsumption_resolution,[],[f110,f41])).
% 0.22/0.51  fof(f41,plain,(
% 0.22/0.51    v1_funct_1(sK3)),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f110,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (k1_xboole_0 = X0 | ~r2_hidden(X1,X2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_2(sK3,X2,X0) | ~v1_funct_1(sK3) | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))) )),
% 0.22/0.51    inference(resolution,[],[f66,f86])).
% 0.22/0.51  fof(f66,plain,(
% 0.22/0.51    ( ! [X2,X0,X3,X1] : (~v2_funct_1(X3) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f24])).
% 0.22/0.51  fof(f24,plain,(
% 0.22/0.51    ! [X0,X1,X2,X3] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 0.22/0.51    inference(flattening,[],[f23])).
% 0.22/0.51  fof(f23,plain,(
% 0.22/0.51    ! [X0,X1,X2,X3] : (((k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1) | (~r2_hidden(X2,X0) | ~v2_funct_1(X3))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 0.22/0.51    inference(ennf_transformation,[],[f9])).
% 0.22/0.51  fof(f9,axiom,(
% 0.22/0.51    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ((r2_hidden(X2,X0) & v2_funct_1(X3)) => (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_funct_2)).
% 0.22/0.51  fof(f120,plain,(
% 0.22/0.51    sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(forward_demodulation,[],[f118,f106])).
% 0.22/0.51  fof(f106,plain,(
% 0.22/0.51    k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(global_subsumption,[],[f47,f73,f105])).
% 0.22/0.51  fof(f105,plain,(
% 0.22/0.51    sP0(sK3) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(subsumption_resolution,[],[f104,f56])).
% 0.22/0.51  fof(f104,plain,(
% 0.22/0.51    sK6(sK3) = sK7(sK3) | sP0(sK3) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(subsumption_resolution,[],[f103,f83])).
% 0.22/0.51  fof(f103,plain,(
% 0.22/0.51    ~r2_hidden(sK7(sK3),sK2) | sK6(sK3) = sK7(sK3) | sP0(sK3) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(trivial_inequality_removal,[],[f101])).
% 0.22/0.51  fof(f101,plain,(
% 0.22/0.51    k1_funct_1(sK3,sK6(sK3)) != k1_funct_1(sK3,sK6(sK3)) | ~r2_hidden(sK7(sK3),sK2) | sK6(sK3) = sK7(sK3) | sP0(sK3) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(superposition,[],[f98,f87])).
% 0.22/0.51  fof(f87,plain,(
% 0.22/0.51    k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(resolution,[],[f86,f47])).
% 0.22/0.51  fof(f47,plain,(
% 0.22/0.51    ~v2_funct_1(sK3) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f118,plain,(
% 0.22/0.51    sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f115])).
% 0.22/0.51  fof(f115,plain,(
% 0.22/0.51    sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) | k1_xboole_0 = sK2 | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3)) | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(resolution,[],[f113,f90])).
% 0.22/0.51  fof(f90,plain,(
% 0.22/0.51    r2_hidden(sK5,sK2) | k1_funct_1(sK3,sK6(sK3)) = k1_funct_1(sK3,sK7(sK3))),
% 0.22/0.51    inference(resolution,[],[f86,f46])).
% 0.22/0.51  fof(f46,plain,(
% 0.22/0.51    ~v2_funct_1(sK3) | r2_hidden(sK5,sK2)),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f98,plain,(
% 0.22/0.51    ( ! [X2] : (k1_funct_1(sK3,X2) != k1_funct_1(sK3,sK6(sK3)) | ~r2_hidden(X2,sK2) | sK6(sK3) = X2 | sP0(sK3)) )),
% 0.22/0.51    inference(subsumption_resolution,[],[f96,f74])).
% 0.22/0.51  fof(f74,plain,(
% 0.22/0.51    ~v2_funct_1(sK3) | sP0(sK3)),
% 0.22/0.51    inference(resolution,[],[f72,f50])).
% 0.22/0.51  fof(f50,plain,(
% 0.22/0.51    ( ! [X0] : (~sP1(X0) | ~v2_funct_1(X0) | sP0(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f34])).
% 0.22/0.51  fof(f34,plain,(
% 0.22/0.51    ! [X0] : (((v2_funct_1(X0) | ~sP0(X0)) & (sP0(X0) | ~v2_funct_1(X0))) | ~sP1(X0))),
% 0.22/0.51    inference(nnf_transformation,[],[f26])).
% 0.22/0.51  fof(f26,plain,(
% 0.22/0.51    ! [X0] : ((v2_funct_1(X0) <=> sP0(X0)) | ~sP1(X0))),
% 0.22/0.51    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).
% 0.22/0.51  fof(f72,plain,(
% 0.22/0.51    sP1(sK3)),
% 0.22/0.51    inference(subsumption_resolution,[],[f71,f41])).
% 0.22/0.51  fof(f71,plain,(
% 0.22/0.51    ~v1_funct_1(sK3) | sP1(sK3)),
% 0.22/0.51    inference(resolution,[],[f69,f57])).
% 0.22/0.51  fof(f57,plain,(
% 0.22/0.51    ( ! [X0] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | sP1(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f27])).
% 0.22/0.51  fof(f27,plain,(
% 0.22/0.51    ! [X0] : (sP1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.22/0.51    inference(definition_folding,[],[f17,f26,f25])).
% 0.22/0.51  fof(f17,plain,(
% 0.22/0.51    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.22/0.51    inference(flattening,[],[f16])).
% 0.22/0.51  fof(f16,plain,(
% 0.22/0.51    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | (k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 0.22/0.51    inference(ennf_transformation,[],[f6])).
% 0.22/0.51  fof(f6,axiom,(
% 0.22/0.51    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) <=> ! [X1,X2] : ((k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => X1 = X2)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_funct_1)).
% 0.22/0.51  fof(f96,plain,(
% 0.22/0.51    ( ! [X2] : (k1_funct_1(sK3,X2) != k1_funct_1(sK3,sK6(sK3)) | ~r2_hidden(X2,sK2) | sK6(sK3) = X2 | v2_funct_1(sK3) | sP0(sK3)) )),
% 0.22/0.51    inference(resolution,[],[f44,f82])).
% 0.22/0.51  fof(f82,plain,(
% 0.22/0.51    r2_hidden(sK6(sK3),sK2) | sP0(sK3)),
% 0.22/0.51    inference(resolution,[],[f81,f53])).
% 0.22/0.51  fof(f53,plain,(
% 0.22/0.51    ( ! [X0] : (r2_hidden(sK6(X0),k1_relat_1(X0)) | sP0(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f38])).
% 0.22/0.51  fof(f44,plain,(
% 0.22/0.51    ( ! [X4,X5] : (~r2_hidden(X4,sK2) | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5) | ~r2_hidden(X5,sK2) | X4 = X5 | v2_funct_1(sK3)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f33])).
% 0.22/0.51  fof(f175,plain,(
% 0.22/0.51    sK4 = sK5 | k1_xboole_0 = sK2),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f168])).
% 0.22/0.51  fof(f168,plain,(
% 0.22/0.51    sK4 = sK5 | k1_xboole_0 = sK2 | k1_xboole_0 = sK2),
% 0.22/0.51    inference(superposition,[],[f163,f162])).
% 0.22/0.51  fof(f162,plain,(
% 0.22/0.51    sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f155])).
% 0.22/0.51  fof(f155,plain,(
% 0.22/0.51    k1_xboole_0 = sK2 | sK4 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(resolution,[],[f154,f137])).
% 0.22/0.51  fof(f137,plain,(
% 0.22/0.51    r2_hidden(sK4,sK2) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(resolution,[],[f132,f45])).
% 0.22/0.51  fof(f154,plain,(
% 0.22/0.51    ( ! [X0] : (~r2_hidden(X0,sK2) | k1_xboole_0 = sK2 | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0) )),
% 0.22/0.51    inference(subsumption_resolution,[],[f153,f43])).
% 0.22/0.51  fof(f153,plain,(
% 0.22/0.51    ( ! [X0] : (k1_xboole_0 = sK2 | ~r2_hidden(X0,sK2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))) )),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f152])).
% 0.22/0.51  fof(f152,plain,(
% 0.22/0.51    ( ! [X0] : (k1_xboole_0 = sK2 | ~r2_hidden(X0,sK2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) | k1_xboole_0 = sK2) )),
% 0.22/0.51    inference(resolution,[],[f139,f42])).
% 0.22/0.51  fof(f139,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (~v1_funct_2(sK3,X2,X0) | k1_xboole_0 = X0 | ~r2_hidden(X1,X2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | k1_xboole_0 = sK2) )),
% 0.22/0.51    inference(subsumption_resolution,[],[f138,f41])).
% 0.22/0.51  fof(f138,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (k1_xboole_0 = sK2 | k1_xboole_0 = X0 | ~r2_hidden(X1,X2) | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X1)) = X1 | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_2(sK3,X2,X0) | ~v1_funct_1(sK3)) )),
% 0.22/0.51    inference(resolution,[],[f132,f66])).
% 0.22/0.51  fof(f163,plain,(
% 0.22/0.51    sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(forward_demodulation,[],[f161,f106])).
% 0.22/0.51  fof(f161,plain,(
% 0.22/0.51    k1_xboole_0 = sK2 | sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5))),
% 0.22/0.51    inference(duplicate_literal_removal,[],[f157])).
% 0.22/0.51  fof(f157,plain,(
% 0.22/0.51    k1_xboole_0 = sK2 | sK5 = k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(resolution,[],[f154,f136])).
% 0.22/0.51  fof(f136,plain,(
% 0.22/0.51    r2_hidden(sK5,sK2) | k1_xboole_0 = sK2),
% 0.22/0.51    inference(resolution,[],[f132,f46])).
% 0.22/0.51  fof(f84,plain,(
% 0.22/0.51    ~v1_xboole_0(sK2) | sP0(sK3)),
% 0.22/0.51    inference(resolution,[],[f82,f58])).
% 0.22/0.51  fof(f73,plain,(
% 0.22/0.51    ~sP0(sK3) | v2_funct_1(sK3)),
% 0.22/0.51    inference(resolution,[],[f72,f51])).
% 0.22/0.51  fof(f51,plain,(
% 0.22/0.51    ( ! [X0] : (~sP1(X0) | ~sP0(X0) | v2_funct_1(X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f34])).
% 0.22/0.51  fof(f181,plain,(
% 0.22/0.51    r2_hidden(sK5,k1_xboole_0) | ~v2_funct_1(sK3)),
% 0.22/0.51    inference(backward_demodulation,[],[f46,f176])).
% 0.22/0.51  % SZS output end Proof for theBenchmark
% 0.22/0.51  % (23649)------------------------------
% 0.22/0.51  % (23649)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.51  % (23649)Termination reason: Refutation
% 0.22/0.51  
% 0.22/0.51  % (23649)Memory used [KB]: 6268
% 0.22/0.51  % (23649)Time elapsed: 0.100 s
% 0.22/0.51  % (23649)------------------------------
% 0.22/0.51  % (23649)------------------------------
% 0.22/0.52  % (23662)lrs+4_5:4_av=off:bd=off:er=filter:lma=on:lwlo=on:nwc=1:stl=30:sp=occurrence:updr=off_230 on theBenchmark
% 0.22/0.52  % (23643)Success in time 0.152 s
%------------------------------------------------------------------------------
