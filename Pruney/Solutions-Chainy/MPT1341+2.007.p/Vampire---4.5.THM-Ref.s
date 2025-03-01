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
% DateTime   : Thu Dec  3 13:14:35 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  111 (3202 expanded)
%              Number of leaves         :   15 (1160 expanded)
%              Depth                    :   26
%              Number of atoms          :  349 (24421 expanded)
%              Number of equality atoms :  121 (8826 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f132,plain,(
    $false ),
    inference(subsumption_resolution,[],[f131,f121])).

fof(f121,plain,(
    k6_relat_1(k1_relat_1(sK3)) = k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3)) ),
    inference(forward_demodulation,[],[f120,f80])).

fof(f80,plain,(
    k5_relat_1(sK3,k2_funct_1(sK3)) = k6_relat_1(k1_relat_1(sK3)) ),
    inference(subsumption_resolution,[],[f79,f66])).

fof(f66,plain,(
    v1_relat_1(sK3) ),
    inference(subsumption_resolution,[],[f65,f47])).

fof(f47,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_relat_1)).

fof(f65,plain,
    ( v1_relat_1(sK3)
    | ~ v1_relat_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2))) ),
    inference(resolution,[],[f44,f63])).

fof(f63,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2)))) ),
    inference(forward_demodulation,[],[f60,f58])).

fof(f58,plain,(
    u1_struct_0(sK2) = k2_struct_0(sK2) ),
    inference(resolution,[],[f43,f35])).

fof(f35,plain,(
    l1_struct_0(sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,
    ( ( k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))
      | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) )
    & v2_funct_1(sK3)
    & k2_struct_0(sK2) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
    & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2))
    & v1_funct_1(sK3)
    & l1_struct_0(sK2)
    & l1_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f14,f31,f30,f29])).

fof(f29,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ( k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))
                  | k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) )
                & v2_funct_1(X2)
                & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
            & l1_struct_0(X1) )
        & l1_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ( k1_partfun1(u1_struct_0(X1),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2))
                | k1_partfun1(u1_struct_0(sK1),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2)) )
              & v2_funct_1(X2)
              & k2_struct_0(X1) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
      & l1_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ? [X1] :
        ( ? [X2] :
            ( ( k1_partfun1(u1_struct_0(X1),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2))
              | k1_partfun1(u1_struct_0(sK1),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2)) )
            & v2_funct_1(X2)
            & k2_struct_0(X1) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
            & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
            & v1_funct_1(X2) )
        & l1_struct_0(X1) )
   => ( ? [X2] :
          ( ( k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2))
            | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2)) )
          & v2_funct_1(X2)
          & k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2) = k2_struct_0(sK2)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
          & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(sK2))
          & v1_funct_1(X2) )
      & l1_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( ? [X2] :
        ( ( k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2))
          | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2)) )
        & v2_funct_1(X2)
        & k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2) = k2_struct_0(sK2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
        & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(sK2))
        & v1_funct_1(X2) )
   => ( ( k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))
        | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) )
      & v2_funct_1(sK3)
      & k2_struct_0(sK2) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
      & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2))
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))
                | k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f13,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))
                | k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( l1_struct_0(X0)
       => ! [X1] :
            ( l1_struct_0(X1)
           => ! [X2] :
                ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X2) )
               => ( ( v2_funct_1(X2)
                    & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) )
                 => ( k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) = k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))
                    & k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( l1_struct_0(X1)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( ( v2_funct_1(X2)
                  & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) )
               => ( k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) = k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))
                  & k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tops_2)).

fof(f43,plain,(
    ! [X0] :
      ( ~ l1_struct_0(X0)
      | k2_struct_0(X0) = u1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(f60,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),u1_struct_0(sK2)))) ),
    inference(backward_demodulation,[],[f38,f57])).

fof(f57,plain,(
    u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(resolution,[],[f43,f34])).

fof(f34,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f38,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f32])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).

fof(f79,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_relat_1(k1_relat_1(sK3))
    | ~ v1_relat_1(sK3) ),
    inference(subsumption_resolution,[],[f78,f36])).

fof(f36,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f32])).

fof(f78,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_relat_1(k1_relat_1(sK3))
    | ~ v1_funct_1(sK3)
    | ~ v1_relat_1(sK3) ),
    inference(resolution,[],[f45,f40])).

fof(f40,plain,(
    v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f32])).

fof(f45,plain,(
    ! [X0] :
      ( ~ v2_funct_1(X0)
      | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_funct_1)).

fof(f120,plain,(
    k5_relat_1(sK3,k2_funct_1(sK3)) = k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3)) ),
    inference(subsumption_resolution,[],[f118,f36])).

