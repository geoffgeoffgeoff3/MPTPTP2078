%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:06:46 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   92 (2285 expanded)
%              Number of leaves         :   12 ( 708 expanded)
%              Depth                    :   28
%              Number of atoms          :  338 (20292 expanded)
%              Number of equality atoms :   66 (4056 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f177,plain,(
    $false ),
    inference(subsumption_resolution,[],[f170,f114])).

fof(f114,plain,(
    r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,sK2) ),
    inference(forward_demodulation,[],[f99,f93])).

fof(f93,plain,(
    k1_xboole_0 = sK0 ),
    inference(subsumption_resolution,[],[f39,f92])).

fof(f92,plain,(
    k1_xboole_0 = sK1 ),
    inference(subsumption_resolution,[],[f86,f61])).

fof(f61,plain,(
    r2_relset_1(sK0,sK1,sK2,sK2) ),
    inference(resolution,[],[f56,f34])).

fof(f34,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f12,f24,f23])).

fof(f23,plain,
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

fof(f24,plain,
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

fof(f12,plain,(
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
    inference(flattening,[],[f11])).

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
    inference(ennf_transformation,[],[f10])).

fof(f10,negated_conjecture,(
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
    inference(negated_conjecture,[],[f9])).

fof(f9,conjecture,(
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

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | r2_relset_1(X1,X2,X0,X0) ) ),
    inference(condensation,[],[f53])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => r2_relset_1(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',reflexivity_r2_relset_1)).

fof(f86,plain,
    ( ~ r2_relset_1(sK0,sK1,sK2,sK2)
    | k1_xboole_0 = sK1 ),
    inference(superposition,[],[f40,f81])).

fof(f81,plain,
    ( sK2 = sK3
    | k1_xboole_0 = sK1 ),
    inference(resolution,[],[f78,f41])).

fof(f41,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(f78,plain,
    ( v1_xboole_0(sK1)
    | sK2 = sK3 ),
    inference(subsumption_resolution,[],[f77,f67])).

fof(f67,plain,
    ( v1_partfun1(sK2,sK0)
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f66,f33])).

fof(f33,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f25])).

fof(f66,plain,
    ( v1_partfun1(sK2,sK0)
    | ~ v1_funct_2(sK2,sK0,sK1)
    | v1_xboole_0(sK1) ),
    inference(resolution,[],[f64,f34])).

fof(f64,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_partfun1(sK2,X0)
      | ~ v1_funct_2(sK2,X0,X1)
      | v1_xboole_0(X1) ) ),
    inference(resolution,[],[f43,f32])).

fof(f32,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f25])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_funct_1(X2)
      | ~ v1_funct_2(X2,X0,X1)
      | v1_partfun1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc5_funct_2)).

fof(f77,plain,
    ( sK2 = sK3
    | ~ v1_partfun1(sK2,sK0)
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f76,f32])).

fof(f76,plain,
    ( sK2 = sK3
    | ~ v1_partfun1(sK2,sK0)
    | v1_xboole_0(sK1)
    | ~ v1_funct_1(sK2) ),
    inference(subsumption_resolution,[],[f75,f34])).

fof(f75,plain,
    ( sK2 = sK3
    | ~ v1_partfun1(sK2,sK0)
    | v1_xboole_0(sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK2) ),
    inference(resolution,[],[f74,f38])).

fof(f38,plain,(
    r1_partfun1(sK2,sK3) ),
    inference(cnf_transformation,[],[f25])).

fof(f74,plain,(
    ! [X0] :
      ( ~ r1_partfun1(X0,sK3)
      | sK3 = X0
      | ~ v1_partfun1(X0,sK0)
      | v1_xboole_0(sK1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      | ~ v1_funct_1(X0) ) ),
    inference(resolution,[],[f73,f37])).

fof(f37,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f25])).

fof(f73,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
      | ~ r1_partfun1(X0,sK3)
      | sK3 = X0
      | ~ v1_partfun1(X0,sK0)
      | v1_xboole_0(sK1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
      | ~ v1_funct_1(X0) ) ),
    inference(subsumption_resolution,[],[f72,f35])).

fof(f35,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f25])).

fof(f72,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(sK1)
      | ~ r1_partfun1(X0,sK3)
      | sK3 = X0
      | ~ v1_partfun1(X0,sK0)
      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
      | ~ v1_funct_1(sK3)
      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
      | ~ v1_funct_1(X0) ) ),
    inference(resolution,[],[f71,f51])).

