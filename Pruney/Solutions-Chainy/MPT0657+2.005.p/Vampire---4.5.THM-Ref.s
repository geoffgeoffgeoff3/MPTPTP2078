%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:53:06 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  117 (1410 expanded)
%              Number of leaves         :    9 ( 257 expanded)
%              Depth                    :   28
%              Number of atoms          :  335 (7384 expanded)
%              Number of equality atoms :  116 (2674 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f921,plain,(
    $false ),
    inference(subsumption_resolution,[],[f920,f36])).

fof(f36,plain,(
    sK1 != k2_funct_1(sK0) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_funct_1(X0) != X1
          & k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0))
          & k1_relat_1(X0) = k2_relat_1(X1)
          & v2_funct_1(X0)
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_funct_1(X0) != X1
          & k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0))
          & k1_relat_1(X0) = k2_relat_1(X1)
          & v2_funct_1(X0)
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0] :
        ( ( v1_funct_1(X0)
          & v1_relat_1(X0) )
       => ! [X1] :
            ( ( v1_funct_1(X1)
              & v1_relat_1(X1) )
           => ( ( k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0))
                & k1_relat_1(X0) = k2_relat_1(X1)
                & v2_funct_1(X0) )
             => k2_funct_1(X0) = X1 ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0))
              & k1_relat_1(X0) = k2_relat_1(X1)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_funct_1)).

fof(f920,plain,(
    sK1 = k2_funct_1(sK0) ),
    inference(backward_demodulation,[],[f464,f919])).

fof(f919,plain,(
    sK1 = k5_relat_1(sK1,k6_relat_1(k2_relat_1(sK1))) ),
    inference(backward_demodulation,[],[f904,f913])).

fof(f913,plain,(
    k6_relat_1(k2_relat_1(sK1)) = k5_relat_1(k2_funct_1(sK1),sK1) ),
    inference(subsumption_resolution,[],[f912,f32])).

fof(f32,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f16])).

fof(f912,plain,
    ( ~ v1_funct_1(sK1)
    | k6_relat_1(k2_relat_1(sK1)) = k5_relat_1(k2_funct_1(sK1),sK1) ),
    inference(subsumption_resolution,[],[f887,f31])).

fof(f31,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f16])).

fof(f887,plain,
    ( ~ v1_relat_1(sK1)
    | ~ v1_funct_1(sK1)
    | k6_relat_1(k2_relat_1(sK1)) = k5_relat_1(k2_funct_1(sK1),sK1) ),
    inference(resolution,[],[f855,f51])).

fof(f51,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v2_funct_1(X0)
      | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f25])).

fof(f25,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_funct_1)).

fof(f855,plain,(
    v2_funct_1(sK1) ),
    inference(resolution,[],[f854,f835])).

fof(f835,plain,
    ( ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(sK1) ),
    inference(subsumption_resolution,[],[f834,f34])).

fof(f34,plain,(
    k1_relat_1(sK0) = k2_relat_1(sK1) ),
    inference(cnf_transformation,[],[f16])).

fof(f834,plain,
    ( k1_relat_1(sK0) != k2_relat_1(sK1)
    | ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(sK1) ),
    inference(forward_demodulation,[],[f833,f821])).

fof(f821,plain,(
    sK0 = k5_relat_1(sK0,k5_relat_1(sK1,sK0)) ),
    inference(forward_demodulation,[],[f820,f129])).

fof(f129,plain,(
    sK0 = k5_relat_1(k6_relat_1(k2_relat_1(sK1)),sK0) ),
    inference(forward_demodulation,[],[f111,f34])).

fof(f111,plain,(
    sK0 = k5_relat_1(k6_relat_1(k1_relat_1(sK0)),sK0) ),
    inference(resolution,[],[f37,f43])).

fof(f43,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_relat_1)).

fof(f37,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f16])).

fof(f820,plain,(
    k5_relat_1(k6_relat_1(k2_relat_1(sK1)),sK0) = k5_relat_1(sK0,k5_relat_1(sK1,sK0)) ),
    inference(forward_demodulation,[],[f819,f102])).

fof(f102,plain,(
    k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k2_relat_1(sK1)) ),
    inference(forward_demodulation,[],[f101,f34])).

fof(f101,plain,(
    k6_relat_1(k1_relat_1(sK0)) = k5_relat_1(sK0,k2_funct_1(sK0)) ),
    inference(subsumption_resolution,[],[f100,f38])).

fof(f38,plain,(
    v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f16])).

fof(f100,plain,
    ( ~ v1_funct_1(sK0)
    | k6_relat_1(k1_relat_1(sK0)) = k5_relat_1(sK0,k2_funct_1(sK0)) ),
    inference(subsumption_resolution,[],[f96,f37])).

fof(f96,plain,
    ( ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k6_relat_1(k1_relat_1(sK0)) = k5_relat_1(sK0,k2_funct_1(sK0)) ),
    inference(resolution,[],[f33,f50])).

fof(f50,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v2_funct_1(X0)
      | k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f33,plain,(
    v2_funct_1(sK0) ),
    inference(cnf_transformation,[],[f16])).

fof(f819,plain,(
    k5_relat_1(sK0,k5_relat_1(sK1,sK0)) = k5_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)),sK0) ),
    inference(forward_demodulation,[],[f814,f105])).

fof(f105,plain,(
    k5_relat_1(sK1,sK0) = k5_relat_1(k2_funct_1(sK0),sK0) ),
    inference(forward_demodulation,[],[f104,f35])).

fof(f35,plain,(
    k5_relat_1(sK1,sK0) = k6_relat_1(k2_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f16])).

fof(f104,plain,(
    k6_relat_1(k2_relat_1(sK0)) = k5_relat_1(k2_funct_1(sK0),sK0) ),
    inference(subsumption_resolution,[],[f103,f38])).

fof(f103,plain,
    ( ~ v1_funct_1(sK0)
    | k6_relat_1(k2_relat_1(sK0)) = k5_relat_1(k2_funct_1(sK0),sK0) ),
    inference(subsumption_resolution,[],[f97,f37])).

fof(f97,plain,
    ( ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k6_relat_1(k2_relat_1(sK0)) = k5_relat_1(k2_funct_1(sK0),sK0) ),
    inference(resolution,[],[f33,f51])).