fof(f118,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(resolution,[],[f112,f72])).

fof(f72,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_relat_1(sK3)))) ),
    inference(backward_demodulation,[],[f63,f69])).

fof(f69,plain,(
    k2_struct_0(sK2) = k2_relat_1(sK3) ),
    inference(backward_demodulation,[],[f64,f68])).

fof(f68,plain,(
    k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_relat_1(sK3) ),
    inference(resolution,[],[f49,f63])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(f64,plain,(
    k2_struct_0(sK2) = k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) ),
    inference(forward_demodulation,[],[f59,f58])).

fof(f59,plain,(
    k2_struct_0(sK2) = k2_relset_1(k2_struct_0(sK1),u1_struct_0(sK2),sK3) ),
    inference(backward_demodulation,[],[f39,f57])).

fof(f39,plain,(
    k2_struct_0(sK2) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) ),
    inference(cnf_transformation,[],[f32])).

fof(f112,plain,(
    ! [X4,X5,X3] :
      ( ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
      | k1_partfun1(X3,X4,k2_relat_1(sK3),k2_struct_0(sK1),X5,k2_funct_1(sK3)) = k5_relat_1(X5,k2_funct_1(sK3))
      | ~ v1_funct_1(X5) ) ),
    inference(subsumption_resolution,[],[f110,f91])).

fof(f91,plain,(
    v1_funct_1(k2_funct_1(sK3)) ),
    inference(resolution,[],[f88,f50])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ sP0(X0,X1,X2)
      | v1_funct_1(k2_funct_1(X2)) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | ~ sP0(X0,X1,X2) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | ~ sP0(X0,X1,X2) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f88,plain,(
    sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3) ),
    inference(subsumption_resolution,[],[f87,f36])).

fof(f87,plain,
    ( sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f86,f73])).

fof(f73,plain,(
    v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) ),
    inference(backward_demodulation,[],[f62,f69])).

fof(f62,plain,(
    v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) ),
    inference(forward_demodulation,[],[f61,f58])).

fof(f61,plain,(
    v1_funct_2(sK3,k2_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(backward_demodulation,[],[f37,f57])).

fof(f37,plain,(
    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f32])).

fof(f86,plain,
    ( sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f85,f40])).

fof(f85,plain,
    ( ~ v2_funct_1(sK3)
    | sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f84,f70])).

fof(f70,plain,(
    k2_relat_1(sK3) = k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3) ),
    inference(backward_demodulation,[],[f68,f69])).

fof(f84,plain,
    ( k2_relat_1(sK3) != k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v2_funct_1(sK3)
    | sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(resolution,[],[f53,f72])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | sP0(X0,X1,X2)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( sP0(X0,X1,X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(definition_folding,[],[f22,f27])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( k2_relset_1(X0,X1,X2) = X1
          & v2_funct_1(X2) )
       => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(k2_funct_1(X2),X1,X0)
          & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_funct_2)).

fof(f110,plain,(
    ! [X4,X5,X3] :
      ( k1_partfun1(X3,X4,k2_relat_1(sK3),k2_struct_0(sK1),X5,k2_funct_1(sK3)) = k5_relat_1(X5,k2_funct_1(sK3))
      | ~ v1_funct_1(k2_funct_1(sK3))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
      | ~ v1_funct_1(X5) ) ),
    inference(resolution,[],[f55,f89])).

fof(f89,plain,(
    m1_subset_1(k2_funct_1(sK3),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK3),k2_struct_0(sK1)))) ),
    inference(resolution,[],[f88,f52])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( ~ sP0(X0,X1,X2)
      | m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f55,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

fof(f131,plain,(
    k6_relat_1(k1_relat_1(sK3)) != k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3)) ),
    inference(forward_demodulation,[],[f130,f105])).

fof(f105,plain,(
    k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) ),
    inference(subsumption_resolution,[],[f104,f36])).

fof(f104,plain,
    ( k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f103,f73])).

fof(f103,plain,
    ( k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f102,f70])).

fof(f102,plain,
    ( k2_relat_1(sK3) != k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(subsumption_resolution,[],[f100,f40])).

fof(f100,plain,
    ( ~ v2_funct_1(sK3)
    | k2_relat_1(sK3) != k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)
    | ~ v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))
    | ~ v1_funct_1(sK3) ),
    inference(resolution,[],[f54,f72])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_tops_2)).

