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
% DateTime   : Thu Dec  3 13:07:55 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   47 (  96 expanded)
%              Number of leaves         :    7 (  18 expanded)
%              Depth                    :   17
%              Number of atoms          :  145 ( 458 expanded)
%              Number of equality atoms :   18 (  18 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
% (23278)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_118 on theBenchmark
fof(f59,plain,(
    $false ),
    inference(subsumption_resolution,[],[f54,f34])).

fof(f34,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(resolution,[],[f33,f26])).

fof(f26,plain,(
    ! [X0] :
      ( r2_hidden(sK4(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f33,plain,(
    ! [X0] : ~ r2_hidden(X0,k1_xboole_0) ),
    inference(resolution,[],[f29,f25])).

fof(f25,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(f54,plain,(
    ~ v1_xboole_0(k1_xboole_0) ),
    inference(backward_demodulation,[],[f23,f51])).

fof(f51,plain,(
    k1_xboole_0 = sK1 ),
    inference(subsumption_resolution,[],[f50,f18])).

fof(f18,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                  & v1_funct_2(X3,X0,X1)
                  & v1_funct_1(X3) )
              & m1_subset_1(X2,X0) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f9])).

fof(f9,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                  & v1_funct_2(X3,X0,X1)
                  & v1_funct_1(X3) )
              & m1_subset_1(X2,X0) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,X0)
               => ! [X3] :
                    ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                      & v1_funct_2(X3,X0,X1)
                      & v1_funct_1(X3) )
                   => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f7,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,X0)
             => ! [X3] :
                  ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                    & v1_funct_2(X3,X0,X1)
                    & v1_funct_1(X3) )
                 => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t189_funct_2)).

fof(f50,plain,
    ( k1_xboole_0 = sK1
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f49,f37])).

fof(f37,plain,(
    r2_hidden(sK2,sK0) ),
    inference(subsumption_resolution,[],[f35,f24])).

fof(f24,plain,(
    ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f10])).

fof(f35,plain,
    ( v1_xboole_0(sK0)
    | r2_hidden(sK2,sK0) ),
    inference(resolution,[],[f28,f22])).

fof(f22,plain,(
    m1_subset_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,X1)
      | v1_xboole_0(X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(f49,plain,
    ( ~ r2_hidden(sK2,sK0)
    | k1_xboole_0 = sK1
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f48,f20])).

fof(f20,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f10])).

fof(f48,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ r2_hidden(sK2,sK0)
    | k1_xboole_0 = sK1
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f46,f19])).

fof(f19,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f10])).

fof(f46,plain,
    ( ~ v1_funct_2(sK3,sK0,sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ r2_hidden(sK2,sK0)
    | k1_xboole_0 = sK1
    | ~ v1_funct_1(sK3) ),
    inference(resolution,[],[f31,f45])).

fof(f45,plain,(
    ~ r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
    inference(backward_demodulation,[],[f21,f44])).

fof(f44,plain,(
    k3_funct_2(sK0,sK1,sK3,sK2) = k1_funct_1(sK3,sK2) ),
    inference(resolution,[],[f43,f22])).

fof(f43,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,sK0)
      | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ) ),
    inference(subsumption_resolution,[],[f42,f24])).

fof(f42,plain,(
    ! [X0] :
      ( v1_xboole_0(sK0)
      | ~ m1_subset_1(X0,sK0)
      | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ) ),
    inference(subsumption_resolution,[],[f41,f19])).

fof(f41,plain,(
    ! [X0] :
      ( ~ v1_funct_2(sK3,sK0,sK1)
      | v1_xboole_0(sK0)
      | ~ m1_subset_1(X0,sK0)
      | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ) ),
    inference(subsumption_resolution,[],[f40,f18])).

fof(f40,plain,(
    ! [X0] :
      ( ~ v1_funct_1(sK3)
      | ~ v1_funct_2(sK3,sK0,sK1)
      | v1_xboole_0(sK0)
      | ~ m1_subset_1(X0,sK0)
      | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ) ),
    inference(resolution,[],[f30,f20])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ v1_funct_2(X2,X0,X1)
      | v1_xboole_0(X0)
      | ~ m1_subset_1(X3,X0)
      | k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0,X1,X2,X3] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,X0)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2)
        & ~ v1_xboole_0(X0) )
     => k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k3_funct_2)).