fof(f814,plain,(
    k5_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)),sK0) = k5_relat_1(sK0,k5_relat_1(k2_funct_1(sK0),sK0)) ),
    inference(resolution,[],[f808,f144])).

fof(f144,plain,(
    v1_relat_1(k2_funct_1(sK0)) ),
    inference(subsumption_resolution,[],[f132,f37])).

fof(f132,plain,
    ( ~ v1_relat_1(sK0)
    | v1_relat_1(k2_funct_1(sK0)) ),
    inference(resolution,[],[f38,f46])).

fof(f46,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | v1_relat_1(k2_funct_1(X0)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f21])).

fof(f21,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(f808,plain,(
    ! [X8] :
      ( ~ v1_relat_1(X8)
      | k5_relat_1(k5_relat_1(sK0,X8),sK0) = k5_relat_1(sK0,k5_relat_1(X8,sK0)) ) ),
    inference(resolution,[],[f116,f37])).

fof(f116,plain,(
    ! [X6,X7] :
      ( ~ v1_relat_1(X6)
      | ~ v1_relat_1(X7)
      | k5_relat_1(k5_relat_1(X6,X7),sK0) = k5_relat_1(X6,k5_relat_1(X7,sK0)) ) ),
    inference(resolution,[],[f37,f45])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X0)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X2)
      | k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_relat_1)).

fof(f833,plain,
    ( ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(subsumption_resolution,[],[f832,f38])).

fof(f832,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(forward_demodulation,[],[f831,f821])).

fof(f831,plain,
    ( ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(subsumption_resolution,[],[f823,f37])).

fof(f823,plain,
    ( ~ v1_relat_1(sK0)
    | ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(backward_demodulation,[],[f505,f821])).

fof(f505,plain,
    ( ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | ~ v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(subsumption_resolution,[],[f504,f32])).

fof(f504,plain,
    ( ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | ~ v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | ~ v1_funct_1(sK1)
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(subsumption_resolution,[],[f500,f31])).

fof(f500,plain,
    ( ~ v2_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | ~ v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | ~ v1_relat_1(sK1)
    | ~ v1_funct_1(sK1)
    | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0)))
    | v2_funct_1(sK1) ),
    inference(superposition,[],[f52,f462])).

fof(f462,plain,(
    k5_relat_1(sK1,sK0) = k5_relat_1(sK1,k5_relat_1(sK0,k5_relat_1(sK1,sK0))) ),
    inference(forward_demodulation,[],[f454,f228])).

fof(f228,plain,(
    k5_relat_1(sK1,sK0) = k5_relat_1(k5_relat_1(sK1,sK0),k5_relat_1(sK1,sK0)) ),
    inference(forward_demodulation,[],[f227,f35])).

fof(f227,plain,(
    k5_relat_1(sK1,sK0) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k5_relat_1(sK1,sK0)) ),
    inference(forward_demodulation,[],[f209,f208])).

fof(f208,plain,(
    k2_relat_1(sK0) = k1_relat_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f207,f199])).

fof(f199,plain,(
    v1_relat_1(k5_relat_1(sK1,sK0)) ),
    inference(superposition,[],[f41,f35])).

fof(f41,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_funct_1)).

fof(f207,plain,
    ( ~ v1_relat_1(k5_relat_1(sK1,sK0))
    | k2_relat_1(sK0) = k1_relat_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f202,f200])).

fof(f200,plain,(
    v1_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(superposition,[],[f42,f35])).

fof(f42,plain,(
    ! [X0] : v1_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f202,plain,
    ( ~ v1_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(k5_relat_1(sK1,sK0))
    | k2_relat_1(sK0) = k1_relat_1(k5_relat_1(sK1,sK0)) ),
    inference(superposition,[],[f60,f35])).

fof(f60,plain,(
    ! [X0] :
      ( ~ v1_relat_1(k6_relat_1(X0))
      | ~ v1_funct_1(k6_relat_1(X0))
      | k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    inference(equality_resolution,[],[f57])).

fof(f57,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | k1_relat_1(X1) = X0
      | k6_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k6_relat_1(X0) = X1
      <=> ( ! [X2] :
              ( k1_funct_1(X1,X2) = X2
              | ~ r2_hidden(X2,X0) )
          & k1_relat_1(X1) = X0 ) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k6_relat_1(X0) = X1
      <=> ( ! [X2] :
              ( k1_funct_1(X1,X2) = X2
              | ~ r2_hidden(X2,X0) )
          & k1_relat_1(X1) = X0 ) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( k6_relat_1(X0) = X1
      <=> ( ! [X2] :
              ( r2_hidden(X2,X0)
             => k1_funct_1(X1,X2) = X2 )
          & k1_relat_1(X1) = X0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t34_funct_1)).

fof(f209,plain,(
    k5_relat_1(sK1,sK0) = k5_relat_1(k6_relat_1(k1_relat_1(k5_relat_1(sK1,sK0))),k5_relat_1(sK1,sK0)) ),
    inference(resolution,[],[f199,f43])).

fof(f454,plain,(
    k5_relat_1(k5_relat_1(sK1,sK0),k5_relat_1(sK1,sK0)) = k5_relat_1(sK1,k5_relat_1(sK0,k5_relat_1(sK1,sK0))) ),
    inference(resolution,[],[f452,f199])).

fof(f452,plain,(
    ! [X8] :
      ( ~ v1_relat_1(X8)
      | k5_relat_1(k5_relat_1(sK1,sK0),X8) = k5_relat_1(sK1,k5_relat_1(sK0,X8)) ) ),
    inference(resolution,[],[f67,f37])).

fof(f67,plain,(
    ! [X2,X3] :
      ( ~ v1_relat_1(X2)
      | ~ v1_relat_1(X3)
      | k5_relat_1(k5_relat_1(sK1,X2),X3) = k5_relat_1(sK1,k5_relat_1(X2,X3)) ) ),
    inference(resolution,[],[f31,f45])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v2_funct_1(k5_relat_1(X1,X0))
      | k1_relat_1(X0) != k2_relat_1(X1)
      | v2_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_funct_1(X0)
            & v2_funct_1(X1) )
          | k1_relat_1(X0) != k2_relat_1(X1)
          | ~ v2_funct_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_funct_1(X0)
            & v2_funct_1(X1) )
          | k1_relat_1(X0) != k2_relat_1(X1)
          | ~ v2_funct_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k1_relat_1(X0) = k2_relat_1(X1)
              & v2_funct_1(k5_relat_1(X1,X0)) )
           => ( v2_funct_1(X0)
              & v2_funct_1(X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_funct_1)).

fof(f854,plain,(
    v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f853,f208])).

fof(f853,plain,
    ( k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f852,f38])).

fof(f852,plain,
    ( ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f851,f37])).