fof(f51,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ v1_partfun1(X3,X0)
      | ~ r1_partfun1(X2,X3)
      | X2 = X3
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
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
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

fof(f71,plain,
    ( v1_partfun1(sK3,sK0)
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f70,f36])).

fof(f36,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f25])).

fof(f70,plain,
    ( v1_partfun1(sK3,sK0)
    | ~ v1_funct_2(sK3,sK0,sK1)
    | v1_xboole_0(sK1) ),
    inference(resolution,[],[f65,f37])).

fof(f65,plain,(
    ! [X2,X3] :
      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | v1_partfun1(sK3,X2)
      | ~ v1_funct_2(sK3,X2,X3)
      | v1_xboole_0(X3) ) ),
    inference(resolution,[],[f43,f35])).

fof(f40,plain,(
    ~ r2_relset_1(sK0,sK1,sK2,sK3) ),
    inference(cnf_transformation,[],[f25])).

fof(f39,plain,
    ( k1_xboole_0 != sK1
    | k1_xboole_0 = sK0 ),
    inference(cnf_transformation,[],[f25])).

fof(f99,plain,(
    r2_relset_1(sK0,k1_xboole_0,sK2,sK2) ),
    inference(backward_demodulation,[],[f61,f92])).

fof(f170,plain,(
    ~ r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,sK2) ),
    inference(backward_demodulation,[],[f113,f163])).

fof(f163,plain,(
    sK2 = sK3 ),
    inference(duplicate_literal_removal,[],[f162])).

fof(f162,plain,
    ( sK2 = sK3
    | sK2 = sK3
    | sK2 = sK3 ),
    inference(resolution,[],[f157,f155])).

fof(f155,plain,(
    ! [X0] :
      ( r1_tarski(sK3,X0)
      | sK2 = sK3 ) ),
    inference(duplicate_literal_removal,[],[f152])).

fof(f152,plain,(
    ! [X0] :
      ( sK2 = sK3
      | r1_tarski(sK3,X0)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f151,f143])).

fof(f143,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0))
    | sK2 = sK3 ),
    inference(superposition,[],[f112,f138])).

fof(f138,plain,(
    ! [X5] :
      ( k1_xboole_0 = k2_zfmisc_1(X5,k1_xboole_0)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f108,f41])).

fof(f108,plain,(
    ! [X2] :
      ( v1_xboole_0(k2_zfmisc_1(X2,k1_xboole_0))
      | sK2 = sK3 ) ),
    inference(backward_demodulation,[],[f80,f92])).

fof(f80,plain,(
    ! [X2] :
      ( sK2 = sK3
      | v1_xboole_0(k2_zfmisc_1(X2,sK1)) ) ),
    inference(resolution,[],[f78,f44])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | v1_xboole_0(k2_zfmisc_1(X0,X1)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k2_zfmisc_1(X0,X1))
      | ~ v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
     => v1_xboole_0(k2_zfmisc_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_zfmisc_1)).

fof(f112,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) ),
    inference(forward_demodulation,[],[f97,f93])).

fof(f97,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0))) ),
    inference(backward_demodulation,[],[f37,f92])).

fof(f151,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0))
      | sK2 = sK3
      | r1_tarski(X0,X1) ) ),
    inference(resolution,[],[f107,f49])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK4(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK4(X0,X1),X1)
          & r2_hidden(sK4(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f29,f30])).

fof(f30,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK4(X0,X1),X1)
        & r2_hidden(sK4(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(f107,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | sK2 = sK3
      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) ) ),
    inference(backward_demodulation,[],[f79,f92])).

fof(f79,plain,(
    ! [X0,X1] :
      ( sK2 = sK3
      | ~ m1_subset_1(X0,k1_zfmisc_1(sK1))
      | ~ r2_hidden(X1,X0) ) ),
    inference(resolution,[],[f78,f52])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_subset)).

