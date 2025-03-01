%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:06:45 EST 2020

% Result     : Theorem 1.46s
% Output     : Refutation 1.46s
% Verified   : 
% Statistics : Number of formulae       :   79 ( 334 expanded)
%              Number of leaves         :   13 ( 103 expanded)
%              Depth                    :   21
%              Number of atoms          :  359 (2856 expanded)
%              Number of equality atoms :   55 ( 553 expanded)
%              Maximal formula depth    :   13 (   6 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f166,plain,(
    $false ),
    inference(subsumption_resolution,[],[f165,f146])).

fof(f146,plain,(
    ~ r2_relset_1(sK0,sK1,sK2,sK2) ),
    inference(backward_demodulation,[],[f43,f139])).

fof(f139,plain,(
    sK2 = sK3 ),
    inference(duplicate_literal_removal,[],[f138])).

fof(f138,plain,
    ( sK2 = sK3
    | sK2 = sK3
    | sK2 = sK3 ),
    inference(resolution,[],[f97,f95])).

fof(f95,plain,(
    ! [X0] :
      ( r1_tarski(sK3,X0)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f91,f53])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK5(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK5(X0,X1),X1)
          & r2_hidden(sK5(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f30,f31])).

fof(f31,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK5(X0,X1),X1)
        & r2_hidden(sK5(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(f91,plain,(
    ! [X2] :
      ( ~ r2_hidden(X2,sK3)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f87,f44])).

fof(f44,plain,(
    ! [X2,X0] :
      ( ~ v1_xboole_0(X0)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK4(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f24,f25])).

fof(f25,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK4(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f23])).

fof(f23,plain,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f87,plain,
    ( v1_xboole_0(sK3)
    | sK2 = sK3 ),
    inference(resolution,[],[f77,f40])).

fof(f40,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,
    ( ~ r2_relset_1(sK0,sK1,sK2,sK3)
    & ( k1_xboole_0 = sK0
      | k1_xboole_0 != sK1 )
    & r1_partfun1(sK2,sK3)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f11,f21,f20])).

fof(f20,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ~ r2_relset_1(X0,X1,X2,X3)
            & ( k1_xboole_0 = X0
              | k1_xboole_0 != X1 )
            & r1_partfun1(X2,X3)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ? [X3] :
          ( ~ r2_relset_1(sK0,sK1,sK2,X3)
          & ( k1_xboole_0 = sK0
            | k1_xboole_0 != sK1 )
          & r1_partfun1(sK2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
          & v1_funct_2(X3,sK0,sK1)
          & v1_funct_1(X3) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK2,sK0,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,
    ( ? [X3] :
        ( ~ r2_relset_1(sK0,sK1,sK2,X3)
        & ( k1_xboole_0 = sK0
          | k1_xboole_0 != sK1 )
        & r1_partfun1(sK2,X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
        & v1_funct_2(X3,sK0,sK1)
        & v1_funct_1(X3) )
   => ( ~ r2_relset_1(sK0,sK1,sK2,sK3)
      & ( k1_xboole_0 = sK0
        | k1_xboole_0 != sK1 )
      & r1_partfun1(sK2,sK3)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK3,sK0,sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f11,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f10])).

fof(f10,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              & v1_funct_2(X3,X0,X1)
              & v1_funct_1(X3) )
           => ( r1_partfun1(X2,X3)
             => ( r2_relset_1(X0,X1,X2,X3)
                | ( k1_xboole_0 != X0
                  & k1_xboole_0 = X1 ) ) ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f8,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
         => ( r1_partfun1(X2,X3)
           => ( r2_relset_1(X0,X1,X2,X3)
              | ( k1_xboole_0 != X0
                & k1_xboole_0 = X1 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t142_funct_2)).

fof(f77,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
      | sK2 = sK3
      | v1_xboole_0(X0) ) ),
    inference(resolution,[],[f76,f48])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | v1_xboole_0(X2) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_xboole_0(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
         => v1_xboole_0(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc4_relset_1)).

fof(f76,plain,
    ( v1_xboole_0(sK1)
    | sK2 = sK3 ),
    inference(subsumption_resolution,[],[f75,f67])).

fof(f67,plain,
    ( v1_partfun1(sK2,sK0)
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f66,f36])).

fof(f36,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f66,plain,
    ( v1_partfun1(sK2,sK0)
    | ~ v1_funct_2(sK2,sK0,sK1)
    | v1_xboole_0(sK1) ),
    inference(resolution,[],[f64,f37])).

fof(f37,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f22])).

fof(f64,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_partfun1(sK2,X0)
      | ~ v1_funct_2(sK2,X0,X1)
      | v1_xboole_0(X1) ) ),
    inference(resolution,[],[f47,f35])).