fof(f851,plain,
    ( ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f850,f200])).

fof(f850,plain,
    ( ~ v1_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f849,f199])).

fof(f849,plain,
    ( ~ v1_relat_1(k5_relat_1(sK1,sK0))
    | ~ v1_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(subsumption_resolution,[],[f847,f33])).

fof(f847,plain,
    ( ~ v2_funct_1(sK0)
    | ~ v1_relat_1(k5_relat_1(sK1,sK0))
    | ~ v1_funct_1(k5_relat_1(sK1,sK0))
    | ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0))
    | v2_funct_1(k5_relat_1(sK1,sK0)) ),
    inference(superposition,[],[f53,f821])).

fof(f53,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v2_funct_1(k5_relat_1(X1,X0))
      | k1_relat_1(X0) != k2_relat_1(X1)
      | v2_funct_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f904,plain,(
    sK1 = k5_relat_1(sK1,k5_relat_1(k2_funct_1(sK1),sK1)) ),
    inference(forward_demodulation,[],[f897,f64])).

fof(f64,plain,(
    sK1 = k5_relat_1(k6_relat_1(k1_relat_1(sK1)),sK1) ),
    inference(resolution,[],[f31,f43])).

fof(f897,plain,(
    k5_relat_1(k6_relat_1(k1_relat_1(sK1)),sK1) = k5_relat_1(sK1,k5_relat_1(k2_funct_1(sK1),sK1)) ),
    inference(backward_demodulation,[],[f628,f891])).

fof(f891,plain,(
    k6_relat_1(k1_relat_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1)) ),
    inference(subsumption_resolution,[],[f890,f32])).

fof(f890,plain,
    ( ~ v1_funct_1(sK1)
    | k6_relat_1(k1_relat_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1)) ),
    inference(subsumption_resolution,[],[f886,f31])).

fof(f886,plain,
    ( ~ v1_relat_1(sK1)
    | ~ v1_funct_1(sK1)
    | k6_relat_1(k1_relat_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1)) ),
    inference(resolution,[],[f855,f50])).

fof(f628,plain,(
    k5_relat_1(k5_relat_1(sK1,k2_funct_1(sK1)),sK1) = k5_relat_1(sK1,k5_relat_1(k2_funct_1(sK1),sK1)) ),
    inference(resolution,[],[f598,f94])).

fof(f94,plain,(
    v1_relat_1(k2_funct_1(sK1)) ),
    inference(subsumption_resolution,[],[f82,f31])).

fof(f82,plain,
    ( ~ v1_relat_1(sK1)
    | v1_relat_1(k2_funct_1(sK1)) ),
    inference(resolution,[],[f32,f46])).

fof(f598,plain,(
    ! [X9] :
      ( ~ v1_relat_1(X9)
      | k5_relat_1(k5_relat_1(sK1,X9),sK1) = k5_relat_1(sK1,k5_relat_1(X9,sK1)) ) ),
    inference(resolution,[],[f69,f31])).

fof(f69,plain,(
    ! [X6,X7] :
      ( ~ v1_relat_1(X6)
      | ~ v1_relat_1(X7)
      | k5_relat_1(k5_relat_1(X6,X7),sK1) = k5_relat_1(X6,k5_relat_1(X7,sK1)) ) ),
    inference(resolution,[],[f31,f45])).

fof(f464,plain,(
    k2_funct_1(sK0) = k5_relat_1(sK1,k6_relat_1(k2_relat_1(sK1))) ),
    inference(forward_demodulation,[],[f463,f185])).

fof(f185,plain,(
    k2_funct_1(sK0) = k5_relat_1(k5_relat_1(sK1,sK0),k2_funct_1(sK0)) ),
    inference(forward_demodulation,[],[f184,f35])).

fof(f184,plain,(
    k2_funct_1(sK0) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k2_funct_1(sK0)) ),
    inference(forward_demodulation,[],[f166,f107])).

fof(f107,plain,(
    k2_relat_1(sK0) = k1_relat_1(k2_funct_1(sK0)) ),
    inference(subsumption_resolution,[],[f106,f38])).

fof(f106,plain,
    ( ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) = k1_relat_1(k2_funct_1(sK0)) ),
    inference(subsumption_resolution,[],[f98,f37])).

fof(f98,plain,
    ( ~ v1_relat_1(sK0)
    | ~ v1_funct_1(sK0)
    | k2_relat_1(sK0) = k1_relat_1(k2_funct_1(sK0)) ),
    inference(resolution,[],[f33,f48])).

fof(f48,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v2_funct_1(X0)
      | k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f23])).

fof(f23,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_funct_1)).

fof(f166,plain,(
    k2_funct_1(sK0) = k5_relat_1(k6_relat_1(k1_relat_1(k2_funct_1(sK0))),k2_funct_1(sK0)) ),
    inference(resolution,[],[f144,f43])).

fof(f463,plain,(
    k5_relat_1(k5_relat_1(sK1,sK0),k2_funct_1(sK0)) = k5_relat_1(sK1,k6_relat_1(k2_relat_1(sK1))) ),
    inference(forward_demodulation,[],[f458,f102])).