fof(f157,plain,(
    ! [X2] :
      ( ~ r1_tarski(X2,sK2)
      | sK2 = sK3
      | sK2 = X2 ) ),
    inference(resolution,[],[f154,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_tarski(X1,X0)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
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

fof(f154,plain,(
    ! [X1] :
      ( r1_tarski(sK2,X1)
      | sK2 = sK3 ) ),
    inference(duplicate_literal_removal,[],[f153])).

fof(f153,plain,(
    ! [X1] :
      ( sK2 = sK3
      | r1_tarski(sK2,X1)
      | sK2 = sK3 ) ),
    inference(resolution,[],[f151,f144])).

fof(f144,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_xboole_0))
    | sK2 = sK3 ),
    inference(superposition,[],[f110,f138])).

fof(f110,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) ),
    inference(forward_demodulation,[],[f95,f93])).

fof(f95,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0))) ),
    inference(backward_demodulation,[],[f34,f92])).

fof(f113,plain,(
    ~ r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,sK3) ),
    inference(forward_demodulation,[],[f98,f93])).

fof(f98,plain,(
    ~ r2_relset_1(sK0,k1_xboole_0,sK2,sK3) ),
    inference(backward_demodulation,[],[f40,f92])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.09/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.09/0.13  % Command    : run_vampire %s %d
% 0.12/0.34  % Computer   : n006.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 14:19:37 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.20/0.49  % (11844)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.20/0.50  % (11848)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.20/0.50  % (11837)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.20/0.51  % (11856)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.20/0.51  % (11844)Refutation found. Thanks to Tanya!
% 0.20/0.51  % SZS status Theorem for theBenchmark
% 0.20/0.51  % (11848)Refutation not found, incomplete strategy% (11848)------------------------------
% 0.20/0.51  % (11848)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.52  % (11864)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.20/0.52  % (11842)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.20/0.52  % (11840)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.20/0.52  % (11839)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.20/0.52  % (11857)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.20/0.52  % (11848)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.52  
% 0.20/0.52  % (11848)Memory used [KB]: 10746
% 0.20/0.52  % (11848)Time elapsed: 0.106 s
% 0.20/0.52  % (11848)------------------------------
% 0.20/0.52  % (11848)------------------------------
% 0.20/0.52  % SZS output start Proof for theBenchmark
% 0.20/0.52  fof(f177,plain,(
% 0.20/0.52    $false),
% 0.20/0.52    inference(subsumption_resolution,[],[f170,f114])).
% 0.20/0.52  fof(f114,plain,(
% 0.20/0.52    r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,sK2)),
% 0.20/0.52    inference(forward_demodulation,[],[f99,f93])).
% 0.20/0.52  fof(f93,plain,(
% 0.20/0.52    k1_xboole_0 = sK0),
% 0.20/0.52    inference(subsumption_resolution,[],[f39,f92])).
% 0.20/0.52  fof(f92,plain,(
% 0.20/0.52    k1_xboole_0 = sK1),
% 0.20/0.52    inference(subsumption_resolution,[],[f86,f61])).
% 0.20/0.52  fof(f61,plain,(
% 0.20/0.52    r2_relset_1(sK0,sK1,sK2,sK2)),
% 0.20/0.52    inference(resolution,[],[f56,f34])).
% 0.20/0.52  fof(f34,plain,(
% 0.20/0.52    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f25,plain,(
% 0.20/0.52    (~r2_relset_1(sK0,sK1,sK2,sK3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 0.20/0.52    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f12,f24,f23])).
% 0.20/0.52  fof(f23,plain,(
% 0.20/0.52    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (~r2_relset_1(sK0,sK1,sK2,X3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(X3,sK0,sK1) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 0.20/0.52    introduced(choice_axiom,[])).
% 0.20/0.52  fof(f24,plain,(
% 0.20/0.52    ? [X3] : (~r2_relset_1(sK0,sK1,sK2,X3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(X3,sK0,sK1) & v1_funct_1(X3)) => (~r2_relset_1(sK0,sK1,sK2,sK3) & (k1_xboole_0 = sK0 | k1_xboole_0 != sK1) & r1_partfun1(sK2,sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 0.20/0.52    introduced(choice_axiom,[])).
% 0.20/0.52  fof(f12,plain,(
% 0.20/0.52    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 0.20/0.52    inference(flattening,[],[f11])).
% 0.20/0.52  fof(f11,plain,(
% 0.20/0.52    ? [X0,X1,X2] : (? [X3] : (((~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1)) & r1_partfun1(X2,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 0.20/0.52    inference(ennf_transformation,[],[f10])).
% 0.20/0.52  fof(f10,negated_conjecture,(
% 0.20/0.52    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 0.20/0.52    inference(negated_conjecture,[],[f9])).
% 0.20/0.52  fof(f9,conjecture,(
% 0.20/0.52    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t142_funct_2)).
% 0.20/0.52  fof(f56,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | r2_relset_1(X1,X2,X0,X0)) )),
% 0.20/0.52    inference(condensation,[],[f53])).
% 0.20/0.52  fof(f53,plain,(
% 0.20/0.52    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.20/0.52    inference(cnf_transformation,[],[f22])).
% 0.20/0.52  fof(f22,plain,(
% 0.20/0.52    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.20/0.52    inference(flattening,[],[f21])).
% 0.20/0.52  fof(f21,plain,(
% 0.20/0.52    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 0.20/0.52    inference(ennf_transformation,[],[f6])).
% 0.20/0.52  fof(f6,axiom,(
% 0.20/0.52    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => r2_relset_1(X0,X1,X2,X2))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',reflexivity_r2_relset_1)).
% 0.20/0.52  fof(f86,plain,(
% 0.20/0.52    ~r2_relset_1(sK0,sK1,sK2,sK2) | k1_xboole_0 = sK1),
% 0.20/0.52    inference(superposition,[],[f40,f81])).
% 0.20/0.52  fof(f81,plain,(
% 0.20/0.52    sK2 = sK3 | k1_xboole_0 = sK1),
% 0.20/0.52    inference(resolution,[],[f78,f41])).
% 0.20/0.52  fof(f41,plain,(
% 0.20/0.52    ( ! [X0] : (~v1_xboole_0(X0) | k1_xboole_0 = X0) )),
% 0.20/0.52    inference(cnf_transformation,[],[f13])).
% 0.20/0.52  fof(f13,plain,(
% 0.20/0.52    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 0.20/0.52    inference(ennf_transformation,[],[f2])).
% 0.20/0.52  fof(f2,axiom,(
% 0.20/0.52    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).
% 0.20/0.52  fof(f78,plain,(
% 0.20/0.52    v1_xboole_0(sK1) | sK2 = sK3),
% 0.20/0.52    inference(subsumption_resolution,[],[f77,f67])).
% 0.20/0.52  fof(f67,plain,(
% 0.20/0.52    v1_partfun1(sK2,sK0) | v1_xboole_0(sK1)),
% 0.20/0.52    inference(subsumption_resolution,[],[f66,f33])).
% 0.20/0.52  fof(f33,plain,(
% 0.20/0.52    v1_funct_2(sK2,sK0,sK1)),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f66,plain,(
% 0.20/0.52    v1_partfun1(sK2,sK0) | ~v1_funct_2(sK2,sK0,sK1) | v1_xboole_0(sK1)),
% 0.20/0.52    inference(resolution,[],[f64,f34])).
% 0.20/0.52  fof(f64,plain,(
% 0.20/0.52    ( ! [X0,X1] : (~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_partfun1(sK2,X0) | ~v1_funct_2(sK2,X0,X1) | v1_xboole_0(X1)) )),
% 0.20/0.52    inference(resolution,[],[f43,f32])).
% 0.20/0.52  fof(f32,plain,(
% 0.20/0.52    v1_funct_1(sK2)),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f43,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (~v1_funct_1(X2) | ~v1_funct_2(X2,X0,X1) | v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f15])).
% 0.20/0.52  fof(f15,plain,(
% 0.20/0.52    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 0.20/0.52    inference(flattening,[],[f14])).
% 0.20/0.52  fof(f14,plain,(
% 0.20/0.52    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 0.20/0.52    inference(ennf_transformation,[],[f7])).
% 0.20/0.52  fof(f7,axiom,(
% 0.20/0.52    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc5_funct_2)).
% 0.20/0.52  fof(f77,plain,(
% 0.20/0.52    sK2 = sK3 | ~v1_partfun1(sK2,sK0) | v1_xboole_0(sK1)),
% 0.20/0.52    inference(subsumption_resolution,[],[f76,f32])).
% 0.20/0.52  fof(f76,plain,(
% 0.20/0.52    sK2 = sK3 | ~v1_partfun1(sK2,sK0) | v1_xboole_0(sK1) | ~v1_funct_1(sK2)),
% 0.20/0.52    inference(subsumption_resolution,[],[f75,f34])).
% 0.20/0.52  fof(f75,plain,(
% 0.20/0.52    sK2 = sK3 | ~v1_partfun1(sK2,sK0) | v1_xboole_0(sK1) | ~m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) | ~v1_funct_1(sK2)),
% 0.20/0.52    inference(resolution,[],[f74,f38])).
% 0.20/0.52  fof(f38,plain,(
% 0.20/0.52    r1_partfun1(sK2,sK3)),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f74,plain,(
% 0.20/0.52    ( ! [X0] : (~r1_partfun1(X0,sK3) | sK3 = X0 | ~v1_partfun1(X0,sK0) | v1_xboole_0(sK1) | ~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) | ~v1_funct_1(X0)) )),
% 0.20/0.52    inference(resolution,[],[f73,f37])).
% 0.20/0.52  fof(f37,plain,(
% 0.20/0.52    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f73,plain,(
% 0.20/0.52    ( ! [X0,X1] : (~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,X1))) | ~r1_partfun1(X0,sK3) | sK3 = X0 | ~v1_partfun1(X0,sK0) | v1_xboole_0(sK1) | ~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK0,X1))) | ~v1_funct_1(X0)) )),
% 0.20/0.52    inference(subsumption_resolution,[],[f72,f35])).
% 0.20/0.52  fof(f35,plain,(
% 0.20/0.52    v1_funct_1(sK3)),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f72,plain,(
% 0.20/0.52    ( ! [X0,X1] : (v1_xboole_0(sK1) | ~r1_partfun1(X0,sK3) | sK3 = X0 | ~v1_partfun1(X0,sK0) | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,X1))) | ~v1_funct_1(sK3) | ~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK0,X1))) | ~v1_funct_1(X0)) )),
% 0.20/0.52    inference(resolution,[],[f71,f51])).
% 0.20/0.52  fof(f51,plain,(
% 0.20/0.52    ( ! [X2,X0,X3,X1] : (~v1_partfun1(X3,X0) | ~r1_partfun1(X2,X3) | X2 = X3 | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f19])).
% 0.20/0.52  fof(f19,plain,(
% 0.20/0.52    ! [X0,X1,X2] : (! [X3] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 0.20/0.52    inference(flattening,[],[f18])).
% 0.20/0.52  fof(f18,plain,(
% 0.20/0.52    ! [X0,X1,X2] : (! [X3] : ((X2 = X3 | (~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 0.20/0.52    inference(ennf_transformation,[],[f8])).
% 0.20/0.52  fof(f8,axiom,(
% 0.20/0.52    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ((r1_partfun1(X2,X3) & v1_partfun1(X3,X0) & v1_partfun1(X2,X0)) => X2 = X3)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_partfun1)).
% 0.20/0.52  fof(f71,plain,(
% 0.20/0.52    v1_partfun1(sK3,sK0) | v1_xboole_0(sK1)),
% 0.20/0.52    inference(subsumption_resolution,[],[f70,f36])).
% 0.20/0.52  fof(f36,plain,(
% 0.20/0.52    v1_funct_2(sK3,sK0,sK1)),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f70,plain,(
% 0.20/0.52    v1_partfun1(sK3,sK0) | ~v1_funct_2(sK3,sK0,sK1) | v1_xboole_0(sK1)),
% 0.20/0.52    inference(resolution,[],[f65,f37])).
% 0.20/0.52  fof(f65,plain,(
% 0.20/0.52    ( ! [X2,X3] : (~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | v1_partfun1(sK3,X2) | ~v1_funct_2(sK3,X2,X3) | v1_xboole_0(X3)) )),
% 0.20/0.52    inference(resolution,[],[f43,f35])).
% 0.20/0.52  fof(f40,plain,(
% 0.20/0.52    ~r2_relset_1(sK0,sK1,sK2,sK3)),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f39,plain,(
% 0.20/0.52    k1_xboole_0 != sK1 | k1_xboole_0 = sK0),
% 0.20/0.52    inference(cnf_transformation,[],[f25])).
% 0.20/0.52  fof(f99,plain,(
% 0.20/0.52    r2_relset_1(sK0,k1_xboole_0,sK2,sK2)),
% 0.20/0.52    inference(backward_demodulation,[],[f61,f92])).
% 0.20/0.52  fof(f170,plain,(
% 0.20/0.52    ~r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,sK2)),
% 0.20/0.52    inference(backward_demodulation,[],[f113,f163])).
% 0.20/0.52  fof(f163,plain,(
% 0.20/0.52    sK2 = sK3),
% 0.20/0.52    inference(duplicate_literal_removal,[],[f162])).
% 0.20/0.52  fof(f162,plain,(
% 0.20/0.52    sK2 = sK3 | sK2 = sK3 | sK2 = sK3),
% 0.20/0.52    inference(resolution,[],[f157,f155])).
% 0.20/0.52  fof(f155,plain,(
% 0.20/0.52    ( ! [X0] : (r1_tarski(sK3,X0) | sK2 = sK3) )),
% 0.20/0.52    inference(duplicate_literal_removal,[],[f152])).
% 0.20/0.52  fof(f152,plain,(
% 0.20/0.52    ( ! [X0] : (sK2 = sK3 | r1_tarski(sK3,X0) | sK2 = sK3) )),
% 0.20/0.52    inference(resolution,[],[f151,f143])).
% 0.20/0.52  fof(f143,plain,(
% 0.20/0.52    m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) | sK2 = sK3),
% 0.20/0.52    inference(superposition,[],[f112,f138])).
% 0.20/0.52  fof(f138,plain,(
% 0.20/0.52    ( ! [X5] : (k1_xboole_0 = k2_zfmisc_1(X5,k1_xboole_0) | sK2 = sK3) )),
% 0.20/0.52    inference(resolution,[],[f108,f41])).
% 0.20/0.52  fof(f108,plain,(
% 0.20/0.52    ( ! [X2] : (v1_xboole_0(k2_zfmisc_1(X2,k1_xboole_0)) | sK2 = sK3) )),
% 0.20/0.52    inference(backward_demodulation,[],[f80,f92])).
% 0.20/0.52  fof(f80,plain,(
% 0.20/0.52    ( ! [X2] : (sK2 = sK3 | v1_xboole_0(k2_zfmisc_1(X2,sK1))) )),
% 0.20/0.52    inference(resolution,[],[f78,f44])).
% 0.20/0.52  fof(f44,plain,(
% 0.20/0.52    ( ! [X0,X1] : (~v1_xboole_0(X1) | v1_xboole_0(k2_zfmisc_1(X0,X1))) )),
% 0.20/0.52    inference(cnf_transformation,[],[f16])).
% 0.20/0.52  fof(f16,plain,(
% 0.20/0.52    ! [X0,X1] : (v1_xboole_0(k2_zfmisc_1(X0,X1)) | ~v1_xboole_0(X1))),
% 0.20/0.52    inference(ennf_transformation,[],[f4])).
% 0.20/0.52  fof(f4,axiom,(
% 0.20/0.52    ! [X0,X1] : (v1_xboole_0(X1) => v1_xboole_0(k2_zfmisc_1(X0,X1)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_zfmisc_1)).
% 0.20/0.52  fof(f112,plain,(
% 0.20/0.52    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)))),
% 0.20/0.52    inference(forward_demodulation,[],[f97,f93])).
% 0.20/0.52  fof(f97,plain,(
% 0.20/0.52    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)))),
% 0.20/0.52    inference(backward_demodulation,[],[f37,f92])).
% 0.20/0.52  fof(f151,plain,(
% 0.20/0.52    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) | sK2 = sK3 | r1_tarski(X0,X1)) )),
% 0.20/0.52    inference(resolution,[],[f107,f49])).
% 0.20/0.52  fof(f49,plain,(
% 0.20/0.52    ( ! [X0,X1] : (r2_hidden(sK4(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f31])).
% 0.20/0.52  fof(f31,plain,(
% 0.20/0.52    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK4(X0,X1),X1) & r2_hidden(sK4(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 0.20/0.52    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f29,f30])).
% 0.20/0.52  fof(f30,plain,(
% 0.20/0.52    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK4(X0,X1),X1) & r2_hidden(sK4(X0,X1),X0)))),
% 0.20/0.52    introduced(choice_axiom,[])).
% 0.20/0.52  fof(f29,plain,(
% 0.20/0.52    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 0.20/0.52    inference(rectify,[],[f28])).
% 0.20/0.52  fof(f28,plain,(
% 0.20/0.52    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 0.20/0.52    inference(nnf_transformation,[],[f17])).
% 0.20/0.52  fof(f17,plain,(
% 0.20/0.52    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.20/0.52    inference(ennf_transformation,[],[f1])).
% 0.20/0.52  fof(f1,axiom,(
% 0.20/0.52    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).
% 0.20/0.52  fof(f107,plain,(
% 0.20/0.52    ( ! [X0,X1] : (~r2_hidden(X1,X0) | sK2 = sK3 | ~m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0))) )),
% 0.20/0.52    inference(backward_demodulation,[],[f79,f92])).
% 0.20/0.52  fof(f79,plain,(
% 0.20/0.52    ( ! [X0,X1] : (sK2 = sK3 | ~m1_subset_1(X0,k1_zfmisc_1(sK1)) | ~r2_hidden(X1,X0)) )),
% 0.20/0.52    inference(resolution,[],[f78,f52])).
% 0.20/0.52  fof(f52,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f20])).
% 0.20/0.52  fof(f20,plain,(
% 0.20/0.52    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 0.20/0.52    inference(ennf_transformation,[],[f5])).
% 0.20/0.52  fof(f5,axiom,(
% 0.20/0.52    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_subset)).
% 0.20/0.52  fof(f157,plain,(
% 0.20/0.52    ( ! [X2] : (~r1_tarski(X2,sK2) | sK2 = sK3 | sK2 = X2) )),
% 0.20/0.52    inference(resolution,[],[f154,f47])).
% 0.20/0.52  fof(f47,plain,(
% 0.20/0.52    ( ! [X0,X1] : (~r1_tarski(X0,X1) | ~r1_tarski(X1,X0) | X0 = X1) )),
% 0.20/0.52    inference(cnf_transformation,[],[f27])).
% 0.20/0.52  fof(f27,plain,(
% 0.20/0.52    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.20/0.52    inference(flattening,[],[f26])).
% 0.20/0.52  fof(f26,plain,(
% 0.20/0.52    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.20/0.52    inference(nnf_transformation,[],[f3])).
% 0.20/0.52  fof(f3,axiom,(
% 0.20/0.52    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 0.20/0.52  fof(f154,plain,(
% 0.20/0.52    ( ! [X1] : (r1_tarski(sK2,X1) | sK2 = sK3) )),
% 0.20/0.52    inference(duplicate_literal_removal,[],[f153])).
% 0.20/0.52  fof(f153,plain,(
% 0.20/0.52    ( ! [X1] : (sK2 = sK3 | r1_tarski(sK2,X1) | sK2 = sK3) )),
% 0.20/0.52    inference(resolution,[],[f151,f144])).
% 0.20/0.52  fof(f144,plain,(
% 0.20/0.52    m1_subset_1(sK2,k1_zfmisc_1(k1_xboole_0)) | sK2 = sK3),
% 0.20/0.52    inference(superposition,[],[f110,f138])).
% 0.20/0.52  fof(f110,plain,(
% 0.20/0.52    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)))),
% 0.20/0.52    inference(forward_demodulation,[],[f95,f93])).
% 0.20/0.52  fof(f95,plain,(
% 0.20/0.52    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,k1_xboole_0)))),
% 0.20/0.52    inference(backward_demodulation,[],[f34,f92])).
% 0.20/0.52  fof(f113,plain,(
% 0.20/0.52    ~r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,sK3)),
% 0.20/0.52    inference(forward_demodulation,[],[f98,f93])).
% 0.20/0.52  fof(f98,plain,(
% 0.20/0.52    ~r2_relset_1(sK0,k1_xboole_0,sK2,sK3)),
% 0.20/0.52    inference(backward_demodulation,[],[f40,f92])).
% 0.20/0.52  % SZS output end Proof for theBenchmark
% 0.20/0.52  % (11844)------------------------------
% 0.20/0.52  % (11844)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.52  % (11844)Termination reason: Refutation
% 0.20/0.52  
% 0.20/0.52  % (11844)Memory used [KB]: 6268
% 0.20/0.52  % (11844)Time elapsed: 0.103 s
% 0.20/0.52  % (11844)------------------------------
% 0.20/0.52  % (11844)------------------------------
% 0.20/0.52  % (11841)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.20/0.52  % (11852)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.20/0.52  % (11852)Refutation not found, incomplete strategy% (11852)------------------------------
% 0.20/0.52  % (11852)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.52  % (11836)Success in time 0.171 s
%------------------------------------------------------------------------------