fof(f35,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f22])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_funct_1(X2)
      | ~ v1_funct_2(X2,X0,X1)
      | v1_partfun1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc5_funct_2)).

fof(f75,plain,
    ( ~ v1_partfun1(sK2,sK0)
    | sK2 = sK3
    | v1_xboole_0(sK1) ),
    inference(resolution,[],[f74,f69])).

fof(f69,plain,
    ( v1_partfun1(sK3,sK0)
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f68,f39])).

fof(f39,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f68,plain,
    ( v1_partfun1(sK3,sK0)
    | ~ v1_funct_2(sK3,sK0,sK1)
    | v1_xboole_0(sK1) ),
    inference(resolution,[],[f65,f40])).

fof(f65,plain,(
    ! [X2,X3] :
      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | v1_partfun1(sK3,X2)
      | ~ v1_funct_2(sK3,X2,X3)
      | v1_xboole_0(X3) ) ),
    inference(resolution,[],[f47,f38])).

% (28137)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
fof(f38,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f22])).

fof(f74,plain,
    ( ~ v1_partfun1(sK3,sK0)
    | ~ v1_partfun1(sK2,sK0)
    | sK2 = sK3 ),
    inference(subsumption_resolution,[],[f73,f37])).

fof(f73,plain,
    ( ~ v1_partfun1(sK3,sK0)
    | ~ v1_partfun1(sK2,sK0)
    | sK2 = sK3
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(resolution,[],[f72,f40])).

fof(f72,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_partfun1(sK3,X0)
      | ~ v1_partfun1(sK2,X0)
      | sK2 = sK3
      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(subsumption_resolution,[],[f71,f35])).

fof(f71,plain,(
    ! [X0,X1] :
      ( sK2 = sK3
      | ~ v1_partfun1(sK3,X0)
      | ~ v1_partfun1(sK2,X0)
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(sK2) ) ),
    inference(subsumption_resolution,[],[f70,f38])).

fof(f70,plain,(
    ! [X0,X1] :
      ( sK2 = sK3
      | ~ v1_partfun1(sK3,X0)
      | ~ v1_partfun1(sK2,X0)
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(sK3)
      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(sK2) ) ),
    inference(resolution,[],[f57,f41])).

fof(f41,plain,(
    r1_partfun1(sK2,sK3) ),
    inference(cnf_transformation,[],[f22])).

fof(f57,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r1_partfun1(X2,X3)
      | X2 = X3
      | ~ v1_partfun1(X3,X0)
      | ~ v1_partfun1(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f18])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f7])).

% (28142)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_1(X3) )
         => ( ( r1_partfun1(X2,X3)
              & v1_partfun1(X3,X0)
              & v1_partfun1(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_partfun1)).

fof(f97,plain,(
    ! [X2] :
      ( ~ r1_tarski(X2,sK2)
      | sK2 = sK3
      | sK2 = X2 ) ),
    inference(resolution,[],[f93,f51])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_tarski(X1,X0)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f93,plain,(
    ! [X0] :
      ( r1_tarski(sK2,X0)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f89,f53])).

fof(f89,plain,(
    ! [X2] :
      ( ~ r2_hidden(X2,sK2)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f86,f44])).

fof(f86,plain,
    ( v1_xboole_0(sK2)
    | sK2 = sK3 ),
    inference(resolution,[],[f77,f37])).

fof(f43,plain,(
    ~ r2_relset_1(sK0,sK1,sK2,sK3) ),
    inference(cnf_transformation,[],[f22])).

fof(f165,plain,(
    r2_relset_1(sK0,sK1,sK2,sK2) ),
    inference(subsumption_resolution,[],[f164,f36])).

fof(f164,plain,
    ( ~ v1_funct_2(sK2,sK0,sK1)
    | r2_relset_1(sK0,sK1,sK2,sK2) ),
    inference(resolution,[],[f163,f37])).

fof(f163,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(sK2,X0,X1)
      | r2_relset_1(X0,X1,sK2,sK2) ) ),
    inference(resolution,[],[f162,f35])).