fof(f21,plain,(
    ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
    inference(cnf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r2_hidden(X2,X0)
      | k1_xboole_0 = X1
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_funct_2)).

fof(f23,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f10])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n002.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 15:45:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.50  % (23289)lrs+10_128_av=off:bs=on:cond=on:gs=on:gsem=on:irw=on:lma=on:nm=2:newcnf=on:nwc=1:stl=30:updr=off_207 on theBenchmark
% 0.21/0.50  % (23282)lrs+1011_4:1_acc=model:add=large:afp=40000:afq=1.4:ccuc=first:cond=on:fsr=off:gsp=input_only:gs=on:gsem=off:irw=on:nwc=1:stl=30:sd=1:ss=axioms:st=5.0:sp=reverse_arity:urr=on_42 on theBenchmark
% 0.21/0.51  % (23281)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_20 on theBenchmark
% 0.21/0.51  % (23277)lrs+4_14_afr=on:afp=4000:afq=1.1:anc=none:cond=on:gs=on:gsem=on:irw=on:lma=on:nm=6:nwc=1.1:sas=z3:stl=30:sd=4:ss=axioms:st=1.2:sos=all:updr=off_51 on theBenchmark
% 0.21/0.51  % (23289)Refutation found. Thanks to Tanya!
% 0.21/0.51  % SZS status Theorem for theBenchmark
% 0.21/0.51  % SZS output start Proof for theBenchmark
% 0.21/0.51  % (23278)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_118 on theBenchmark
% 0.21/0.51  fof(f59,plain,(
% 0.21/0.51    $false),
% 0.21/0.51    inference(subsumption_resolution,[],[f54,f34])).
% 0.21/0.51  fof(f34,plain,(
% 0.21/0.51    v1_xboole_0(k1_xboole_0)),
% 0.21/0.51    inference(resolution,[],[f33,f26])).
% 0.21/0.51  fof(f26,plain,(
% 0.21/0.51    ( ! [X0] : (r2_hidden(sK4(X0),X0) | v1_xboole_0(X0)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f1])).
% 0.21/0.51  fof(f1,axiom,(
% 0.21/0.51    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).
% 0.21/0.51  fof(f33,plain,(
% 0.21/0.51    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0)) )),
% 0.21/0.51    inference(resolution,[],[f29,f25])).
% 0.21/0.51  fof(f25,plain,(
% 0.21/0.51    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f2])).
% 0.21/0.51  fof(f2,axiom,(
% 0.21/0.51    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).
% 0.21/0.51  fof(f29,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f13])).
% 0.21/0.51  fof(f13,plain,(
% 0.21/0.51    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 0.21/0.51    inference(ennf_transformation,[],[f4])).
% 0.21/0.51  fof(f4,axiom,(
% 0.21/0.51    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).
% 0.21/0.51  fof(f54,plain,(
% 0.21/0.51    ~v1_xboole_0(k1_xboole_0)),
% 0.21/0.51    inference(backward_demodulation,[],[f23,f51])).
% 0.21/0.51  fof(f51,plain,(
% 0.21/0.51    k1_xboole_0 = sK1),
% 0.21/0.51    inference(subsumption_resolution,[],[f50,f18])).
% 0.21/0.51  fof(f18,plain,(
% 0.21/0.51    v1_funct_1(sK3)),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  fof(f10,plain,(
% 0.21/0.51    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,X0)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 0.21/0.51    inference(flattening,[],[f9])).
% 0.21/0.51  fof(f9,plain,(
% 0.21/0.51    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & m1_subset_1(X2,X0)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 0.21/0.51    inference(ennf_transformation,[],[f8])).
% 0.21/0.51  fof(f8,negated_conjecture,(
% 0.21/0.51    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,X0) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))))))),
% 0.21/0.51    inference(negated_conjecture,[],[f7])).
% 0.21/0.51  fof(f7,conjecture,(
% 0.21/0.51    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,X0) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))))))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t189_funct_2)).
% 0.21/0.51  fof(f50,plain,(
% 0.21/0.51    k1_xboole_0 = sK1 | ~v1_funct_1(sK3)),
% 0.21/0.51    inference(subsumption_resolution,[],[f49,f37])).
% 0.21/0.51  fof(f37,plain,(
% 0.21/0.51    r2_hidden(sK2,sK0)),
% 0.21/0.51    inference(subsumption_resolution,[],[f35,f24])).
% 0.21/0.51  fof(f24,plain,(
% 0.21/0.51    ~v1_xboole_0(sK0)),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  fof(f35,plain,(
% 0.21/0.51    v1_xboole_0(sK0) | r2_hidden(sK2,sK0)),
% 0.21/0.51    inference(resolution,[],[f28,f22])).
% 0.21/0.51  fof(f22,plain,(
% 0.21/0.51    m1_subset_1(sK2,sK0)),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  fof(f28,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~m1_subset_1(X0,X1) | v1_xboole_0(X1) | r2_hidden(X0,X1)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f12])).
% 0.21/0.51  fof(f12,plain,(
% 0.21/0.51    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 0.21/0.51    inference(flattening,[],[f11])).
% 0.21/0.51  fof(f11,plain,(
% 0.21/0.51    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 0.21/0.51    inference(ennf_transformation,[],[f3])).
% 0.21/0.51  fof(f3,axiom,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).
% 0.21/0.51  fof(f49,plain,(
% 0.21/0.51    ~r2_hidden(sK2,sK0) | k1_xboole_0 = sK1 | ~v1_funct_1(sK3)),
% 0.21/0.51    inference(subsumption_resolution,[],[f48,f20])).
% 0.21/0.51  fof(f20,plain,(
% 0.21/0.51    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  fof(f48,plain,(
% 0.21/0.51    ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) | ~r2_hidden(sK2,sK0) | k1_xboole_0 = sK1 | ~v1_funct_1(sK3)),
% 0.21/0.51    inference(subsumption_resolution,[],[f46,f19])).
% 0.21/0.51  fof(f19,plain,(
% 0.21/0.51    v1_funct_2(sK3,sK0,sK1)),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  fof(f46,plain,(
% 0.21/0.51    ~v1_funct_2(sK3,sK0,sK1) | ~m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) | ~r2_hidden(sK2,sK0) | k1_xboole_0 = sK1 | ~v1_funct_1(sK3)),
% 0.21/0.51    inference(resolution,[],[f31,f45])).
% 0.21/0.51  fof(f45,plain,(
% 0.21/0.51    ~r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3))),
% 0.21/0.51    inference(backward_demodulation,[],[f21,f44])).
% 0.21/0.51  fof(f44,plain,(
% 0.21/0.51    k3_funct_2(sK0,sK1,sK3,sK2) = k1_funct_1(sK3,sK2)),
% 0.21/0.51    inference(resolution,[],[f43,f22])).
% 0.21/0.51  fof(f43,plain,(
% 0.21/0.51    ( ! [X0] : (~m1_subset_1(X0,sK0) | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0)) )),
% 0.21/0.51    inference(subsumption_resolution,[],[f42,f24])).
% 0.21/0.51  fof(f42,plain,(
% 0.21/0.51    ( ! [X0] : (v1_xboole_0(sK0) | ~m1_subset_1(X0,sK0) | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0)) )),
% 0.21/0.51    inference(subsumption_resolution,[],[f41,f19])).
% 0.21/0.51  fof(f41,plain,(
% 0.21/0.51    ( ! [X0] : (~v1_funct_2(sK3,sK0,sK1) | v1_xboole_0(sK0) | ~m1_subset_1(X0,sK0) | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0)) )),
% 0.21/0.51    inference(subsumption_resolution,[],[f40,f18])).
% 0.21/0.51  fof(f40,plain,(
% 0.21/0.51    ( ! [X0] : (~v1_funct_1(sK3) | ~v1_funct_2(sK3,sK0,sK1) | v1_xboole_0(sK0) | ~m1_subset_1(X0,sK0) | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0)) )),
% 0.21/0.51    inference(resolution,[],[f30,f20])).
% 0.21/0.51  fof(f30,plain,(
% 0.21/0.51    ( ! [X2,X0,X3,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2) | ~v1_funct_2(X2,X0,X1) | v1_xboole_0(X0) | ~m1_subset_1(X3,X0) | k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f15])).
% 0.21/0.51  fof(f15,plain,(
% 0.21/0.51    ! [X0,X1,X2,X3] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0))),
% 0.21/0.51    inference(flattening,[],[f14])).
% 0.21/0.51  fof(f14,plain,(
% 0.21/0.51    ! [X0,X1,X2,X3] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | (~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)))),
% 0.21/0.51    inference(ennf_transformation,[],[f5])).
% 0.21/0.51  fof(f5,axiom,(
% 0.21/0.51    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,X0) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & ~v1_xboole_0(X0)) => k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k3_funct_2)).
% 0.21/0.51  fof(f21,plain,(
% 0.21/0.51    ~r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3))),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  fof(f31,plain,(
% 0.21/0.51    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | ~v1_funct_2(X3,X0,X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r2_hidden(X2,X0) | k1_xboole_0 = X1 | ~v1_funct_1(X3)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f17])).
% 0.21/0.51  fof(f17,plain,(
% 0.21/0.51    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 0.21/0.51    inference(flattening,[],[f16])).
% 0.21/0.51  fof(f16,plain,(
% 0.21/0.51    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 0.21/0.51    inference(ennf_transformation,[],[f6])).
% 0.21/0.51  fof(f6,axiom,(
% 0.21/0.51    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_funct_2)).
% 0.21/0.51  fof(f23,plain,(
% 0.21/0.51    ~v1_xboole_0(sK1)),
% 0.21/0.51    inference(cnf_transformation,[],[f10])).
% 0.21/0.51  % SZS output end Proof for theBenchmark
% 0.21/0.51  % (23289)------------------------------
% 0.21/0.51  % (23289)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (23289)Termination reason: Refutation
% 0.21/0.51  
% 0.21/0.51  % (23289)Memory used [KB]: 6140
% 0.21/0.51  % (23289)Time elapsed: 0.093 s
% 0.21/0.51  % (23289)------------------------------
% 0.21/0.51  % (23289)------------------------------
% 0.21/0.51  % (23299)lrs+1011_7_afp=100000:afq=1.0:amm=sco:anc=all_dependent:bs=unit_only:bsr=on:ep=RS:fde=none:gsp=input_only:gs=on:gsem=off:lwlo=on:nm=4:nwc=1:stl=120:sos=theory:sp=occurrence:uhcvi=on_412 on theBenchmark
% 0.21/0.51  % (23279)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_22 on theBenchmark
% 0.21/0.51  % (23275)Success in time 0.152 s
%------------------------------------------------------------------------------
