%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:57:43 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 105 expanded)
%              Number of leaves         :   10 (  20 expanded)
%              Depth                    :   15
%              Number of atoms          :  122 ( 315 expanded)
%              Number of equality atoms :   33 (  75 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f107,plain,(
    $false ),
    inference(subsumption_resolution,[],[f106,f45])).

fof(f45,plain,(
    v1_relat_1(sK2) ),
    inference(resolution,[],[f37,f26])).

fof(f26,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ? [X0,X1,X2] :
      ( ! [X3] :
          ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
          | ~ m1_subset_1(X3,X1) )
      & k1_xboole_0 != k2_relset_1(X1,X0,X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ? [X0,X1,X2] :
      ( ! [X3] :
          ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
          | ~ m1_subset_1(X3,X1) )
      & k1_xboole_0 != k2_relset_1(X1,X0,X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,plain,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
       => ~ ( ! [X3] :
                ( m1_subset_1(X3,X1)
               => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
            & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
               => ~ ( ! [X3] :
                        ( m1_subset_1(X3,X1)
                       => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
                    & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f10,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
             => ~ ( ! [X3] :
                      ( m1_subset_1(X3,X1)
                     => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
                  & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t50_relset_1)).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(f106,plain,(
    ~ v1_relat_1(sK2) ),
    inference(subsumption_resolution,[],[f105,f71])).

fof(f71,plain,(
    k1_xboole_0 != k2_relat_1(sK2) ),
    inference(superposition,[],[f27,f69])).

fof(f69,plain,(
    k2_relset_1(sK1,sK0,sK2) = k2_relat_1(sK2) ),
    inference(resolution,[],[f38,f26])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(f27,plain,(
    k1_xboole_0 != k2_relset_1(sK1,sK0,sK2) ),
    inference(cnf_transformation,[],[f15])).

fof(f105,plain,
    ( k1_xboole_0 = k2_relat_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(trivial_inequality_removal,[],[f104])).

fof(f104,plain,
    ( k1_xboole_0 != k1_xboole_0
    | k1_xboole_0 = k2_relat_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(superposition,[],[f29,f82])).

fof(f82,plain,(
    k1_xboole_0 = k1_relat_1(sK2) ),
    inference(subsumption_resolution,[],[f81,f59])).

fof(f59,plain,
    ( r2_hidden(sK3(k1_relat_1(sK2)),sK1)
    | k1_xboole_0 = k1_relat_1(sK2) ),
    inference(resolution,[],[f58,f30])).

fof(f30,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f58,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,k1_relat_1(sK2))
      | r2_hidden(X0,sK1) ) ),
    inference(resolution,[],[f56,f34])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
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

fof(f56,plain,(
    r1_tarski(k1_relat_1(sK2),sK1) ),
    inference(resolution,[],[f54,f51])).

fof(f51,plain,(
    ! [X0] :
      ( ~ v4_relat_1(sK2,X0)
      | r1_tarski(k1_relat_1(sK2),X0) ) ),
    inference(resolution,[],[f32,f45])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X1)
      | r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(f54,plain,(
    v4_relat_1(sK2,sK1) ),
    inference(resolution,[],[f40,f26])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v4_relat_1(X2,X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(f81,plain,
    ( ~ r2_hidden(sK3(k1_relat_1(sK2)),sK1)
    | k1_xboole_0 = k1_relat_1(sK2) ),
    inference(forward_demodulation,[],[f77,f72])).

fof(f72,plain,(
    k1_relset_1(sK1,sK0,sK2) = k1_relat_1(sK2) ),
    inference(resolution,[],[f39,f26])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(f77,plain,
    ( k1_xboole_0 = k1_relat_1(sK2)
    | ~ r2_hidden(sK3(k1_relset_1(sK1,sK0,sK2)),sK1) ),
    inference(backward_demodulation,[],[f65,f72])).

fof(f65,plain,
    ( ~ r2_hidden(sK3(k1_relset_1(sK1,sK0,sK2)),sK1)
    | k1_xboole_0 = k1_relset_1(sK1,sK0,sK2) ),
    inference(resolution,[],[f41,f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).

fof(f41,plain,
    ( ~ m1_subset_1(sK3(k1_relset_1(sK1,sK0,sK2)),sK1)
    | k1_xboole_0 = k1_relset_1(sK1,sK0,sK2) ),
    inference(resolution,[],[f30,f25])).

fof(f25,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k1_relset_1(sK1,sK0,sK2))
      | ~ m1_subset_1(X3,sK1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f29,plain,(
    ! [X0] :
      ( k1_xboole_0 != k1_relat_1(X0)
      | k1_xboole_0 = k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_relat_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:35:08 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.21/0.51  % (19810)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.21/0.51  % (19811)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.21/0.51  % (19819)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.21/0.51  % (19808)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.21/0.51  % (19811)Refutation found. Thanks to Tanya!
% 0.21/0.51  % SZS status Theorem for theBenchmark
% 0.21/0.51  % SZS output start Proof for theBenchmark
% 0.21/0.51  fof(f107,plain,(
% 0.21/0.51    $false),
% 0.21/0.51    inference(subsumption_resolution,[],[f106,f45])).
% 0.21/0.51  fof(f45,plain,(
% 0.21/0.51    v1_relat_1(sK2)),
% 0.21/0.51    inference(resolution,[],[f37,f26])).
% 0.21/0.51  fof(f26,plain,(
% 0.21/0.51    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 0.21/0.51    inference(cnf_transformation,[],[f15])).
% 0.21/0.51  fof(f15,plain,(
% 0.21/0.51    ? [X0,X1,X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 0.21/0.51    inference(flattening,[],[f14])).
% 0.21/0.51  fof(f14,plain,(
% 0.21/0.51    ? [X0,X1,X2] : ((! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 0.21/0.51    inference(ennf_transformation,[],[f12])).
% 0.21/0.51  fof(f12,plain,(
% 0.21/0.51    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))),
% 0.21/0.51    inference(pure_predicate_removal,[],[f11])).
% 0.21/0.51  fof(f11,negated_conjecture,(
% 0.21/0.51    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 0.21/0.51    inference(negated_conjecture,[],[f10])).
% 0.21/0.51  fof(f10,conjecture,(
% 0.21/0.51    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 0.21/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t50_relset_1)).
% 0.21/0.51  fof(f37,plain,(
% 0.21/0.51    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_relat_1(X2)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f21])).
% 0.21/0.51  fof(f21,plain,(
% 0.21/0.51    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.21/0.51    inference(ennf_transformation,[],[f6])).
% 0.21/0.51  fof(f6,axiom,(
% 0.21/0.51    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 0.21/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).
% 0.21/0.51  fof(f106,plain,(
% 0.21/0.51    ~v1_relat_1(sK2)),
% 0.21/0.51    inference(subsumption_resolution,[],[f105,f71])).
% 0.21/0.51  fof(f71,plain,(
% 0.21/0.51    k1_xboole_0 != k2_relat_1(sK2)),
% 0.21/0.51    inference(superposition,[],[f27,f69])).
% 0.21/0.51  fof(f69,plain,(
% 0.21/0.51    k2_relset_1(sK1,sK0,sK2) = k2_relat_1(sK2)),
% 0.21/0.51    inference(resolution,[],[f38,f26])).
% 0.21/0.51  fof(f38,plain,(
% 0.21/0.51    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | k2_relset_1(X0,X1,X2) = k2_relat_1(X2)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f22])).
% 0.21/0.51  fof(f22,plain,(
% 0.21/0.51    ! [X0,X1,X2] : (k2_relset_1(X0,X1,X2) = k2_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.21/0.51    inference(ennf_transformation,[],[f9])).
% 0.21/0.51  fof(f9,axiom,(
% 0.21/0.51    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relset_1(X0,X1,X2) = k2_relat_1(X2))),
% 0.21/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).
% 0.21/0.51  fof(f27,plain,(
% 0.21/0.51    k1_xboole_0 != k2_relset_1(sK1,sK0,sK2)),
% 0.21/0.51    inference(cnf_transformation,[],[f15])).
% 0.21/0.51  fof(f105,plain,(
% 0.21/0.51    k1_xboole_0 = k2_relat_1(sK2) | ~v1_relat_1(sK2)),
% 0.21/0.51    inference(trivial_inequality_removal,[],[f104])).
% 0.21/0.51  fof(f104,plain,(
% 0.21/0.51    k1_xboole_0 != k1_xboole_0 | k1_xboole_0 = k2_relat_1(sK2) | ~v1_relat_1(sK2)),
% 0.21/0.51    inference(superposition,[],[f29,f82])).
% 0.21/0.51  fof(f82,plain,(
% 0.21/0.51    k1_xboole_0 = k1_relat_1(sK2)),
% 0.21/0.51    inference(subsumption_resolution,[],[f81,f59])).
% 0.21/0.51  fof(f59,plain,(
% 0.21/0.51    r2_hidden(sK3(k1_relat_1(sK2)),sK1) | k1_xboole_0 = k1_relat_1(sK2)),
% 0.21/0.51    inference(resolution,[],[f58,f30])).
% 0.21/0.52  fof(f30,plain,(
% 0.21/0.52    ( ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0) )),
% 0.21/0.52    inference(cnf_transformation,[],[f17])).
% 0.21/0.52  fof(f17,plain,(
% 0.21/0.52    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 0.21/0.52    inference(ennf_transformation,[],[f2])).
% 0.21/0.52  fof(f2,axiom,(
% 0.21/0.52    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).
% 0.21/0.52  fof(f58,plain,(
% 0.21/0.52    ( ! [X0] : (~r2_hidden(X0,k1_relat_1(sK2)) | r2_hidden(X0,sK1)) )),
% 0.21/0.52    inference(resolution,[],[f56,f34])).
% 0.21/0.52  fof(f34,plain,(
% 0.21/0.52    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f20])).
% 0.21/0.52  fof(f20,plain,(
% 0.21/0.52    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.21/0.52    inference(ennf_transformation,[],[f1])).
% 0.21/0.52  fof(f1,axiom,(
% 0.21/0.52    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).
% 0.21/0.52  fof(f56,plain,(
% 0.21/0.52    r1_tarski(k1_relat_1(sK2),sK1)),
% 0.21/0.52    inference(resolution,[],[f54,f51])).
% 0.21/0.52  fof(f51,plain,(
% 0.21/0.52    ( ! [X0] : (~v4_relat_1(sK2,X0) | r1_tarski(k1_relat_1(sK2),X0)) )),
% 0.21/0.52    inference(resolution,[],[f32,f45])).
% 0.21/0.52  fof(f32,plain,(
% 0.21/0.52    ( ! [X0,X1] : (~v1_relat_1(X1) | r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f18])).
% 0.21/0.52  fof(f18,plain,(
% 0.21/0.52    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.21/0.52    inference(ennf_transformation,[],[f4])).
% 0.21/0.52  fof(f4,axiom,(
% 0.21/0.52    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).
% 0.21/0.52  fof(f54,plain,(
% 0.21/0.52    v4_relat_1(sK2,sK1)),
% 0.21/0.52    inference(resolution,[],[f40,f26])).
% 0.21/0.52  fof(f40,plain,(
% 0.21/0.52    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v4_relat_1(X2,X0)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f24])).
% 0.21/0.52  fof(f24,plain,(
% 0.21/0.52    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.21/0.52    inference(ennf_transformation,[],[f13])).
% 0.21/0.52  fof(f13,plain,(
% 0.21/0.52    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 0.21/0.52    inference(pure_predicate_removal,[],[f7])).
% 0.21/0.52  fof(f7,axiom,(
% 0.21/0.52    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).
% 0.21/0.52  fof(f81,plain,(
% 0.21/0.52    ~r2_hidden(sK3(k1_relat_1(sK2)),sK1) | k1_xboole_0 = k1_relat_1(sK2)),
% 0.21/0.52    inference(forward_demodulation,[],[f77,f72])).
% 0.21/0.52  fof(f72,plain,(
% 0.21/0.52    k1_relset_1(sK1,sK0,sK2) = k1_relat_1(sK2)),
% 0.21/0.52    inference(resolution,[],[f39,f26])).
% 0.21/0.52  fof(f39,plain,(
% 0.21/0.52    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | k1_relset_1(X0,X1,X2) = k1_relat_1(X2)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f23])).
% 0.21/0.52  fof(f23,plain,(
% 0.21/0.52    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.21/0.52    inference(ennf_transformation,[],[f8])).
% 0.21/0.52  fof(f8,axiom,(
% 0.21/0.52    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).
% 0.21/0.52  fof(f77,plain,(
% 0.21/0.52    k1_xboole_0 = k1_relat_1(sK2) | ~r2_hidden(sK3(k1_relset_1(sK1,sK0,sK2)),sK1)),
% 0.21/0.52    inference(backward_demodulation,[],[f65,f72])).
% 0.21/0.52  fof(f65,plain,(
% 0.21/0.52    ~r2_hidden(sK3(k1_relset_1(sK1,sK0,sK2)),sK1) | k1_xboole_0 = k1_relset_1(sK1,sK0,sK2)),
% 0.21/0.52    inference(resolution,[],[f41,f33])).
% 0.21/0.52  fof(f33,plain,(
% 0.21/0.52    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f19])).
% 0.21/0.52  fof(f19,plain,(
% 0.21/0.52    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 0.21/0.52    inference(ennf_transformation,[],[f3])).
% 0.21/0.52  fof(f3,axiom,(
% 0.21/0.52    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).
% 0.21/0.52  fof(f41,plain,(
% 0.21/0.52    ~m1_subset_1(sK3(k1_relset_1(sK1,sK0,sK2)),sK1) | k1_xboole_0 = k1_relset_1(sK1,sK0,sK2)),
% 0.21/0.52    inference(resolution,[],[f30,f25])).
% 0.21/0.52  fof(f25,plain,(
% 0.21/0.52    ( ! [X3] : (~r2_hidden(X3,k1_relset_1(sK1,sK0,sK2)) | ~m1_subset_1(X3,sK1)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f15])).
% 0.21/0.52  fof(f29,plain,(
% 0.21/0.52    ( ! [X0] : (k1_xboole_0 != k1_relat_1(X0) | k1_xboole_0 = k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 0.21/0.52    inference(cnf_transformation,[],[f16])).
% 0.21/0.52  fof(f16,plain,(
% 0.21/0.52    ! [X0] : ((k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 0.21/0.52    inference(ennf_transformation,[],[f5])).
% 0.21/0.52  fof(f5,axiom,(
% 0.21/0.52    ! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)))),
% 0.21/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_relat_1)).
% 0.21/0.52  % SZS output end Proof for theBenchmark
% 0.21/0.52  % (19811)------------------------------
% 0.21/0.52  % (19811)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.52  % (19811)Termination reason: Refutation
% 0.21/0.52  
% 0.21/0.52  % (19811)Memory used [KB]: 6268
% 0.21/0.52  % (19811)Time elapsed: 0.104 s
% 0.21/0.52  % (19811)------------------------------
% 0.21/0.52  % (19811)------------------------------
% 0.21/0.52  % (19804)Success in time 0.161 s
%------------------------------------------------------------------------------