fof(f162,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | r2_relset_1(X0,X1,X2,X2) ) ),
    inference(duplicate_literal_removal,[],[f161])).

fof(f161,plain,(
    ! [X2,X0,X1] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(equality_resolution,[],[f56])).

fof(f56,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_funct_1(X2,sK6(X0,X2,X3)) != k1_funct_1(X3,sK6(X0,X2,X3))
      | r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( r2_relset_1(X0,X1,X2,X3)
          | ( k1_funct_1(X2,sK6(X0,X2,X3)) != k1_funct_1(X3,sK6(X0,X2,X3))
            & m1_subset_1(sK6(X0,X2,X3),X0) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_2(X3,X0,X1)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6])],[f17,f33])).

fof(f33,plain,(
    ! [X3,X2,X0] :
      ( ? [X4] :
          ( k1_funct_1(X2,X4) != k1_funct_1(X3,X4)
          & m1_subset_1(X4,X0) )
     => ( k1_funct_1(X2,sK6(X0,X2,X3)) != k1_funct_1(X3,sK6(X0,X2,X3))
        & m1_subset_1(sK6(X0,X2,X3),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( r2_relset_1(X0,X1,X2,X3)
          | ? [X4] :
              ( k1_funct_1(X2,X4) != k1_funct_1(X3,X4)
              & m1_subset_1(X4,X0) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_2(X3,X0,X1)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( r2_relset_1(X0,X1,X2,X3)
          | ? [X4] :
              ( k1_funct_1(X2,X4) != k1_funct_1(X3,X4)
              & m1_subset_1(X4,X0) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_2(X3,X0,X1)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
         => ( ! [X4] :
                ( m1_subset_1(X4,X0)
               => k1_funct_1(X2,X4) = k1_funct_1(X3,X4) )
           => r2_relset_1(X0,X1,X2,X3) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_funct_2)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:09:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.21/0.50  % (28135)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.21/0.51  % (28122)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.21/0.51  % (28149)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.21/0.51  % (28140)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 0.21/0.52  % (28129)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.21/0.52  % (28141)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.21/0.52  % (28149)Refutation not found, incomplete strategy% (28149)------------------------------
% 0.21/0.52  % (28149)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (28145)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.21/0.53  % (28149)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (28124)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.21/0.53  % (28149)Memory used [KB]: 10746
% 0.21/0.53  % (28149)Time elapsed: 0.114 s
% 0.21/0.53  % (28149)------------------------------
% 0.21/0.53  % (28149)------------------------------
% 0.21/0.53  % (28123)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.21/0.53  % (28136)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.21/0.53  % (28152)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.21/0.53  % (28124)Refutation not found, incomplete strategy% (28124)------------------------------
% 0.21/0.53  % (28124)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (28124)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (28124)Memory used [KB]: 10746
% 0.21/0.53  % (28124)Time elapsed: 0.124 s
% 0.21/0.53  % (28124)------------------------------
% 0.21/0.53  % (28124)------------------------------
% 0.21/0.53  % (28126)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.21/0.53  % (28125)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.21/0.53  % (28148)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.21/0.53  % (28145)Refutation not found, incomplete strategy% (28145)------------------------------
% 0.21/0.53  % (28145)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (28145)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (28145)Memory used [KB]: 10746
% 0.21/0.53  % (28145)Time elapsed: 0.092 s
% 0.21/0.53  % (28145)------------------------------
% 0.21/0.53  % (28145)------------------------------
% 0.21/0.54  % (28127)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 1.46/0.54  % (28151)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.46/0.54  % (28146)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 1.46/0.54  % (28128)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 1.46/0.54  % (28144)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 1.46/0.54  % (28150)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 1.46/0.54  % (28129)Refutation found. Thanks to Tanya!
% 1.46/0.54  % SZS status Theorem for theBenchmark
% 1.46/0.54  % (28147)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 1.46/0.54  % SZS output start Proof for theBenchmark
% 1.46/0.54  fof(f166,plain,(
% 1.46/0.54    $false),
% 1.46/0.54    inference(subsumption_resolution,[],[f165,f146])).
% 1.46/0.54  fof(f146,plain,(
% 1.46/0.54    ~r2_relset_1(sK0,sK1,sK2,sK2)),
% 1.46/0.54    inference(backward_demodulation,[],[f43,f139])).
% 1.46/0.54  fof(f139,plain,(
% 1.46/0.54    sK2 = sK3),
% 1.46/0.54    inference(duplicate_literal_removal,[],[f138])).
% 1.46/0.54  fof(f138,plain,(
% 1.46/0.54    sK2 = sK3 | sK2 = sK3 | sK2 = sK3),
% 1.46/0.54    inference(resolution,[],[f97,f95])).
% 1.46/0.54  fof(f95,plain,(
% 1.46/0.54    ( ! [X0] : (r1_tarski(sK3,X0) | sK2 = sK3) )),
% 1.46/0.54    inference(resolution,[],[f91,f53])).
% 1.46/0.54  fof(f53,plain,(
% 1.46/0.54    ( ! [X0,X1] : (r2_hidden(sK5(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 1.46/0.54    inference(cnf_transformation,[],[f32])).
% 1.46/0.54  fof(f32,plain,(
% 1.46/0.54    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK5(X0,X1),X1) & r2_hidden(sK5(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.46/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f30,f31])).
% 1.46/0.54  fof(f31,plain,(
% 1.46/0.54    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK5(X0,X1),X1) & r2_hidden(sK5(X0,X1),X0)))),
% 1.46/0.54    introduced(choice_axiom,[])).
% 1.46/0.54  fof(f30,plain,(
% 1.46/0.54    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.46/0.54    inference(rectify,[],[f29])).
% 1.46/0.54  fof(f29,plain,(
% 1.46/0.54    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.46/0.54    inference(nnf_transformation,[],[f15])).
% 1.46/0.54  fof(f15,plain,(
% 1.46/0.54    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.46/0.54    inference(ennf_transformation,[],[f2])).
% 1.46/0.54  fof(f2,axiom,(
% 1.46/0.54    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).
% 1.46/0.54  fof(f91,plain,(
% 1.46/0.54    ( ! [X2] : (~r2_hidden(X2,sK3) | sK2 = sK3) )),
% 1.46/0.54    inference(resolution,[],[f87,f44])).
% 1.46/0.54  fof(f44,plain,(
% 1.46/0.54    ( ! [X2,X0] : (~v1_xboole_0(X0) | ~r2_hidden(X2,X0)) )),
% 1.46/0.54    inference(cnf_transformation,[],[f26])).
% 1.46/0.54  fof(f26,plain,(
% 1.46/0.54    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK4(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 1.46/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f24,f25])).
% 1.46/0.54  fof(f25,plain,(
% 1.46/0.54    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK4(X0),X0))),
% 1.46/0.54    introduced(choice_axiom,[])).
% 1.46/0.54  fof(f24,plain,(
% 1.46/0.54    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 1.46/0.54    inference(rectify,[],[f23])).
% 1.46/0.54  fof(f23,plain,(
% 1.46/0.54    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 1.46/0.54    inference(nnf_transformation,[],[f1])).
% 1.46/0.54  fof(f1,axiom,(
% 1.46/0.54    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).
% 1.46/0.54  fof(f87,plain,(
% 1.46/0.54    v1_xboole_0(sK3) | sK2 = sK3),
% 1.46/0.54    inference(resolution,[],[f77,f40])).
% 1.46/0.54  fof(f40,plain,(
% 1.46/0.54    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f22,plain,(
% 1.46/0.54    (~r2_relset_1(sK0,sK1,sK2,sK3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 1.46/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f11,f21,f20])).
% 1.46/0.54  fof(f20,plain,(
% 1.46/0.54    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (~r2_relset_1(sK0,sK1,sK2,X3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(X3,sK0,sK1) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 1.46/0.54    introduced(choice_axiom,[])).
% 1.46/0.54  fof(f21,plain,(
% 1.46/0.54    ? [X3] : (~r2_relset_1(sK0,sK1,sK2,X3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(X3,sK0,sK1) & v1_funct_1(X3)) => (~r2_relset_1(sK0,sK1,sK2,sK3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 1.46/0.54    introduced(choice_axiom,[])).
% 1.46/0.54  fof(f11,plain,(
% 1.46/0.54    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 1.46/0.54    inference(flattening,[],[f10])).
% 1.46/0.54  fof(f10,plain,(
% 1.46/0.54    ? [X0,X1,X2] : (? [X3] : (((~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1)) & r1_partfun1(X2,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 1.46/0.54    inference(ennf_transformation,[],[f9])).
% 1.46/0.54  fof(f9,negated_conjecture,(
% 1.46/0.54    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 1.46/0.54    inference(negated_conjecture,[],[f8])).
% 1.46/0.54  fof(f8,conjecture,(
% 1.46/0.54    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t142_funct_2)).
% 1.46/0.54  fof(f77,plain,(
% 1.46/0.54    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1))) | sK2 = sK3 | v1_xboole_0(X0)) )),
% 1.46/0.54    inference(resolution,[],[f76,f48])).
% 1.46/0.54  fof(f48,plain,(
% 1.46/0.54    ( ! [X2,X0,X1] : (~v1_xboole_0(X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | v1_xboole_0(X2)) )),
% 1.46/0.54    inference(cnf_transformation,[],[f14])).
% 1.46/0.54  fof(f14,plain,(
% 1.46/0.54    ! [X0,X1] : (! [X2] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) | ~v1_xboole_0(X0))),
% 1.46/0.54    inference(ennf_transformation,[],[f4])).
% 1.46/0.54  fof(f4,axiom,(
% 1.46/0.54    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => v1_xboole_0(X2)))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc4_relset_1)).
% 1.46/0.54  fof(f76,plain,(
% 1.46/0.54    v1_xboole_0(sK1) | sK2 = sK3),
% 1.46/0.54    inference(subsumption_resolution,[],[f75,f67])).
% 1.46/0.54  fof(f67,plain,(
% 1.46/0.54    v1_partfun1(sK2,sK0) | v1_xboole_0(sK1)),
% 1.46/0.54    inference(subsumption_resolution,[],[f66,f36])).
% 1.46/0.54  fof(f36,plain,(
% 1.46/0.54    v1_funct_2(sK2,sK0,sK1)),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f66,plain,(
% 1.46/0.54    v1_partfun1(sK2,sK0) | ~v1_funct_2(sK2,sK0,sK1) | v1_xboole_0(sK1)),
% 1.46/0.54    inference(resolution,[],[f64,f37])).
% 1.46/0.54  fof(f37,plain,(
% 1.46/0.54    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f64,plain,(
% 1.46/0.54    ( ! [X0,X1] : (~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_partfun1(sK2,X0) | ~v1_funct_2(sK2,X0,X1) | v1_xboole_0(X1)) )),
% 1.46/0.54    inference(resolution,[],[f47,f35])).
% 1.46/0.54  fof(f35,plain,(
% 1.46/0.54    v1_funct_1(sK2)),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f47,plain,(
% 1.46/0.54    ( ! [X2,X0,X1] : (~v1_funct_1(X2) | ~v1_funct_2(X2,X0,X1) | v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 1.46/0.54    inference(cnf_transformation,[],[f13])).
% 1.46/0.54  fof(f13,plain,(
% 1.46/0.54    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.46/0.54    inference(flattening,[],[f12])).
% 1.46/0.54  fof(f12,plain,(
% 1.46/0.54    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.46/0.54    inference(ennf_transformation,[],[f5])).
% 1.46/0.54  fof(f5,axiom,(
% 1.46/0.54    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc5_funct_2)).
% 1.46/0.54  fof(f75,plain,(
% 1.46/0.54    ~v1_partfun1(sK2,sK0) | sK2 = sK3 | v1_xboole_0(sK1)),
% 1.46/0.54    inference(resolution,[],[f74,f69])).
% 1.46/0.54  fof(f69,plain,(
% 1.46/0.54    v1_partfun1(sK3,sK0) | v1_xboole_0(sK1)),
% 1.46/0.54    inference(subsumption_resolution,[],[f68,f39])).
% 1.46/0.54  fof(f39,plain,(
% 1.46/0.54    v1_funct_2(sK3,sK0,sK1)),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f68,plain,(
% 1.46/0.54    v1_partfun1(sK3,sK0) | ~v1_funct_2(sK3,sK0,sK1) | v1_xboole_0(sK1)),
% 1.46/0.54    inference(resolution,[],[f65,f40])).
% 1.46/0.54  fof(f65,plain,(
% 1.46/0.54    ( ! [X2,X3] : (~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | v1_partfun1(sK3,X2) | ~v1_funct_2(sK3,X2,X3) | v1_xboole_0(X3)) )),
% 1.46/0.54    inference(resolution,[],[f47,f38])).
% 1.46/0.54  % (28137)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 1.46/0.54  fof(f38,plain,(
% 1.46/0.54    v1_funct_1(sK3)),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f74,plain,(
% 1.46/0.54    ~v1_partfun1(sK3,sK0) | ~v1_partfun1(sK2,sK0) | sK2 = sK3),
% 1.46/0.54    inference(subsumption_resolution,[],[f73,f37])).
% 1.46/0.54  fof(f73,plain,(
% 1.46/0.54    ~v1_partfun1(sK3,sK0) | ~v1_partfun1(sK2,sK0) | sK2 = sK3 | ~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.46/0.54    inference(resolution,[],[f72,f40])).
% 1.46/0.54  fof(f72,plain,(
% 1.46/0.54    ( ! [X0,X1] : (~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_partfun1(sK3,X0) | ~v1_partfun1(sK2,X0) | sK2 = sK3 | ~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.46/0.54    inference(subsumption_resolution,[],[f71,f35])).
% 1.46/0.54  fof(f71,plain,(
% 1.46/0.54    ( ! [X0,X1] : (sK2 = sK3 | ~v1_partfun1(sK3,X0) | ~v1_partfun1(sK2,X0) | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(sK2)) )),
% 1.46/0.54    inference(subsumption_resolution,[],[f70,f38])).
% 1.46/0.54  fof(f70,plain,(
% 1.46/0.54    ( ! [X0,X1] : (sK2 = sK3 | ~v1_partfun1(sK3,X0) | ~v1_partfun1(sK2,X0) | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(sK3) | ~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(sK2)) )),
% 1.46/0.54    inference(resolution,[],[f57,f41])).
% 1.46/0.54  fof(f41,plain,(
% 1.46/0.54    r1_partfun1(sK2,sK3)),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f57,plain,(
% 1.46/0.54    ( ! [X2,X0,X3,X1] : (~r1_partfun1(X2,X3) | X2 = X3 | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 1.46/0.54    inference(cnf_transformation,[],[f19])).
% 1.46/0.54  fof(f19,plain,(
% 1.46/0.54    ! [X0,X1,X2] : (! [X3] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 1.46/0.54    inference(flattening,[],[f18])).
% 1.46/0.54  fof(f18,plain,(
% 1.46/0.54    ! [X0,X1,X2] : (! [X3] : ((X2 = X3 | (~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 1.46/0.54    inference(ennf_transformation,[],[f7])).
% 1.46/0.54  % (28142)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 1.46/0.54  fof(f7,axiom,(
% 1.46/0.54    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ((r1_partfun1(X2,X3) & v1_partfun1(X3,X0) & v1_partfun1(X2,X0)) => X2 = X3)))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_partfun1)).
% 1.46/0.54  fof(f97,plain,(
% 1.46/0.54    ( ! [X2] : (~r1_tarski(X2,sK2) | sK2 = sK3 | sK2 = X2) )),
% 1.46/0.54    inference(resolution,[],[f93,f51])).
% 1.46/0.54  fof(f51,plain,(
% 1.46/0.54    ( ! [X0,X1] : (~r1_tarski(X0,X1) | ~r1_tarski(X1,X0) | X0 = X1) )),
% 1.46/0.54    inference(cnf_transformation,[],[f28])).
% 1.46/0.54  fof(f28,plain,(
% 1.46/0.54    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.46/0.54    inference(flattening,[],[f27])).
% 1.46/0.54  fof(f27,plain,(
% 1.46/0.54    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.46/0.54    inference(nnf_transformation,[],[f3])).
% 1.46/0.54  fof(f3,axiom,(
% 1.46/0.54    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 1.46/0.54  fof(f93,plain,(
% 1.46/0.54    ( ! [X0] : (r1_tarski(sK2,X0) | sK2 = sK3) )),
% 1.46/0.54    inference(resolution,[],[f89,f53])).
% 1.46/0.54  fof(f89,plain,(
% 1.46/0.54    ( ! [X2] : (~r2_hidden(X2,sK2) | sK2 = sK3) )),
% 1.46/0.54    inference(resolution,[],[f86,f44])).
% 1.46/0.54  fof(f86,plain,(
% 1.46/0.54    v1_xboole_0(sK2) | sK2 = sK3),
% 1.46/0.54    inference(resolution,[],[f77,f37])).
% 1.46/0.54  fof(f43,plain,(
% 1.46/0.54    ~r2_relset_1(sK0,sK1,sK2,sK3)),
% 1.46/0.54    inference(cnf_transformation,[],[f22])).
% 1.46/0.54  fof(f165,plain,(
% 1.46/0.54    r2_relset_1(sK0,sK1,sK2,sK2)),
% 1.46/0.54    inference(subsumption_resolution,[],[f164,f36])).
% 1.46/0.54  fof(f164,plain,(
% 1.46/0.54    ~v1_funct_2(sK2,sK0,sK1) | r2_relset_1(sK0,sK1,sK2,sK2)),
% 1.46/0.54    inference(resolution,[],[f163,f37])).
% 1.46/0.54  fof(f163,plain,(
% 1.46/0.54    ( ! [X0,X1] : (~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(sK2,X0,X1) | r2_relset_1(X0,X1,sK2,sK2)) )),
% 1.46/0.54    inference(resolution,[],[f162,f35])).
% 1.46/0.54  fof(f162,plain,(
% 1.46/0.54    ( ! [X2,X0,X1] : (~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | r2_relset_1(X0,X1,X2,X2)) )),
% 1.46/0.54    inference(duplicate_literal_removal,[],[f161])).
% 1.46/0.54  fof(f161,plain,(
% 1.46/0.54    ( ! [X2,X0,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 1.46/0.54    inference(equality_resolution,[],[f56])).
% 1.46/0.54  fof(f56,plain,(
% 1.46/0.54    ( ! [X2,X0,X3,X1] : (k1_funct_1(X2,sK6(X0,X2,X3)) != k1_funct_1(X3,sK6(X0,X2,X3)) | r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 1.46/0.54    inference(cnf_transformation,[],[f34])).
% 1.46/0.54  fof(f34,plain,(
% 1.46/0.54    ! [X0,X1,X2] : (! [X3] : (r2_relset_1(X0,X1,X2,X3) | (k1_funct_1(X2,sK6(X0,X2,X3)) != k1_funct_1(X3,sK6(X0,X2,X3)) & m1_subset_1(sK6(X0,X2,X3),X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.46/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6])],[f17,f33])).
% 1.46/0.54  fof(f33,plain,(
% 1.46/0.54    ! [X3,X2,X0] : (? [X4] : (k1_funct_1(X2,X4) != k1_funct_1(X3,X4) & m1_subset_1(X4,X0)) => (k1_funct_1(X2,sK6(X0,X2,X3)) != k1_funct_1(X3,sK6(X0,X2,X3)) & m1_subset_1(sK6(X0,X2,X3),X0)))),
% 1.46/0.54    introduced(choice_axiom,[])).
% 1.46/0.54  fof(f17,plain,(
% 1.46/0.54    ! [X0,X1,X2] : (! [X3] : (r2_relset_1(X0,X1,X2,X3) | ? [X4] : (k1_funct_1(X2,X4) != k1_funct_1(X3,X4) & m1_subset_1(X4,X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.46/0.54    inference(flattening,[],[f16])).
% 1.46/0.54  fof(f16,plain,(
% 1.46/0.54    ! [X0,X1,X2] : (! [X3] : ((r2_relset_1(X0,X1,X2,X3) | ? [X4] : (k1_funct_1(X2,X4) != k1_funct_1(X3,X4) & m1_subset_1(X4,X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 1.46/0.54    inference(ennf_transformation,[],[f6])).
% 1.46/0.54  fof(f6,axiom,(
% 1.46/0.54    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (! [X4] : (m1_subset_1(X4,X0) => k1_funct_1(X2,X4) = k1_funct_1(X3,X4)) => r2_relset_1(X0,X1,X2,X3))))),
% 1.46/0.54    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_funct_2)).
% 1.46/0.54  % SZS output end Proof for theBenchmark
% 1.46/0.54  % (28129)------------------------------
% 1.46/0.54  % (28129)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.46/0.54  % (28129)Termination reason: Refutation
% 1.46/0.54  
% 1.46/0.54  % (28129)Memory used [KB]: 6268
% 1.46/0.54  % (28129)Time elapsed: 0.140 s
% 1.46/0.54  % (28129)------------------------------
% 1.46/0.54  % (28129)------------------------------
% 1.46/0.54  % (28133)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 1.46/0.54  % (28121)Success in time 0.186 s
%------------------------------------------------------------------------------