fof(f130,plain,(
    k6_relat_1(k1_relat_1(sK3)) != k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)) ),
    inference(forward_demodulation,[],[f129,f71])).

fof(f71,plain,(
    k1_relat_1(sK3) = k1_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3) ),
    inference(backward_demodulation,[],[f67,f69])).

fof(f67,plain,(
    k1_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k1_relat_1(sK3) ),
    inference(resolution,[],[f48,f63])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(f129,plain,(
    k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)) != k6_relat_1(k1_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)) ),
    inference(forward_demodulation,[],[f128,f57])).

fof(f128,plain,(
    k1_partfun1(u1_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),k2_relat_1(sK3),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),k2_relat_1(sK3),sK3)) ),
    inference(forward_demodulation,[],[f127,f74])).

fof(f74,plain,(
    u1_struct_0(sK2) = k2_relat_1(sK3) ),
    inference(backward_demodulation,[],[f58,f69])).

fof(f127,plain,(
    k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(subsumption_resolution,[],[f126,f117])).

fof(f117,plain,(
    k6_relat_1(k2_relat_1(sK3)) = k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3) ),
    inference(forward_demodulation,[],[f116,f83])).

fof(f83,plain,(
    k5_relat_1(k2_funct_1(sK3),sK3) = k6_relat_1(k2_relat_1(sK3)) ),
    inference(subsumption_resolution,[],[f82,f66])).

fof(f82,plain,
    ( k5_relat_1(k2_funct_1(sK3),sK3) = k6_relat_1(k2_relat_1(sK3))
    | ~ v1_relat_1(sK3) ),
    inference(subsumption_resolution,[],[f81,f36])).

fof(f81,plain,
    ( k5_relat_1(k2_funct_1(sK3),sK3) = k6_relat_1(k2_relat_1(sK3))
    | ~ v1_funct_1(sK3)
    | ~ v1_relat_1(sK3) ),
    inference(resolution,[],[f46,f40])).

fof(f46,plain,(
    ! [X0] :
      ( ~ v2_funct_1(X0)
      | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f116,plain,(
    k5_relat_1(k2_funct_1(sK3),sK3) = k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3) ),
    inference(subsumption_resolution,[],[f114,f91])).

fof(f114,plain,
    ( k5_relat_1(k2_funct_1(sK3),sK3) = k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3)
    | ~ v1_funct_1(k2_funct_1(sK3)) ),
    inference(resolution,[],[f111,f89])).

fof(f111,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | k1_partfun1(X0,X1,k2_struct_0(sK1),k2_relat_1(sK3),X2,sK3) = k5_relat_1(X2,sK3)
      | ~ v1_funct_1(X2) ) ),
    inference(subsumption_resolution,[],[f109,f36])).

fof(f109,plain,(
    ! [X2,X0,X1] :
      ( k1_partfun1(X0,X1,k2_struct_0(sK1),k2_relat_1(sK3),X2,sK3) = k5_relat_1(X2,sK3)
      | ~ v1_funct_1(sK3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(resolution,[],[f55,f72])).

fof(f126,plain,
    ( k6_relat_1(k2_relat_1(sK3)) != k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3)
    | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(forward_demodulation,[],[f125,f105])).

fof(f125,plain,
    ( k6_relat_1(k2_relat_1(sK3)) != k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3),sK3)
    | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(forward_demodulation,[],[f124,f70])).

fof(f124,plain,
    ( k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3),sK3) != k6_relat_1(k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3))
    | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(forward_demodulation,[],[f123,f57])).

fof(f123,plain,
    ( k1_partfun1(k2_relat_1(sK3),u1_struct_0(sK1),u1_struct_0(sK1),k2_relat_1(sK3),k2_tops_2(u1_struct_0(sK1),k2_relat_1(sK3),sK3),sK3) != k6_relat_1(k2_relset_1(u1_struct_0(sK1),k2_relat_1(sK3),sK3))
    | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(forward_demodulation,[],[f56,f74])).

fof(f56,plain,
    ( k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_relat_1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))
    | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(definition_unfolding,[],[f41,f42,f42])).