fof(f458,plain,(
    k5_relat_1(k5_relat_1(sK1,sK0),k2_funct_1(sK0)) = k5_relat_1(sK1,k5_relat_1(sK0,k2_funct_1(sK0))) ),
    inference(resolution,[],[f452,f144])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n010.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:30:14 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.47  % (29917)lrs+1011_3:1_av=off:cond=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sos=all:updr=off_11 on theBenchmark
% 0.21/0.48  % (29918)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.21/0.48  % (29914)lrs+1002_8_add=large:afp=40000:afq=1.0:amm=off:anc=none:cond=on:gs=on:irw=on:nm=16:newcnf=on:nwc=1:stl=30:sos=on:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.49  % (29915)lrs+1010_2:1_aac=none:afr=on:afp=10000:afq=1.4:amm=sco:anc=none:gs=on:gsem=off:irw=on:nm=16:nwc=3:stl=30_7 on theBenchmark
% 0.21/0.49  % (29921)lrs+10_4_add=off:afp=100000:afq=2.0:anc=none:bd=off:er=known:gs=on:gsem=off:irw=on:lcm=reverse:nm=4:newcnf=on:nwc=2.5:sas=z3:stl=30:sac=on:urr=ec_only:updr=off_3 on theBenchmark
% 0.21/0.49  % (29925)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.50  % (29933)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_3 on theBenchmark
% 0.21/0.50  % (29927)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_129 on theBenchmark
% 0.21/0.50  % (29916)dis+1011_5:4_acc=model:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=off:ccuc=small_ones:cond=fast:fde=unused:gs=on:nm=2:newcnf=on:nwc=1:nicw=on:sos=on:sac=on:sp=occurrence:updr=off_9 on theBenchmark
% 0.21/0.50  % (29913)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_2 on theBenchmark
% 0.21/0.50  % (29923)dis+11_2:1_add=large:afp=4000:afq=1.4:amm=sco:anc=none:fsr=off:nm=16:nwc=1:sd=3:ss=axioms:st=1.2:sos=all:urr=ec_only:updr=off_2 on theBenchmark
% 0.21/0.50  % (29932)dis+11_3_add=off:afr=on:afp=40000:afq=2.0:amm=sco:anc=none:cond=on:nm=16:nwc=1:ss=axioms:st=5.0:sos=all:sp=reverse_arity_169 on theBenchmark
% 0.21/0.50  % (29919)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_38 on theBenchmark
% 0.21/0.50  % (29928)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_159 on theBenchmark
% 0.21/0.51  % (29920)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.21/0.51  % (29931)lrs+1002_16_av=off:cond=on:nwc=3:stl=30_83 on theBenchmark
% 0.21/0.51  % (29933)Refutation not found, incomplete strategy% (29933)------------------------------
% 0.21/0.51  % (29933)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (29933)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (29933)Memory used [KB]: 10618
% 0.21/0.51  % (29933)Time elapsed: 0.104 s
% 0.21/0.51  % (29933)------------------------------
% 0.21/0.51  % (29933)------------------------------
% 0.21/0.52  % (29922)lrs+1011_3:2_aac=none:afp=10000:afq=1.2:amm=off:anc=all:cond=on:fde=none:gs=on:gsem=on:irw=on:lma=on:nm=32:newcnf=on:nwc=3:nicw=on:stl=30:sac=on:sp=reverse_arity:urr=ec_only:updr=off:uhcvi=on_5 on theBenchmark
% 0.21/0.52  % (29929)ott+1002_7_acc=on:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bs=unit_only:gsp=input_only:gs=on:nm=2:nwc=10:sos=theory:sp=reverse_arity:urr=on:updr=off_45 on theBenchmark
% 0.21/0.52  % (29926)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_81 on theBenchmark
% 0.21/0.52  % (29924)lrs+10_50_add=large:afp=40000:afq=1.2:amm=sco:anc=none:br=off:cond=on:fsr=off:gsp=input_only:gs=on:irw=on:lma=on:nm=64:nwc=1:stl=30:sos=all:sp=reverse_arity:urr=on_21 on theBenchmark
% 0.21/0.52  % (29930)ott+1_8:1_av=off:bd=preordered:bsr=on:lma=on:nm=64:newcnf=on:nwc=1.2:uhcvi=on_180 on theBenchmark
% 0.21/0.55  % (29926)Refutation found. Thanks to Tanya!
% 0.21/0.55  % SZS status Theorem for theBenchmark
% 0.21/0.55  % SZS output start Proof for theBenchmark
% 0.21/0.55  fof(f921,plain,(
% 0.21/0.55    $false),
% 0.21/0.55    inference(subsumption_resolution,[],[f920,f36])).
% 0.21/0.55  fof(f36,plain,(
% 0.21/0.55    sK1 != k2_funct_1(sK0)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f16,plain,(
% 0.21/0.55    ? [X0] : (? [X1] : (k2_funct_1(X0) != X1 & k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0)) & k1_relat_1(X0) = k2_relat_1(X1) & v2_funct_1(X0) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 0.21/0.55    inference(flattening,[],[f15])).
% 0.21/0.55  fof(f15,plain,(
% 0.21/0.55    ? [X0] : (? [X1] : ((k2_funct_1(X0) != X1 & (k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0)) & k1_relat_1(X0) = k2_relat_1(X1) & v2_funct_1(X0))) & (v1_funct_1(X1) & v1_relat_1(X1))) & (v1_funct_1(X0) & v1_relat_1(X0)))),
% 0.21/0.55    inference(ennf_transformation,[],[f14])).
% 0.21/0.55  fof(f14,negated_conjecture,(
% 0.21/0.55    ~! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0)) & k1_relat_1(X0) = k2_relat_1(X1) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 0.21/0.55    inference(negated_conjecture,[],[f13])).
% 0.21/0.55  fof(f13,conjecture,(
% 0.21/0.55    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0)) & k1_relat_1(X0) = k2_relat_1(X1) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_funct_1)).
% 0.21/0.55  fof(f920,plain,(
% 0.21/0.55    sK1 = k2_funct_1(sK0)),
% 0.21/0.55    inference(backward_demodulation,[],[f464,f919])).
% 0.21/0.55  fof(f919,plain,(
% 0.21/0.55    sK1 = k5_relat_1(sK1,k6_relat_1(k2_relat_1(sK1)))),
% 0.21/0.55    inference(backward_demodulation,[],[f904,f913])).
% 0.21/0.55  fof(f913,plain,(
% 0.21/0.55    k6_relat_1(k2_relat_1(sK1)) = k5_relat_1(k2_funct_1(sK1),sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f912,f32])).
% 0.21/0.55  fof(f32,plain,(
% 0.21/0.55    v1_funct_1(sK1)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f912,plain,(
% 0.21/0.55    ~v1_funct_1(sK1) | k6_relat_1(k2_relat_1(sK1)) = k5_relat_1(k2_funct_1(sK1),sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f887,f31])).
% 0.21/0.55  fof(f31,plain,(
% 0.21/0.55    v1_relat_1(sK1)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f887,plain,(
% 0.21/0.55    ~v1_relat_1(sK1) | ~v1_funct_1(sK1) | k6_relat_1(k2_relat_1(sK1)) = k5_relat_1(k2_funct_1(sK1),sK1)),
% 0.21/0.55    inference(resolution,[],[f855,f51])).
% 0.21/0.55  fof(f51,plain,(
% 0.21/0.55    ( ! [X0] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | ~v2_funct_1(X0) | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))) )),
% 0.21/0.55    inference(cnf_transformation,[],[f26])).
% 0.21/0.55  fof(f26,plain,(
% 0.21/0.55    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.21/0.55    inference(flattening,[],[f25])).
% 0.21/0.55  fof(f25,plain,(
% 0.21/0.55    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 0.21/0.55    inference(ennf_transformation,[],[f12])).
% 0.21/0.55  fof(f12,axiom,(
% 0.21/0.55    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)))))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_funct_1)).
% 0.21/0.55  fof(f855,plain,(
% 0.21/0.55    v2_funct_1(sK1)),
% 0.21/0.55    inference(resolution,[],[f854,f835])).
% 0.21/0.55  fof(f835,plain,(
% 0.21/0.55    ~v2_funct_1(k5_relat_1(sK1,sK0)) | v2_funct_1(sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f834,f34])).
% 0.21/0.55  fof(f34,plain,(
% 0.21/0.55    k1_relat_1(sK0) = k2_relat_1(sK1)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f834,plain,(
% 0.21/0.55    k1_relat_1(sK0) != k2_relat_1(sK1) | ~v2_funct_1(k5_relat_1(sK1,sK0)) | v2_funct_1(sK1)),
% 0.21/0.55    inference(forward_demodulation,[],[f833,f821])).
% 0.21/0.55  fof(f821,plain,(
% 0.21/0.55    sK0 = k5_relat_1(sK0,k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(forward_demodulation,[],[f820,f129])).
% 0.21/0.55  fof(f129,plain,(
% 0.21/0.55    sK0 = k5_relat_1(k6_relat_1(k2_relat_1(sK1)),sK0)),
% 0.21/0.55    inference(forward_demodulation,[],[f111,f34])).
% 0.21/0.55  fof(f111,plain,(
% 0.21/0.55    sK0 = k5_relat_1(k6_relat_1(k1_relat_1(sK0)),sK0)),
% 0.21/0.55    inference(resolution,[],[f37,f43])).
% 0.21/0.55  fof(f43,plain,(
% 0.21/0.55    ( ! [X0] : (~v1_relat_1(X0) | k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0) )),
% 0.21/0.55    inference(cnf_transformation,[],[f17])).
% 0.21/0.55  fof(f17,plain,(
% 0.21/0.55    ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0))),
% 0.21/0.55    inference(ennf_transformation,[],[f6])).
% 0.21/0.55  fof(f6,axiom,(
% 0.21/0.55    ! [X0] : (v1_relat_1(X0) => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0)),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_relat_1)).
% 0.21/0.55  fof(f37,plain,(
% 0.21/0.55    v1_relat_1(sK0)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f820,plain,(
% 0.21/0.55    k5_relat_1(k6_relat_1(k2_relat_1(sK1)),sK0) = k5_relat_1(sK0,k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(forward_demodulation,[],[f819,f102])).
% 0.21/0.55  fof(f102,plain,(
% 0.21/0.55    k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k2_relat_1(sK1))),
% 0.21/0.55    inference(forward_demodulation,[],[f101,f34])).
% 0.21/0.55  fof(f101,plain,(
% 0.21/0.55    k6_relat_1(k1_relat_1(sK0)) = k5_relat_1(sK0,k2_funct_1(sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f100,f38])).
% 0.21/0.55  fof(f38,plain,(
% 0.21/0.55    v1_funct_1(sK0)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f100,plain,(
% 0.21/0.55    ~v1_funct_1(sK0) | k6_relat_1(k1_relat_1(sK0)) = k5_relat_1(sK0,k2_funct_1(sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f96,f37])).
% 0.21/0.55  fof(f96,plain,(
% 0.21/0.55    ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k6_relat_1(k1_relat_1(sK0)) = k5_relat_1(sK0,k2_funct_1(sK0))),
% 0.21/0.55    inference(resolution,[],[f33,f50])).
% 0.21/0.55  fof(f50,plain,(
% 0.21/0.55    ( ! [X0] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | ~v2_funct_1(X0) | k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0))) )),
% 0.21/0.55    inference(cnf_transformation,[],[f26])).
% 0.21/0.55  fof(f33,plain,(
% 0.21/0.55    v2_funct_1(sK0)),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f819,plain,(
% 0.21/0.55    k5_relat_1(sK0,k5_relat_1(sK1,sK0)) = k5_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)),sK0)),
% 0.21/0.55    inference(forward_demodulation,[],[f814,f105])).
% 0.21/0.55  fof(f105,plain,(
% 0.21/0.55    k5_relat_1(sK1,sK0) = k5_relat_1(k2_funct_1(sK0),sK0)),
% 0.21/0.55    inference(forward_demodulation,[],[f104,f35])).
% 0.21/0.55  fof(f35,plain,(
% 0.21/0.55    k5_relat_1(sK1,sK0) = k6_relat_1(k2_relat_1(sK0))),
% 0.21/0.55    inference(cnf_transformation,[],[f16])).
% 0.21/0.55  fof(f104,plain,(
% 0.21/0.55    k6_relat_1(k2_relat_1(sK0)) = k5_relat_1(k2_funct_1(sK0),sK0)),
% 0.21/0.55    inference(subsumption_resolution,[],[f103,f38])).
% 0.21/0.55  fof(f103,plain,(
% 0.21/0.55    ~v1_funct_1(sK0) | k6_relat_1(k2_relat_1(sK0)) = k5_relat_1(k2_funct_1(sK0),sK0)),
% 0.21/0.55    inference(subsumption_resolution,[],[f97,f37])).
% 0.21/0.55  fof(f97,plain,(
% 0.21/0.55    ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k6_relat_1(k2_relat_1(sK0)) = k5_relat_1(k2_funct_1(sK0),sK0)),
% 0.21/0.55    inference(resolution,[],[f33,f51])).
% 0.21/0.55  fof(f814,plain,(
% 0.21/0.55    k5_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)),sK0) = k5_relat_1(sK0,k5_relat_1(k2_funct_1(sK0),sK0))),
% 0.21/0.55    inference(resolution,[],[f808,f144])).
% 0.21/0.55  fof(f144,plain,(
% 0.21/0.55    v1_relat_1(k2_funct_1(sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f132,f37])).
% 0.21/0.55  fof(f132,plain,(
% 0.21/0.55    ~v1_relat_1(sK0) | v1_relat_1(k2_funct_1(sK0))),
% 0.21/0.55    inference(resolution,[],[f38,f46])).
% 0.21/0.55  fof(f46,plain,(
% 0.21/0.55    ( ! [X0] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | v1_relat_1(k2_funct_1(X0))) )),
% 0.21/0.55    inference(cnf_transformation,[],[f22])).
% 0.21/0.55  fof(f22,plain,(
% 0.21/0.55    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.21/0.55    inference(flattening,[],[f21])).
% 0.21/0.55  fof(f21,plain,(
% 0.21/0.55    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 0.21/0.55    inference(ennf_transformation,[],[f7])).
% 0.21/0.55  fof(f7,axiom,(
% 0.21/0.55    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_funct_1)).
% 0.21/0.55  fof(f808,plain,(
% 0.21/0.55    ( ! [X8] : (~v1_relat_1(X8) | k5_relat_1(k5_relat_1(sK0,X8),sK0) = k5_relat_1(sK0,k5_relat_1(X8,sK0))) )),
% 0.21/0.55    inference(resolution,[],[f116,f37])).
% 0.21/0.55  fof(f116,plain,(
% 0.21/0.55    ( ! [X6,X7] : (~v1_relat_1(X6) | ~v1_relat_1(X7) | k5_relat_1(k5_relat_1(X6,X7),sK0) = k5_relat_1(X6,k5_relat_1(X7,sK0))) )),
% 0.21/0.55    inference(resolution,[],[f37,f45])).
% 0.21/0.55  fof(f45,plain,(
% 0.21/0.55    ( ! [X2,X0,X1] : (~v1_relat_1(X0) | ~v1_relat_1(X1) | ~v1_relat_1(X2) | k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))) )),
% 0.21/0.55    inference(cnf_transformation,[],[f20])).
% 0.21/0.55  fof(f20,plain,(
% 0.21/0.55    ! [X0] : (! [X1] : (! [X2] : (k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 0.21/0.55    inference(ennf_transformation,[],[f5])).
% 0.21/0.55  fof(f5,axiom,(
% 0.21/0.55    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)))))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_relat_1)).
% 0.21/0.55  fof(f833,plain,(
% 0.21/0.55    ~v2_funct_1(k5_relat_1(sK1,sK0)) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f832,f38])).
% 0.21/0.55  fof(f832,plain,(
% 0.21/0.55    ~v1_funct_1(sK0) | ~v2_funct_1(k5_relat_1(sK1,sK0)) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(forward_demodulation,[],[f831,f821])).
% 0.21/0.55  fof(f831,plain,(
% 0.21/0.55    ~v2_funct_1(k5_relat_1(sK1,sK0)) | ~v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f823,f37])).
% 0.21/0.55  fof(f823,plain,(
% 0.21/0.55    ~v1_relat_1(sK0) | ~v2_funct_1(k5_relat_1(sK1,sK0)) | ~v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(backward_demodulation,[],[f505,f821])).
% 0.21/0.55  fof(f505,plain,(
% 0.21/0.55    ~v2_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | ~v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f504,f32])).
% 0.21/0.55  fof(f504,plain,(
% 0.21/0.55    ~v2_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | ~v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | ~v1_funct_1(sK1) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(subsumption_resolution,[],[f500,f31])).
% 0.21/0.55  fof(f500,plain,(
% 0.21/0.55    ~v2_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | ~v1_funct_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | ~v1_relat_1(sK1) | ~v1_funct_1(sK1) | k2_relat_1(sK1) != k1_relat_1(k5_relat_1(sK0,k5_relat_1(sK1,sK0))) | v2_funct_1(sK1)),
% 0.21/0.55    inference(superposition,[],[f52,f462])).
% 0.21/0.55  fof(f462,plain,(
% 0.21/0.55    k5_relat_1(sK1,sK0) = k5_relat_1(sK1,k5_relat_1(sK0,k5_relat_1(sK1,sK0)))),
% 0.21/0.55    inference(forward_demodulation,[],[f454,f228])).
% 0.21/0.55  fof(f228,plain,(
% 0.21/0.55    k5_relat_1(sK1,sK0) = k5_relat_1(k5_relat_1(sK1,sK0),k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(forward_demodulation,[],[f227,f35])).
% 0.21/0.55  fof(f227,plain,(
% 0.21/0.55    k5_relat_1(sK1,sK0) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(forward_demodulation,[],[f209,f208])).
% 0.21/0.55  fof(f208,plain,(
% 0.21/0.55    k2_relat_1(sK0) = k1_relat_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f207,f199])).
% 0.21/0.55  fof(f199,plain,(
% 0.21/0.55    v1_relat_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(superposition,[],[f41,f35])).
% 0.21/0.55  fof(f41,plain,(
% 0.21/0.55    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 0.21/0.55    inference(cnf_transformation,[],[f8])).
% 0.21/0.55  fof(f8,axiom,(
% 0.21/0.55    ! [X0] : (v1_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_funct_1)).
% 0.21/0.55  fof(f207,plain,(
% 0.21/0.55    ~v1_relat_1(k5_relat_1(sK1,sK0)) | k2_relat_1(sK0) = k1_relat_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f202,f200])).
% 0.21/0.55  fof(f200,plain,(
% 0.21/0.55    v1_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(superposition,[],[f42,f35])).
% 0.21/0.55  fof(f42,plain,(
% 0.21/0.55    ( ! [X0] : (v1_funct_1(k6_relat_1(X0))) )),
% 0.21/0.55    inference(cnf_transformation,[],[f8])).
% 0.21/0.55  fof(f202,plain,(
% 0.21/0.55    ~v1_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(k5_relat_1(sK1,sK0)) | k2_relat_1(sK0) = k1_relat_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(superposition,[],[f60,f35])).
% 0.21/0.55  fof(f60,plain,(
% 0.21/0.55    ( ! [X0] : (~v1_relat_1(k6_relat_1(X0)) | ~v1_funct_1(k6_relat_1(X0)) | k1_relat_1(k6_relat_1(X0)) = X0) )),
% 0.21/0.55    inference(equality_resolution,[],[f57])).
% 0.21/0.55  fof(f57,plain,(
% 0.21/0.55    ( ! [X0,X1] : (~v1_relat_1(X1) | ~v1_funct_1(X1) | k1_relat_1(X1) = X0 | k6_relat_1(X0) != X1) )),
% 0.21/0.55    inference(cnf_transformation,[],[f30])).
% 0.21/0.55  fof(f30,plain,(
% 0.21/0.55    ! [X0,X1] : ((k6_relat_1(X0) = X1 <=> (! [X2] : (k1_funct_1(X1,X2) = X2 | ~r2_hidden(X2,X0)) & k1_relat_1(X1) = X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 0.21/0.55    inference(flattening,[],[f29])).
% 0.21/0.55  fof(f29,plain,(
% 0.21/0.55    ! [X0,X1] : ((k6_relat_1(X0) = X1 <=> (! [X2] : (k1_funct_1(X1,X2) = X2 | ~r2_hidden(X2,X0)) & k1_relat_1(X1) = X0)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 0.21/0.55    inference(ennf_transformation,[],[f9])).
% 0.21/0.55  fof(f9,axiom,(
% 0.21/0.55    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k6_relat_1(X0) = X1 <=> (! [X2] : (r2_hidden(X2,X0) => k1_funct_1(X1,X2) = X2) & k1_relat_1(X1) = X0)))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t34_funct_1)).
% 0.21/0.55  fof(f209,plain,(
% 0.21/0.55    k5_relat_1(sK1,sK0) = k5_relat_1(k6_relat_1(k1_relat_1(k5_relat_1(sK1,sK0))),k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(resolution,[],[f199,f43])).
% 0.21/0.55  fof(f454,plain,(
% 0.21/0.55    k5_relat_1(k5_relat_1(sK1,sK0),k5_relat_1(sK1,sK0)) = k5_relat_1(sK1,k5_relat_1(sK0,k5_relat_1(sK1,sK0)))),
% 0.21/0.55    inference(resolution,[],[f452,f199])).
% 0.21/0.55  fof(f452,plain,(
% 0.21/0.55    ( ! [X8] : (~v1_relat_1(X8) | k5_relat_1(k5_relat_1(sK1,sK0),X8) = k5_relat_1(sK1,k5_relat_1(sK0,X8))) )),
% 0.21/0.55    inference(resolution,[],[f67,f37])).
% 0.21/0.55  fof(f67,plain,(
% 0.21/0.55    ( ! [X2,X3] : (~v1_relat_1(X2) | ~v1_relat_1(X3) | k5_relat_1(k5_relat_1(sK1,X2),X3) = k5_relat_1(sK1,k5_relat_1(X2,X3))) )),
% 0.21/0.55    inference(resolution,[],[f31,f45])).
% 0.21/0.55  fof(f52,plain,(
% 0.21/0.55    ( ! [X0,X1] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X1) | ~v1_funct_1(X1) | ~v2_funct_1(k5_relat_1(X1,X0)) | k1_relat_1(X0) != k2_relat_1(X1) | v2_funct_1(X1)) )),
% 0.21/0.55    inference(cnf_transformation,[],[f28])).
% 0.21/0.55  fof(f28,plain,(
% 0.21/0.55    ! [X0] : (! [X1] : ((v2_funct_1(X0) & v2_funct_1(X1)) | k1_relat_1(X0) != k2_relat_1(X1) | ~v2_funct_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.21/0.55    inference(flattening,[],[f27])).
% 0.21/0.55  fof(f27,plain,(
% 0.21/0.55    ! [X0] : (! [X1] : (((v2_funct_1(X0) & v2_funct_1(X1)) | (k1_relat_1(X0) != k2_relat_1(X1) | ~v2_funct_1(k5_relat_1(X1,X0)))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 0.21/0.55    inference(ennf_transformation,[],[f10])).
% 0.21/0.55  fof(f10,axiom,(
% 0.21/0.55    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k1_relat_1(X0) = k2_relat_1(X1) & v2_funct_1(k5_relat_1(X1,X0))) => (v2_funct_1(X0) & v2_funct_1(X1)))))),
% 0.21/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_funct_1)).
% 0.21/0.55  fof(f854,plain,(
% 0.21/0.55    v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f853,f208])).
% 0.21/0.55  fof(f853,plain,(
% 0.21/0.55    k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0)) | v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f852,f38])).
% 0.21/0.55  fof(f852,plain,(
% 0.21/0.55    ~v1_funct_1(sK0) | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0)) | v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f851,f37])).
% 0.21/0.55  fof(f851,plain,(
% 0.21/0.55    ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0)) | v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f850,f200])).
% 0.21/0.55  fof(f850,plain,(
% 0.21/0.55    ~v1_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0)) | v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f849,f199])).
% 0.21/0.55  fof(f849,plain,(
% 0.21/0.55    ~v1_relat_1(k5_relat_1(sK1,sK0)) | ~v1_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0)) | v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(subsumption_resolution,[],[f847,f33])).
% 0.21/0.55  fof(f847,plain,(
% 0.21/0.55    ~v2_funct_1(sK0) | ~v1_relat_1(k5_relat_1(sK1,sK0)) | ~v1_funct_1(k5_relat_1(sK1,sK0)) | ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k2_relat_1(sK0) != k1_relat_1(k5_relat_1(sK1,sK0)) | v2_funct_1(k5_relat_1(sK1,sK0))),
% 0.21/0.55    inference(superposition,[],[f53,f821])).
% 0.21/0.55  fof(f53,plain,(
% 0.21/0.55    ( ! [X0,X1] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X1) | ~v1_funct_1(X1) | ~v2_funct_1(k5_relat_1(X1,X0)) | k1_relat_1(X0) != k2_relat_1(X1) | v2_funct_1(X0)) )),
% 0.21/0.55    inference(cnf_transformation,[],[f28])).
% 0.21/0.55  fof(f904,plain,(
% 0.21/0.55    sK1 = k5_relat_1(sK1,k5_relat_1(k2_funct_1(sK1),sK1))),
% 0.21/0.55    inference(forward_demodulation,[],[f897,f64])).
% 0.21/0.55  fof(f64,plain,(
% 0.21/0.55    sK1 = k5_relat_1(k6_relat_1(k1_relat_1(sK1)),sK1)),
% 0.21/0.55    inference(resolution,[],[f31,f43])).
% 0.21/0.55  fof(f897,plain,(
% 0.21/0.55    k5_relat_1(k6_relat_1(k1_relat_1(sK1)),sK1) = k5_relat_1(sK1,k5_relat_1(k2_funct_1(sK1),sK1))),
% 0.21/0.55    inference(backward_demodulation,[],[f628,f891])).
% 0.21/0.55  fof(f891,plain,(
% 0.21/0.55    k6_relat_1(k1_relat_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1))),
% 0.21/0.55    inference(subsumption_resolution,[],[f890,f32])).
% 0.21/0.55  fof(f890,plain,(
% 0.21/0.55    ~v1_funct_1(sK1) | k6_relat_1(k1_relat_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1))),
% 0.21/0.55    inference(subsumption_resolution,[],[f886,f31])).
% 0.21/0.55  fof(f886,plain,(
% 0.21/0.55    ~v1_relat_1(sK1) | ~v1_funct_1(sK1) | k6_relat_1(k1_relat_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1))),
% 0.21/0.55    inference(resolution,[],[f855,f50])).
% 0.21/0.55  fof(f628,plain,(
% 0.21/0.55    k5_relat_1(k5_relat_1(sK1,k2_funct_1(sK1)),sK1) = k5_relat_1(sK1,k5_relat_1(k2_funct_1(sK1),sK1))),
% 0.21/0.55    inference(resolution,[],[f598,f94])).
% 0.21/0.55  fof(f94,plain,(
% 0.21/0.55    v1_relat_1(k2_funct_1(sK1))),
% 0.21/0.55    inference(subsumption_resolution,[],[f82,f31])).
% 0.21/0.55  fof(f82,plain,(
% 0.21/0.55    ~v1_relat_1(sK1) | v1_relat_1(k2_funct_1(sK1))),
% 0.21/0.55    inference(resolution,[],[f32,f46])).
% 0.21/0.55  fof(f598,plain,(
% 0.21/0.55    ( ! [X9] : (~v1_relat_1(X9) | k5_relat_1(k5_relat_1(sK1,X9),sK1) = k5_relat_1(sK1,k5_relat_1(X9,sK1))) )),
% 0.21/0.55    inference(resolution,[],[f69,f31])).
% 0.21/0.56  fof(f69,plain,(
% 0.21/0.56    ( ! [X6,X7] : (~v1_relat_1(X6) | ~v1_relat_1(X7) | k5_relat_1(k5_relat_1(X6,X7),sK1) = k5_relat_1(X6,k5_relat_1(X7,sK1))) )),
% 0.21/0.56    inference(resolution,[],[f31,f45])).
% 0.21/0.56  fof(f464,plain,(
% 0.21/0.56    k2_funct_1(sK0) = k5_relat_1(sK1,k6_relat_1(k2_relat_1(sK1)))),
% 0.21/0.56    inference(forward_demodulation,[],[f463,f185])).
% 0.21/0.56  fof(f185,plain,(
% 0.21/0.56    k2_funct_1(sK0) = k5_relat_1(k5_relat_1(sK1,sK0),k2_funct_1(sK0))),
% 0.21/0.56    inference(forward_demodulation,[],[f184,f35])).
% 0.21/0.56  fof(f184,plain,(
% 0.21/0.56    k2_funct_1(sK0) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k2_funct_1(sK0))),
% 0.21/0.56    inference(forward_demodulation,[],[f166,f107])).
% 0.21/0.56  fof(f107,plain,(
% 0.21/0.56    k2_relat_1(sK0) = k1_relat_1(k2_funct_1(sK0))),
% 0.21/0.56    inference(subsumption_resolution,[],[f106,f38])).
% 0.21/0.56  fof(f106,plain,(
% 0.21/0.56    ~v1_funct_1(sK0) | k2_relat_1(sK0) = k1_relat_1(k2_funct_1(sK0))),
% 0.21/0.56    inference(subsumption_resolution,[],[f98,f37])).
% 0.21/0.56  fof(f98,plain,(
% 0.21/0.56    ~v1_relat_1(sK0) | ~v1_funct_1(sK0) | k2_relat_1(sK0) = k1_relat_1(k2_funct_1(sK0))),
% 0.21/0.56    inference(resolution,[],[f33,f48])).
% 0.21/0.56  fof(f48,plain,(
% 0.21/0.56    ( ! [X0] : (~v1_relat_1(X0) | ~v1_funct_1(X0) | ~v2_funct_1(X0) | k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) )),
% 0.21/0.56    inference(cnf_transformation,[],[f24])).
% 0.21/0.56  fof(f24,plain,(
% 0.21/0.56    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.21/0.56    inference(flattening,[],[f23])).
% 0.21/0.56  fof(f23,plain,(
% 0.21/0.56    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 0.21/0.56    inference(ennf_transformation,[],[f11])).
% 0.21/0.56  fof(f11,axiom,(
% 0.21/0.56    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)))))),
% 0.21/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_funct_1)).
% 0.21/0.56  fof(f166,plain,(
% 0.21/0.56    k2_funct_1(sK0) = k5_relat_1(k6_relat_1(k1_relat_1(k2_funct_1(sK0))),k2_funct_1(sK0))),
% 0.21/0.56    inference(resolution,[],[f144,f43])).
% 0.21/0.56  fof(f463,plain,(
% 0.21/0.56    k5_relat_1(k5_relat_1(sK1,sK0),k2_funct_1(sK0)) = k5_relat_1(sK1,k6_relat_1(k2_relat_1(sK1)))),
% 0.21/0.56    inference(forward_demodulation,[],[f458,f102])).
% 0.21/0.56  fof(f458,plain,(
% 0.21/0.56    k5_relat_1(k5_relat_1(sK1,sK0),k2_funct_1(sK0)) = k5_relat_1(sK1,k5_relat_1(sK0,k2_funct_1(sK0)))),
% 0.21/0.56    inference(resolution,[],[f452,f144])).
% 0.21/0.56  % SZS output end Proof for theBenchmark
% 0.21/0.56  % (29926)------------------------------
% 0.21/0.56  % (29926)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.56  % (29926)Termination reason: Refutation
% 0.21/0.56  
% 0.21/0.56  % (29926)Memory used [KB]: 2174
% 0.21/0.56  % (29926)Time elapsed: 0.143 s
% 0.21/0.56  % (29926)------------------------------
% 0.21/0.56  % (29926)------------------------------
% 0.21/0.56  % (29904)Success in time 0.197 s
%------------------------------------------------------------------------------