fof(f42,plain,(
    ! [X0] : k6_partfun1(X0) = k6_relat_1(X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : k6_partfun1(X0) = k6_relat_1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

fof(f41,plain,
    ( k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))
    | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) ),
    inference(cnf_transformation,[],[f32])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:59:37 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.45  % (3906)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.21/0.45  % (3906)Refutation found. Thanks to Tanya!
% 0.21/0.45  % SZS status Theorem for theBenchmark
% 0.21/0.45  % SZS output start Proof for theBenchmark
% 0.21/0.45  fof(f132,plain,(
% 0.21/0.45    $false),
% 0.21/0.45    inference(subsumption_resolution,[],[f131,f121])).
% 0.21/0.45  fof(f121,plain,(
% 0.21/0.45    k6_relat_1(k1_relat_1(sK3)) = k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3))),
% 0.21/0.45    inference(forward_demodulation,[],[f120,f80])).
% 0.21/0.45  fof(f80,plain,(
% 0.21/0.45    k5_relat_1(sK3,k2_funct_1(sK3)) = k6_relat_1(k1_relat_1(sK3))),
% 0.21/0.45    inference(subsumption_resolution,[],[f79,f66])).
% 0.21/0.45  fof(f66,plain,(
% 0.21/0.45    v1_relat_1(sK3)),
% 0.21/0.45    inference(subsumption_resolution,[],[f65,f47])).
% 0.21/0.45  fof(f47,plain,(
% 0.21/0.45    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 0.21/0.45    inference(cnf_transformation,[],[f2])).
% 0.21/0.45  fof(f2,axiom,(
% 0.21/0.45    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 0.21/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_relat_1)).
% 0.21/0.45  fof(f65,plain,(
% 0.21/0.45    v1_relat_1(sK3) | ~v1_relat_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2)))),
% 0.21/0.45    inference(resolution,[],[f44,f63])).
% 0.21/0.45  fof(f63,plain,(
% 0.21/0.45    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2))))),
% 0.21/0.45    inference(forward_demodulation,[],[f60,f58])).
% 0.21/0.45  fof(f58,plain,(
% 0.21/0.45    u1_struct_0(sK2) = k2_struct_0(sK2)),
% 0.21/0.45    inference(resolution,[],[f43,f35])).
% 0.21/0.45  fof(f35,plain,(
% 0.21/0.45    l1_struct_0(sK2)),
% 0.21/0.45    inference(cnf_transformation,[],[f32])).
% 0.21/0.45  fof(f32,plain,(
% 0.21/0.45    (((k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))) & v2_funct_1(sK3) & k2_struct_0(sK2) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) & v1_funct_1(sK3)) & l1_struct_0(sK2)) & l1_struct_0(sK1)),
% 0.21/0.45    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f14,f31,f30,f29])).
% 0.21/0.46  fof(f29,plain,(
% 0.21/0.46    ? [X0] : (? [X1] : (? [X2] : ((k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) | k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : ((k1_partfun1(u1_struct_0(X1),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2))) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) & l1_struct_0(sK1))),
% 0.21/0.46    introduced(choice_axiom,[])).
% 0.21/0.46  fof(f30,plain,(
% 0.21/0.46    ? [X1] : (? [X2] : ((k1_partfun1(u1_struct_0(X1),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2))) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) => (? [X2] : ((k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2))) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2) = k2_struct_0(sK2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(sK2)) & v1_funct_1(X2)) & l1_struct_0(sK2))),
% 0.21/0.46    introduced(choice_axiom,[])).
% 0.21/0.46  fof(f31,plain,(
% 0.21/0.46    ? [X2] : ((k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),X2,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2))) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),X2) = k2_struct_0(sK2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(sK2)) & v1_funct_1(X2)) => ((k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))) & v2_funct_1(sK3) & k2_struct_0(sK2) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) & v1_funct_1(sK3))),
% 0.21/0.46    introduced(choice_axiom,[])).
% 0.21/0.46  fof(f14,plain,(
% 0.21/0.46    ? [X0] : (? [X1] : (? [X2] : ((k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) | k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) & l1_struct_0(X0))),
% 0.21/0.46    inference(flattening,[],[f13])).
% 0.21/0.46  fof(f13,plain,(
% 0.21/0.46    ? [X0] : (? [X1] : (? [X2] : (((k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) != k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) | k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & l1_struct_0(X1)) & l1_struct_0(X0))),
% 0.21/0.46    inference(ennf_transformation,[],[f12])).
% 0.21/0.46  fof(f12,negated_conjecture,(
% 0.21/0.46    ~! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => (k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) = k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) & k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)))))))),
% 0.21/0.46    inference(negated_conjecture,[],[f11])).
% 0.21/0.46  fof(f11,conjecture,(
% 0.21/0.46    ! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => (k1_partfun1(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X2) = k6_partfun1(k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) & k1_partfun1(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(X1),u1_struct_0(X0),X2,k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k6_partfun1(k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)))))))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tops_2)).
% 0.21/0.46  fof(f43,plain,(
% 0.21/0.46    ( ! [X0] : (~l1_struct_0(X0) | k2_struct_0(X0) = u1_struct_0(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f15])).
% 0.21/0.46  fof(f15,plain,(
% 0.21/0.46    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 0.21/0.46    inference(ennf_transformation,[],[f9])).
% 0.21/0.46  fof(f9,axiom,(
% 0.21/0.46    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).
% 0.21/0.46  fof(f60,plain,(
% 0.21/0.46    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),u1_struct_0(sK2))))),
% 0.21/0.46    inference(backward_demodulation,[],[f38,f57])).
% 0.21/0.46  fof(f57,plain,(
% 0.21/0.46    u1_struct_0(sK1) = k2_struct_0(sK1)),
% 0.21/0.46    inference(resolution,[],[f43,f34])).
% 0.21/0.46  fof(f34,plain,(
% 0.21/0.46    l1_struct_0(sK1)),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  fof(f38,plain,(
% 0.21/0.46    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  fof(f44,plain,(
% 0.21/0.46    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f16])).
% 0.21/0.46  fof(f16,plain,(
% 0.21/0.46    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 0.21/0.46    inference(ennf_transformation,[],[f1])).
% 0.21/0.46  fof(f1,axiom,(
% 0.21/0.46    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).
% 0.21/0.46  fof(f79,plain,(
% 0.21/0.46    k5_relat_1(sK3,k2_funct_1(sK3)) = k6_relat_1(k1_relat_1(sK3)) | ~v1_relat_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f78,f36])).
% 0.21/0.46  fof(f36,plain,(
% 0.21/0.46    v1_funct_1(sK3)),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  fof(f78,plain,(
% 0.21/0.46    k5_relat_1(sK3,k2_funct_1(sK3)) = k6_relat_1(k1_relat_1(sK3)) | ~v1_funct_1(sK3) | ~v1_relat_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f45,f40])).
% 0.21/0.46  fof(f40,plain,(
% 0.21/0.46    v2_funct_1(sK3)),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  fof(f45,plain,(
% 0.21/0.46    ( ! [X0] : (~v2_funct_1(X0) | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f18])).
% 0.21/0.46  fof(f18,plain,(
% 0.21/0.46    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 0.21/0.46    inference(flattening,[],[f17])).
% 0.21/0.46  fof(f17,plain,(
% 0.21/0.46    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 0.21/0.46    inference(ennf_transformation,[],[f3])).
% 0.21/0.46  fof(f3,axiom,(
% 0.21/0.46    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_funct_1)).
% 0.21/0.46  fof(f120,plain,(
% 0.21/0.46    k5_relat_1(sK3,k2_funct_1(sK3)) = k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3))),
% 0.21/0.46    inference(subsumption_resolution,[],[f118,f36])).
% 0.21/0.46  fof(f118,plain,(
% 0.21/0.46    k5_relat_1(sK3,k2_funct_1(sK3)) = k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f112,f72])).
% 0.21/0.46  fof(f72,plain,(
% 0.21/0.46    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_relat_1(sK3))))),
% 0.21/0.46    inference(backward_demodulation,[],[f63,f69])).
% 0.21/0.46  fof(f69,plain,(
% 0.21/0.46    k2_struct_0(sK2) = k2_relat_1(sK3)),
% 0.21/0.46    inference(backward_demodulation,[],[f64,f68])).
% 0.21/0.46  fof(f68,plain,(
% 0.21/0.46    k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_relat_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f49,f63])).
% 0.21/0.46  fof(f49,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | k2_relset_1(X0,X1,X2) = k2_relat_1(X2)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f20])).
% 0.21/0.46  fof(f20,plain,(
% 0.21/0.46    ! [X0,X1,X2] : (k2_relset_1(X0,X1,X2) = k2_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.21/0.46    inference(ennf_transformation,[],[f5])).
% 0.21/0.46  fof(f5,axiom,(
% 0.21/0.46    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relset_1(X0,X1,X2) = k2_relat_1(X2))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).
% 0.21/0.46  fof(f64,plain,(
% 0.21/0.46    k2_struct_0(sK2) = k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3)),
% 0.21/0.46    inference(forward_demodulation,[],[f59,f58])).
% 0.21/0.46  fof(f59,plain,(
% 0.21/0.46    k2_struct_0(sK2) = k2_relset_1(k2_struct_0(sK1),u1_struct_0(sK2),sK3)),
% 0.21/0.46    inference(backward_demodulation,[],[f39,f57])).
% 0.21/0.46  fof(f39,plain,(
% 0.21/0.46    k2_struct_0(sK2) = k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  fof(f112,plain,(
% 0.21/0.46    ( ! [X4,X5,X3] : (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) | k1_partfun1(X3,X4,k2_relat_1(sK3),k2_struct_0(sK1),X5,k2_funct_1(sK3)) = k5_relat_1(X5,k2_funct_1(sK3)) | ~v1_funct_1(X5)) )),
% 0.21/0.46    inference(subsumption_resolution,[],[f110,f91])).
% 0.21/0.46  fof(f91,plain,(
% 0.21/0.46    v1_funct_1(k2_funct_1(sK3))),
% 0.21/0.46    inference(resolution,[],[f88,f50])).
% 0.21/0.46  fof(f50,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~sP0(X0,X1,X2) | v1_funct_1(k2_funct_1(X2))) )),
% 0.21/0.46    inference(cnf_transformation,[],[f33])).
% 0.21/0.46  fof(f33,plain,(
% 0.21/0.46    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | ~sP0(X0,X1,X2))),
% 0.21/0.46    inference(nnf_transformation,[],[f27])).
% 0.21/0.46  fof(f27,plain,(
% 0.21/0.46    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | ~sP0(X0,X1,X2))),
% 0.21/0.46    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 0.21/0.46  fof(f88,plain,(
% 0.21/0.46    sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f87,f36])).
% 0.21/0.46  fof(f87,plain,(
% 0.21/0.46    sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f86,f73])).
% 0.21/0.46  fof(f73,plain,(
% 0.21/0.46    v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3))),
% 0.21/0.46    inference(backward_demodulation,[],[f62,f69])).
% 0.21/0.46  fof(f62,plain,(
% 0.21/0.46    v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2))),
% 0.21/0.46    inference(forward_demodulation,[],[f61,f58])).
% 0.21/0.46  fof(f61,plain,(
% 0.21/0.46    v1_funct_2(sK3,k2_struct_0(sK1),u1_struct_0(sK2))),
% 0.21/0.46    inference(backward_demodulation,[],[f37,f57])).
% 0.21/0.46  fof(f37,plain,(
% 0.21/0.46    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2))),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  fof(f86,plain,(
% 0.21/0.46    sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f85,f40])).
% 0.21/0.46  fof(f85,plain,(
% 0.21/0.46    ~v2_funct_1(sK3) | sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f84,f70])).
% 0.21/0.46  fof(f70,plain,(
% 0.21/0.46    k2_relat_1(sK3) = k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)),
% 0.21/0.46    inference(backward_demodulation,[],[f68,f69])).
% 0.21/0.46  fof(f84,plain,(
% 0.21/0.46    k2_relat_1(sK3) != k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v2_funct_1(sK3) | sP0(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f53,f72])).
% 0.21/0.46  fof(f53,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | sP0(X0,X1,X2) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f28])).
% 0.21/0.46  fof(f28,plain,(
% 0.21/0.46    ! [X0,X1,X2] : (sP0(X0,X1,X2) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 0.21/0.46    inference(definition_folding,[],[f22,f27])).
% 0.21/0.46  fof(f22,plain,(
% 0.21/0.46    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 0.21/0.46    inference(flattening,[],[f21])).
% 0.21/0.46  fof(f21,plain,(
% 0.21/0.46    ! [X0,X1,X2] : (((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | (k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 0.21/0.46    inference(ennf_transformation,[],[f8])).
% 0.21/0.46  fof(f8,axiom,(
% 0.21/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_funct_2)).
% 0.21/0.46  fof(f110,plain,(
% 0.21/0.46    ( ! [X4,X5,X3] : (k1_partfun1(X3,X4,k2_relat_1(sK3),k2_struct_0(sK1),X5,k2_funct_1(sK3)) = k5_relat_1(X5,k2_funct_1(sK3)) | ~v1_funct_1(k2_funct_1(sK3)) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) | ~v1_funct_1(X5)) )),
% 0.21/0.46    inference(resolution,[],[f55,f89])).
% 0.21/0.46  fof(f89,plain,(
% 0.21/0.46    m1_subset_1(k2_funct_1(sK3),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK3),k2_struct_0(sK1))))),
% 0.21/0.46    inference(resolution,[],[f88,f52])).
% 0.21/0.46  fof(f52,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~sP0(X0,X1,X2) | m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) )),
% 0.21/0.46    inference(cnf_transformation,[],[f33])).
% 0.21/0.46  fof(f55,plain,(
% 0.21/0.46    ( ! [X4,X2,X0,X5,X3,X1] : (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f26])).
% 0.21/0.46  fof(f26,plain,(
% 0.21/0.46    ! [X0,X1,X2,X3,X4,X5] : (k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 0.21/0.46    inference(flattening,[],[f25])).
% 0.21/0.46  fof(f25,plain,(
% 0.21/0.46    ! [X0,X1,X2,X3,X4,X5] : (k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 0.21/0.46    inference(ennf_transformation,[],[f6])).
% 0.21/0.46  fof(f6,axiom,(
% 0.21/0.46    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_partfun1)).
% 0.21/0.46  fof(f131,plain,(
% 0.21/0.46    k6_relat_1(k1_relat_1(sK3)) != k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_funct_1(sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f130,f105])).
% 0.21/0.46  fof(f105,plain,(
% 0.21/0.46    k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f104,f36])).
% 0.21/0.46  fof(f104,plain,(
% 0.21/0.46    k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f103,f73])).
% 0.21/0.46  fof(f103,plain,(
% 0.21/0.46    k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f102,f70])).
% 0.21/0.46  fof(f102,plain,(
% 0.21/0.46    k2_relat_1(sK3) != k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f100,f40])).
% 0.21/0.46  fof(f100,plain,(
% 0.21/0.46    ~v2_funct_1(sK3) | k2_relat_1(sK3) != k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | k2_funct_1(sK3) = k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) | ~v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) | ~v1_funct_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f54,f72])).
% 0.21/0.46  fof(f54,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f24])).
% 0.21/0.46  fof(f24,plain,(
% 0.21/0.46    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 0.21/0.46    inference(flattening,[],[f23])).
% 0.21/0.46  fof(f23,plain,(
% 0.21/0.46    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 0.21/0.46    inference(ennf_transformation,[],[f10])).
% 0.21/0.46  fof(f10,axiom,(
% 0.21/0.46    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_tops_2)).
% 0.21/0.46  fof(f130,plain,(
% 0.21/0.46    k6_relat_1(k1_relat_1(sK3)) != k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f129,f71])).
% 0.21/0.46  fof(f71,plain,(
% 0.21/0.46    k1_relat_1(sK3) = k1_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)),
% 0.21/0.46    inference(backward_demodulation,[],[f67,f69])).
% 0.21/0.46  fof(f67,plain,(
% 0.21/0.46    k1_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k1_relat_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f48,f63])).
% 0.21/0.46  fof(f48,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | k1_relset_1(X0,X1,X2) = k1_relat_1(X2)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f19])).
% 0.21/0.46  fof(f19,plain,(
% 0.21/0.46    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.21/0.46    inference(ennf_transformation,[],[f4])).
% 0.21/0.46  fof(f4,axiom,(
% 0.21/0.46    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).
% 0.21/0.46  fof(f129,plain,(
% 0.21/0.46    k1_partfun1(k2_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),k2_struct_0(sK1),sK3,k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3)) != k6_relat_1(k1_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f128,f57])).
% 0.21/0.46  fof(f128,plain,(
% 0.21/0.46    k1_partfun1(u1_struct_0(sK1),k2_relat_1(sK3),k2_relat_1(sK3),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),k2_relat_1(sK3),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),k2_relat_1(sK3),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f127,f74])).
% 0.21/0.46  fof(f74,plain,(
% 0.21/0.46    u1_struct_0(sK2) = k2_relat_1(sK3)),
% 0.21/0.46    inference(backward_demodulation,[],[f58,f69])).
% 0.21/0.46  fof(f127,plain,(
% 0.21/0.46    k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(subsumption_resolution,[],[f126,f117])).
% 0.21/0.46  fof(f117,plain,(
% 0.21/0.46    k6_relat_1(k2_relat_1(sK3)) = k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3)),
% 0.21/0.46    inference(forward_demodulation,[],[f116,f83])).
% 0.21/0.46  fof(f83,plain,(
% 0.21/0.46    k5_relat_1(k2_funct_1(sK3),sK3) = k6_relat_1(k2_relat_1(sK3))),
% 0.21/0.46    inference(subsumption_resolution,[],[f82,f66])).
% 0.21/0.46  fof(f82,plain,(
% 0.21/0.46    k5_relat_1(k2_funct_1(sK3),sK3) = k6_relat_1(k2_relat_1(sK3)) | ~v1_relat_1(sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f81,f36])).
% 0.21/0.46  fof(f81,plain,(
% 0.21/0.46    k5_relat_1(k2_funct_1(sK3),sK3) = k6_relat_1(k2_relat_1(sK3)) | ~v1_funct_1(sK3) | ~v1_relat_1(sK3)),
% 0.21/0.46    inference(resolution,[],[f46,f40])).
% 0.21/0.46  fof(f46,plain,(
% 0.21/0.46    ( ! [X0] : (~v2_funct_1(X0) | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f18])).
% 0.21/0.46  fof(f116,plain,(
% 0.21/0.46    k5_relat_1(k2_funct_1(sK3),sK3) = k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3)),
% 0.21/0.46    inference(subsumption_resolution,[],[f114,f91])).
% 0.21/0.46  fof(f114,plain,(
% 0.21/0.46    k5_relat_1(k2_funct_1(sK3),sK3) = k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3) | ~v1_funct_1(k2_funct_1(sK3))),
% 0.21/0.46    inference(resolution,[],[f111,f89])).
% 0.21/0.46  fof(f111,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | k1_partfun1(X0,X1,k2_struct_0(sK1),k2_relat_1(sK3),X2,sK3) = k5_relat_1(X2,sK3) | ~v1_funct_1(X2)) )),
% 0.21/0.46    inference(subsumption_resolution,[],[f109,f36])).
% 0.21/0.46  fof(f109,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (k1_partfun1(X0,X1,k2_struct_0(sK1),k2_relat_1(sK3),X2,sK3) = k5_relat_1(X2,sK3) | ~v1_funct_1(sK3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 0.21/0.46    inference(resolution,[],[f55,f72])).
% 0.21/0.46  fof(f126,plain,(
% 0.21/0.46    k6_relat_1(k2_relat_1(sK3)) != k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_funct_1(sK3),sK3) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f125,f105])).
% 0.21/0.46  fof(f125,plain,(
% 0.21/0.46    k6_relat_1(k2_relat_1(sK3)) != k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3),sK3) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f124,f70])).
% 0.21/0.46  fof(f124,plain,(
% 0.21/0.46    k1_partfun1(k2_relat_1(sK3),k2_struct_0(sK1),k2_struct_0(sK1),k2_relat_1(sK3),k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3),sK3) != k6_relat_1(k2_relset_1(k2_struct_0(sK1),k2_relat_1(sK3),sK3)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f123,f57])).
% 0.21/0.46  fof(f123,plain,(
% 0.21/0.46    k1_partfun1(k2_relat_1(sK3),u1_struct_0(sK1),u1_struct_0(sK1),k2_relat_1(sK3),k2_tops_2(u1_struct_0(sK1),k2_relat_1(sK3),sK3),sK3) != k6_relat_1(k2_relset_1(u1_struct_0(sK1),k2_relat_1(sK3),sK3)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(forward_demodulation,[],[f56,f74])).
% 0.21/0.46  fof(f56,plain,(
% 0.21/0.46    k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_relat_1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_relat_1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(definition_unfolding,[],[f41,f42,f42])).
% 0.21/0.46  fof(f42,plain,(
% 0.21/0.46    ( ! [X0] : (k6_partfun1(X0) = k6_relat_1(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f7])).
% 0.21/0.46  fof(f7,axiom,(
% 0.21/0.46    ! [X0] : k6_partfun1(X0) = k6_relat_1(X0)),
% 0.21/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_partfun1)).
% 0.21/0.46  fof(f41,plain,(
% 0.21/0.46    k1_partfun1(u1_struct_0(sK2),u1_struct_0(sK1),u1_struct_0(sK1),u1_struct_0(sK2),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3),sK3) != k6_partfun1(k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) | k1_partfun1(u1_struct_0(sK1),u1_struct_0(sK2),u1_struct_0(sK2),u1_struct_0(sK1),sK3,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k6_partfun1(k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3))),
% 0.21/0.46    inference(cnf_transformation,[],[f32])).
% 0.21/0.46  % SZS output end Proof for theBenchmark
% 0.21/0.46  % (3906)------------------------------
% 0.21/0.46  % (3906)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.46  % (3906)Termination reason: Refutation
% 0.21/0.46  
% 0.21/0.46  % (3906)Memory used [KB]: 1791
% 0.21/0.46  % (3906)Time elapsed: 0.010 s
% 0.21/0.46  % (3906)------------------------------
% 0.21/0.46  % (3906)------------------------------
% 0.21/0.46  % (3899)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.21/0.46  % (3892)Success in time 0.101 s
%------------------------------------------------------------------------------
