%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:16:44 EST 2020

% Result     : Theorem 16.55s
% Output     : CNFRefutation 16.55s
% Verified   : 
% Statistics : Number of formulae       :   89 ( 325 expanded)
%              Number of clauses        :   60 ( 118 expanded)
%              Number of leaves         :   14 (  82 expanded)
%              Depth                    :   12
%              Number of atoms          :  442 (3046 expanded)
%              Number of equality atoms :   82 ( 519 expanded)
%              Maximal formula depth    :   28 (   6 average)
%              Maximal clause size      :   55 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t6_tmap_1,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ~ v1_xboole_0(X2)
         => ! [X3] :
              ( ( ~ v1_xboole_0(X3)
                & m1_subset_1(X3,k1_zfmisc_1(X1)) )
             => ! [X4] :
                  ( ( ~ v1_xboole_0(X4)
                    & m1_subset_1(X4,k1_zfmisc_1(X1)) )
                 => ( r1_subset_1(X3,X4)
                   => ! [X5] :
                        ( ( v1_funct_1(X5)
                          & v1_funct_2(X5,X3,X2)
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) )
                       => ! [X6] :
                            ( ( v1_funct_1(X6)
                              & v1_funct_2(X6,X4,X2)
                              & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) )
                           => ( k2_partfun1(X3,X2,X5,k9_subset_1(X1,X3,X4)) = k2_partfun1(X4,X2,X6,k9_subset_1(X1,X3,X4))
                              & k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X3) = X5
                              & k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X4) = X6 ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t6_tmap_1)).

fof(d1_tmap_1,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ~ v1_xboole_0(X2)
         => ! [X3] :
              ( ( ~ v1_xboole_0(X3)
                & m1_subset_1(X3,k1_zfmisc_1(X1)) )
             => ! [X4] :
                  ( ( ~ v1_xboole_0(X4)
                    & m1_subset_1(X4,k1_zfmisc_1(X1)) )
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,X3,X2)
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) )
                     => ! [X6] :
                          ( ( v1_funct_1(X6)
                            & v1_funct_2(X6,X4,X2)
                            & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) )
                         => ( k2_partfun1(X3,X2,X5,k9_subset_1(X1,X3,X4)) = k2_partfun1(X4,X2,X6,k9_subset_1(X1,X3,X4))
                           => ! [X7] :
                                ( ( v1_funct_1(X7)
                                  & v1_funct_2(X7,k4_subset_1(X1,X3,X4),X2)
                                  & m1_subset_1(X7,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X3,X4),X2))) )
                               => ( X7 = k1_tmap_1(X1,X2,X3,X4,X5,X6)
                                <=> ( k2_partfun1(k4_subset_1(X1,X3,X4),X2,X7,X3) = X5
                                    & k2_partfun1(k4_subset_1(X1,X3,X4),X2,X7,X4) = X6 ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tmap_1)).

fof(dt_k1_tmap_1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( ~ v1_xboole_0(X1)
        & ~ v1_xboole_0(X2)
        & ~ v1_xboole_0(X3)
        & m1_subset_1(X3,k1_zfmisc_1(X1))
        & ~ v1_xboole_0(X4)
        & m1_subset_1(X4,k1_zfmisc_1(X1))
        & v1_funct_1(X5)
        & v1_funct_2(X5,X3,X2)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
        & v1_funct_1(X6)
        & v1_funct_2(X6,X4,X2)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) )
     => ( v1_funct_1(k1_tmap_1(X1,X2,X3,X4,X5,X6))
        & v1_funct_2(k1_tmap_1(X1,X2,X3,X4,X5,X6),k4_subset_1(X1,X3,X4),X2)
        & m1_subset_1(k1_tmap_1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X3,X4),X2))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_tmap_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(redefinition_k2_partfun1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => k2_partfun1(X1,X2,X3,X4) = k7_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_partfun1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t209_relat_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(redefinition_k9_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(X1))
     => k9_subset_1(X1,X2,X3) = k3_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k9_subset_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).

fof(redefinition_r1_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & ~ v1_xboole_0(X2) )
     => ( r1_subset_1(X1,X2)
      <=> r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_r1_subset_1)).

fof(t207_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_xboole_0(X1,X2)
       => k7_relat_1(k7_relat_1(X3,X1),X2) = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t207_relat_1)).

fof(t65_xboole_1,axiom,(
    ! [X1] : r1_xboole_0(X1,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( ~ v1_xboole_0(X2)
           => ! [X3] :
                ( ( ~ v1_xboole_0(X3)
                  & m1_subset_1(X3,k1_zfmisc_1(X1)) )
               => ! [X4] :
                    ( ( ~ v1_xboole_0(X4)
                      & m1_subset_1(X4,k1_zfmisc_1(X1)) )
                   => ( r1_subset_1(X3,X4)
                     => ! [X5] :
                          ( ( v1_funct_1(X5)
                            & v1_funct_2(X5,X3,X2)
                            & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) )
                         => ! [X6] :
                              ( ( v1_funct_1(X6)
                                & v1_funct_2(X6,X4,X2)
                                & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) )
                             => ( k2_partfun1(X3,X2,X5,k9_subset_1(X1,X3,X4)) = k2_partfun1(X4,X2,X6,k9_subset_1(X1,X3,X4))
                                & k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X3) = X5
                                & k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X4) = X6 ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t6_tmap_1])).

fof(c_0_15,plain,(
    ! [X39,X40,X41,X42,X43,X44,X45] :
      ( ( k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X41) = X43
        | X45 != k1_tmap_1(X39,X40,X41,X42,X43,X44)
        | ~ v1_funct_1(X45)
        | ~ v1_funct_2(X45,k4_subset_1(X39,X41,X42),X40)
        | ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X39,X41,X42),X40)))
        | k2_partfun1(X41,X40,X43,k9_subset_1(X39,X41,X42)) != k2_partfun1(X42,X40,X44,k9_subset_1(X39,X41,X42))
        | ~ v1_funct_1(X44)
        | ~ v1_funct_2(X44,X42,X40)
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X40)))
        | ~ v1_funct_1(X43)
        | ~ v1_funct_2(X43,X41,X40)
        | ~ m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X40)))
        | v1_xboole_0(X42)
        | ~ m1_subset_1(X42,k1_zfmisc_1(X39))
        | v1_xboole_0(X41)
        | ~ m1_subset_1(X41,k1_zfmisc_1(X39))
        | v1_xboole_0(X40)
        | v1_xboole_0(X39) )
      & ( k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X42) = X44
        | X45 != k1_tmap_1(X39,X40,X41,X42,X43,X44)
        | ~ v1_funct_1(X45)
        | ~ v1_funct_2(X45,k4_subset_1(X39,X41,X42),X40)
        | ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X39,X41,X42),X40)))
        | k2_partfun1(X41,X40,X43,k9_subset_1(X39,X41,X42)) != k2_partfun1(X42,X40,X44,k9_subset_1(X39,X41,X42))
        | ~ v1_funct_1(X44)
        | ~ v1_funct_2(X44,X42,X40)
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X40)))
        | ~ v1_funct_1(X43)
        | ~ v1_funct_2(X43,X41,X40)
        | ~ m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X40)))
        | v1_xboole_0(X42)
        | ~ m1_subset_1(X42,k1_zfmisc_1(X39))
        | v1_xboole_0(X41)
        | ~ m1_subset_1(X41,k1_zfmisc_1(X39))
        | v1_xboole_0(X40)
        | v1_xboole_0(X39) )
      & ( k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X41) != X43
        | k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X42) != X44
        | X45 = k1_tmap_1(X39,X40,X41,X42,X43,X44)
        | ~ v1_funct_1(X45)
        | ~ v1_funct_2(X45,k4_subset_1(X39,X41,X42),X40)
        | ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X39,X41,X42),X40)))
        | k2_partfun1(X41,X40,X43,k9_subset_1(X39,X41,X42)) != k2_partfun1(X42,X40,X44,k9_subset_1(X39,X41,X42))
        | ~ v1_funct_1(X44)
        | ~ v1_funct_2(X44,X42,X40)
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X40)))
        | ~ v1_funct_1(X43)
        | ~ v1_funct_2(X43,X41,X40)
        | ~ m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X40)))
        | v1_xboole_0(X42)
        | ~ m1_subset_1(X42,k1_zfmisc_1(X39))
        | v1_xboole_0(X41)
        | ~ m1_subset_1(X41,k1_zfmisc_1(X39))
        | v1_xboole_0(X40)
        | v1_xboole_0(X39) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_tmap_1])])])])])).

fof(c_0_16,plain,(
    ! [X46,X47,X48,X49,X50,X51] :
      ( ( v1_funct_1(k1_tmap_1(X46,X47,X48,X49,X50,X51))
        | v1_xboole_0(X46)
        | v1_xboole_0(X47)
        | v1_xboole_0(X48)
        | ~ m1_subset_1(X48,k1_zfmisc_1(X46))
        | v1_xboole_0(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(X46))
        | ~ v1_funct_1(X50)
        | ~ v1_funct_2(X50,X48,X47)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X47)))
        | ~ v1_funct_1(X51)
        | ~ v1_funct_2(X51,X49,X47)
        | ~ m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47))) )
      & ( v1_funct_2(k1_tmap_1(X46,X47,X48,X49,X50,X51),k4_subset_1(X46,X48,X49),X47)
        | v1_xboole_0(X46)
        | v1_xboole_0(X47)
        | v1_xboole_0(X48)
        | ~ m1_subset_1(X48,k1_zfmisc_1(X46))
        | v1_xboole_0(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(X46))
        | ~ v1_funct_1(X50)
        | ~ v1_funct_2(X50,X48,X47)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X47)))
        | ~ v1_funct_1(X51)
        | ~ v1_funct_2(X51,X49,X47)
        | ~ m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47))) )
      & ( m1_subset_1(k1_tmap_1(X46,X47,X48,X49,X50,X51),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X46,X48,X49),X47)))
        | v1_xboole_0(X46)
        | v1_xboole_0(X47)
        | v1_xboole_0(X48)
        | ~ m1_subset_1(X48,k1_zfmisc_1(X46))
        | v1_xboole_0(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(X46))
        | ~ v1_funct_1(X50)
        | ~ v1_funct_2(X50,X48,X47)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X47)))
        | ~ v1_funct_1(X51)
        | ~ v1_funct_2(X51,X49,X47)
        | ~ m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k1_tmap_1])])])])).

fof(c_0_17,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0)
    & ~ v1_xboole_0(esk2_0)
    & ~ v1_xboole_0(esk3_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(esk1_0))
    & ~ v1_xboole_0(esk4_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(esk1_0))
    & r1_subset_1(esk3_0,esk4_0)
    & v1_funct_1(esk5_0)
    & v1_funct_2(esk5_0,esk3_0,esk2_0)
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk2_0)))
    & v1_funct_1(esk6_0)
    & v1_funct_2(esk6_0,esk4_0,esk2_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk2_0)))
    & ( k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
      | k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk3_0) != esk5_0
      | k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk4_0) != esk6_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

cnf(c_0_18,plain,
    ( k2_partfun1(k4_subset_1(X1,X2,X3),X4,X5,X3) = X6
    | v1_xboole_0(X3)
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | v1_xboole_0(X1)
    | X5 != k1_tmap_1(X1,X4,X2,X3,X7,X6)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,k4_subset_1(X1,X2,X3),X4)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X2,X3),X4)))
    | k2_partfun1(X2,X4,X7,k9_subset_1(X1,X2,X3)) != k2_partfun1(X3,X4,X6,k9_subset_1(X1,X2,X3))
    | ~ v1_funct_1(X6)
    | ~ v1_funct_2(X6,X3,X4)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ v1_funct_1(X7)
    | ~ v1_funct_2(X7,X2,X4)
    | ~ m1_subset_1(X7,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( m1_subset_1(k1_tmap_1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X3,X4),X2)))
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | v1_xboole_0(X3)
    | v1_xboole_0(X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,X3,X2)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ v1_funct_1(X6)
    | ~ v1_funct_2(X6,X4,X2)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( v1_funct_1(k1_tmap_1(X1,X2,X3,X4,X5,X6))
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | v1_xboole_0(X3)
    | v1_xboole_0(X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,X3,X2)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ v1_funct_1(X6)
    | ~ v1_funct_2(X6,X4,X2)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( v1_funct_2(k1_tmap_1(X1,X2,X3,X4,X5,X6),k4_subset_1(X1,X3,X4),X2)
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | v1_xboole_0(X3)
    | v1_xboole_0(X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,X3,X2)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ v1_funct_1(X6)
    | ~ v1_funct_2(X6,X4,X2)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_22,plain,(
    ! [X10,X11] :
      ( ( r1_tarski(X10,X11)
        | X10 != X11 )
      & ( r1_tarski(X11,X10)
        | X10 != X11 )
      & ( ~ r1_tarski(X10,X11)
        | ~ r1_tarski(X11,X10)
        | X10 = X11 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_23,negated_conjecture,
    ( k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk3_0) != esk5_0
    | k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk4_0) != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,plain,
    ( k2_partfun1(k4_subset_1(X1,X2,X3),X4,k1_tmap_1(X1,X4,X2,X3,X5,X6),X3) = X6
    | v1_xboole_0(X4)
    | v1_xboole_0(X3)
    | v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | k2_partfun1(X2,X4,X5,k9_subset_1(X1,X2,X3)) != k2_partfun1(X3,X4,X6,k9_subset_1(X1,X2,X3))
    | ~ v1_funct_2(X5,X2,X4)
    | ~ v1_funct_2(X6,X3,X4)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_1(X6)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_18]),c_0_19]),c_0_20]),c_0_21])).

cnf(c_0_25,negated_conjecture,
    ( v1_funct_2(esk5_0,esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( v1_funct_2(esk6_0,esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_27,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_28,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_30,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_31,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_32,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_33,negated_conjecture,
    ( ~ v1_xboole_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_34,negated_conjecture,
    ( ~ v1_xboole_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_35,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_36,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_37,plain,
    ( k2_partfun1(k4_subset_1(X1,X2,X3),X4,X5,X2) = X6
    | v1_xboole_0(X3)
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | v1_xboole_0(X1)
    | X5 != k1_tmap_1(X1,X4,X2,X3,X6,X7)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,k4_subset_1(X1,X2,X3),X4)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X2,X3),X4)))
    | k2_partfun1(X2,X4,X6,k9_subset_1(X1,X2,X3)) != k2_partfun1(X3,X4,X7,k9_subset_1(X1,X2,X3))
    | ~ v1_funct_1(X7)
    | ~ v1_funct_2(X7,X3,X4)
    | ~ m1_subset_1(X7,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ v1_funct_1(X6)
    | ~ v1_funct_2(X6,X2,X4)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_38,plain,(
    ! [X35,X36,X37,X38] :
      ( ~ v1_funct_1(X37)
      | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))
      | k2_partfun1(X35,X36,X37,X38) = k7_relat_1(X37,X38) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_partfun1])])).

fof(c_0_39,plain,(
    ! [X28,X29] :
      ( ~ v1_relat_1(X29)
      | ~ v4_relat_1(X29,X28)
      | X29 = k7_relat_1(X29,X28) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

fof(c_0_40,plain,(
    ! [X32,X33,X34] :
      ( ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))
      | v1_relat_1(X34) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_41,plain,(
    ! [X21,X22] :
      ( ( ~ v4_relat_1(X22,X21)
        | r1_tarski(k1_relat_1(X22),X21)
        | ~ v1_relat_1(X22) )
      & ( ~ r1_tarski(k1_relat_1(X22),X21)
        | v4_relat_1(X22,X21)
        | ~ v1_relat_1(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

cnf(c_0_42,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_43,negated_conjecture,
    ( k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk3_0) != esk5_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32])]),c_0_33]),c_0_34]),c_0_35]),c_0_36])).

cnf(c_0_44,plain,
    ( k2_partfun1(k4_subset_1(X1,X2,X3),X4,k1_tmap_1(X1,X4,X2,X3,X5,X6),X2) = X5
    | v1_xboole_0(X4)
    | v1_xboole_0(X3)
    | v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | k2_partfun1(X2,X4,X5,k9_subset_1(X1,X2,X3)) != k2_partfun1(X3,X4,X6,k9_subset_1(X1,X2,X3))
    | ~ v1_funct_2(X6,X3,X4)
    | ~ v1_funct_2(X5,X2,X4)
    | ~ v1_funct_1(X6)
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_37]),c_0_19]),c_0_20]),c_0_21])).

cnf(c_0_45,plain,
    ( k2_partfun1(X2,X3,X1,X4) = k7_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_46,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_47,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_48,plain,
    ( v4_relat_1(X1,X2)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_49,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_42])).

cnf(c_0_50,negated_conjecture,
    ( k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_26]),c_0_25]),c_0_28]),c_0_27]),c_0_30]),c_0_29]),c_0_31]),c_0_32])]),c_0_33]),c_0_34]),c_0_35]),c_0_36])).

cnf(c_0_51,plain,
    ( k2_partfun1(X1,X2,X3,X4) = k2_partfun1(X5,X6,X3,X4)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(spm,[status(thm)],[c_0_45,c_0_45])).

cnf(c_0_52,plain,
    ( k2_partfun1(X1,X2,X3,X4) = X3
    | ~ v1_funct_1(X3)
    | ~ v4_relat_1(X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_47])).

cnf(c_0_53,plain,
    ( v4_relat_1(X1,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_54,negated_conjecture,
    ( k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_28]),c_0_30])])).

fof(c_0_55,plain,(
    ! [X13,X14,X15] :
      ( ~ m1_subset_1(X15,k1_zfmisc_1(X13))
      | k9_subset_1(X13,X14,X15) = k3_xboole_0(X14,X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k9_subset_1])])).

fof(c_0_56,plain,(
    ! [X16,X17] : k1_setfam_1(k2_tarski(X16,X17)) = k3_xboole_0(X16,X17) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_57,plain,(
    ! [X8,X9] :
      ( ( ~ r1_xboole_0(X8,X9)
        | k3_xboole_0(X8,X9) = k1_xboole_0 )
      & ( k3_xboole_0(X8,X9) != k1_xboole_0
        | r1_xboole_0(X8,X9) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

cnf(c_0_58,plain,
    ( k2_partfun1(X1,X2,X3,k1_relat_1(X3)) = X3
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_47])).

cnf(c_0_59,negated_conjecture,
    ( k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k2_partfun1(X3,X4,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_51]),c_0_27]),c_0_29])])).

cnf(c_0_60,plain,
    ( k9_subset_1(X2,X3,X1) = k3_xboole_0(X3,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_61,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_62,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

fof(c_0_63,plain,(
    ! [X30,X31] :
      ( ( ~ r1_subset_1(X30,X31)
        | r1_xboole_0(X30,X31)
        | v1_xboole_0(X30)
        | v1_xboole_0(X31) )
      & ( ~ r1_xboole_0(X30,X31)
        | r1_subset_1(X30,X31)
        | v1_xboole_0(X30)
        | v1_xboole_0(X31) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r1_subset_1])])])])).

fof(c_0_64,plain,(
    ! [X25,X26,X27] :
      ( ~ v1_relat_1(X27)
      | ~ r1_xboole_0(X25,X26)
      | k7_relat_1(k7_relat_1(X27,X25),X26) = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t207_relat_1])])).

cnf(c_0_65,plain,
    ( k7_relat_1(X1,k1_relat_1(X1)) = X1
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_45,c_0_58])).

cnf(c_0_66,negated_conjecture,
    ( k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k7_relat_1(esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_45]),c_0_27])])).

cnf(c_0_67,plain,
    ( k9_subset_1(X2,X3,X1) = k1_setfam_1(k2_tarski(X3,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_68,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_62,c_0_61])).

cnf(c_0_69,plain,
    ( r1_xboole_0(X1,X2)
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | ~ r1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_70,negated_conjecture,
    ( r1_subset_1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_71,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k1_xboole_0
    | ~ v1_relat_1(X1)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_72,negated_conjecture,
    ( k7_relat_1(esk5_0,k1_relat_1(esk5_0)) = esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_29]),c_0_27])])).

cnf(c_0_73,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_29])).

fof(c_0_74,plain,(
    ! [X12] : r1_xboole_0(X12,k1_xboole_0) ),
    inference(variable_rename,[status(thm)],[t65_xboole_1])).

cnf(c_0_75,negated_conjecture,
    ( k7_relat_1(esk6_0,k1_relat_1(esk6_0)) = esk6_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_30]),c_0_28])])).

cnf(c_0_76,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_30])).

cnf(c_0_77,negated_conjecture,
    ( k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k7_relat_1(esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_66,c_0_29])).

cnf(c_0_78,plain,
    ( k9_subset_1(X1,X2,X3) = k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X3) ),
    inference(spm,[status(thm)],[c_0_67,c_0_68])).

cnf(c_0_79,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk4_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_35]),c_0_34])).

cnf(c_0_80,negated_conjecture,
    ( k7_relat_1(esk5_0,X1) = k1_xboole_0
    | ~ r1_xboole_0(k1_relat_1(esk5_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_73])])).

cnf(c_0_81,plain,
    ( r1_xboole_0(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_74])).

cnf(c_0_82,negated_conjecture,
    ( k7_relat_1(esk6_0,X1) = k1_xboole_0
    | ~ r1_xboole_0(k1_relat_1(esk6_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_75]),c_0_76])])).

cnf(c_0_83,negated_conjecture,
    ( k7_relat_1(esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0)) != k7_relat_1(esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_45]),c_0_28])])).

cnf(c_0_84,negated_conjecture,
    ( k9_subset_1(X1,esk3_0,esk4_0) = k1_xboole_0
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_78,c_0_79])).

cnf(c_0_85,negated_conjecture,
    ( k7_relat_1(esk5_0,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( k7_relat_1(esk6_0,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_82,c_0_81])).

cnf(c_0_87,negated_conjecture,
    ( ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_84]),c_0_85]),c_0_86]),c_0_31])])).

cnf(c_0_88,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[c_0_30,c_0_87]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n023.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.36  % WCLimit    : 600
% 0.14/0.36  % DateTime   : Tue Dec  1 17:50:35 EST 2020
% 0.14/0.36  % CPUTime    : 
% 0.14/0.36  # Version: 2.5pre002
% 0.14/0.36  # No SInE strategy applied
% 0.14/0.36  # Trying AutoSched0 for 299 seconds
% 16.55/16.81  # AutoSched0-Mode selected heuristic G_____0021_C18_F1_SE_CS_SP_S0Y
% 16.55/16.81  # and selection function SelectMaxLComplexAvoidPosPred.
% 16.55/16.81  #
% 16.55/16.81  # Preprocessing time       : 0.033 s
% 16.55/16.81  
% 16.55/16.81  # Proof found!
% 16.55/16.81  # SZS status Theorem
% 16.55/16.81  # SZS output start CNFRefutation
% 16.55/16.81  fof(t6_tmap_1, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3]:((~(v1_xboole_0(X3))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>![X4]:((~(v1_xboole_0(X4))&m1_subset_1(X4,k1_zfmisc_1(X1)))=>(r1_subset_1(X3,X4)=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X3,X2))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))))=>![X6]:(((v1_funct_1(X6)&v1_funct_2(X6,X4,X2))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))))=>((k2_partfun1(X3,X2,X5,k9_subset_1(X1,X3,X4))=k2_partfun1(X4,X2,X6,k9_subset_1(X1,X3,X4))&k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X3)=X5)&k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X4)=X6)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t6_tmap_1)).
% 16.55/16.81  fof(d1_tmap_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3]:((~(v1_xboole_0(X3))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>![X4]:((~(v1_xboole_0(X4))&m1_subset_1(X4,k1_zfmisc_1(X1)))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X3,X2))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))))=>![X6]:(((v1_funct_1(X6)&v1_funct_2(X6,X4,X2))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))))=>(k2_partfun1(X3,X2,X5,k9_subset_1(X1,X3,X4))=k2_partfun1(X4,X2,X6,k9_subset_1(X1,X3,X4))=>![X7]:(((v1_funct_1(X7)&v1_funct_2(X7,k4_subset_1(X1,X3,X4),X2))&m1_subset_1(X7,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X3,X4),X2))))=>(X7=k1_tmap_1(X1,X2,X3,X4,X5,X6)<=>(k2_partfun1(k4_subset_1(X1,X3,X4),X2,X7,X3)=X5&k2_partfun1(k4_subset_1(X1,X3,X4),X2,X7,X4)=X6)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tmap_1)).
% 16.55/16.81  fof(dt_k1_tmap_1, axiom, ![X1, X2, X3, X4, X5, X6]:((((((((((((~(v1_xboole_0(X1))&~(v1_xboole_0(X2)))&~(v1_xboole_0(X3)))&m1_subset_1(X3,k1_zfmisc_1(X1)))&~(v1_xboole_0(X4)))&m1_subset_1(X4,k1_zfmisc_1(X1)))&v1_funct_1(X5))&v1_funct_2(X5,X3,X2))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))))&v1_funct_1(X6))&v1_funct_2(X6,X4,X2))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))))=>((v1_funct_1(k1_tmap_1(X1,X2,X3,X4,X5,X6))&v1_funct_2(k1_tmap_1(X1,X2,X3,X4,X5,X6),k4_subset_1(X1,X3,X4),X2))&m1_subset_1(k1_tmap_1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X3,X4),X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_tmap_1)).
% 16.55/16.81  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 16.55/16.81  fof(redefinition_k2_partfun1, axiom, ![X1, X2, X3, X4]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>k2_partfun1(X1,X2,X3,X4)=k7_relat_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_partfun1)).
% 16.55/16.81  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t209_relat_1)).
% 16.55/16.81  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 16.55/16.81  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d18_relat_1)).
% 16.55/16.81  fof(redefinition_k9_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>k9_subset_1(X1,X2,X3)=k3_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k9_subset_1)).
% 16.55/16.81  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 16.55/16.81  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_xboole_0)).
% 16.55/16.81  fof(redefinition_r1_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&~(v1_xboole_0(X2)))=>(r1_subset_1(X1,X2)<=>r1_xboole_0(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_r1_subset_1)).
% 16.55/16.81  fof(t207_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_xboole_0(X1,X2)=>k7_relat_1(k7_relat_1(X3,X1),X2)=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t207_relat_1)).
% 16.55/16.81  fof(t65_xboole_1, axiom, ![X1]:r1_xboole_0(X1,k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_xboole_1)).
% 16.55/16.81  fof(c_0_14, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3]:((~(v1_xboole_0(X3))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>![X4]:((~(v1_xboole_0(X4))&m1_subset_1(X4,k1_zfmisc_1(X1)))=>(r1_subset_1(X3,X4)=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X3,X2))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2))))=>![X6]:(((v1_funct_1(X6)&v1_funct_2(X6,X4,X2))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2))))=>((k2_partfun1(X3,X2,X5,k9_subset_1(X1,X3,X4))=k2_partfun1(X4,X2,X6,k9_subset_1(X1,X3,X4))&k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X3)=X5)&k2_partfun1(k4_subset_1(X1,X3,X4),X2,k1_tmap_1(X1,X2,X3,X4,X5,X6),X4)=X6))))))))), inference(assume_negation,[status(cth)],[t6_tmap_1])).
% 16.55/16.81  fof(c_0_15, plain, ![X39, X40, X41, X42, X43, X44, X45]:(((k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X41)=X43|X45!=k1_tmap_1(X39,X40,X41,X42,X43,X44)|(~v1_funct_1(X45)|~v1_funct_2(X45,k4_subset_1(X39,X41,X42),X40)|~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X39,X41,X42),X40))))|k2_partfun1(X41,X40,X43,k9_subset_1(X39,X41,X42))!=k2_partfun1(X42,X40,X44,k9_subset_1(X39,X41,X42))|(~v1_funct_1(X44)|~v1_funct_2(X44,X42,X40)|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X40))))|(~v1_funct_1(X43)|~v1_funct_2(X43,X41,X40)|~m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X40))))|(v1_xboole_0(X42)|~m1_subset_1(X42,k1_zfmisc_1(X39)))|(v1_xboole_0(X41)|~m1_subset_1(X41,k1_zfmisc_1(X39)))|v1_xboole_0(X40)|v1_xboole_0(X39))&(k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X42)=X44|X45!=k1_tmap_1(X39,X40,X41,X42,X43,X44)|(~v1_funct_1(X45)|~v1_funct_2(X45,k4_subset_1(X39,X41,X42),X40)|~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X39,X41,X42),X40))))|k2_partfun1(X41,X40,X43,k9_subset_1(X39,X41,X42))!=k2_partfun1(X42,X40,X44,k9_subset_1(X39,X41,X42))|(~v1_funct_1(X44)|~v1_funct_2(X44,X42,X40)|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X40))))|(~v1_funct_1(X43)|~v1_funct_2(X43,X41,X40)|~m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X40))))|(v1_xboole_0(X42)|~m1_subset_1(X42,k1_zfmisc_1(X39)))|(v1_xboole_0(X41)|~m1_subset_1(X41,k1_zfmisc_1(X39)))|v1_xboole_0(X40)|v1_xboole_0(X39)))&(k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X41)!=X43|k2_partfun1(k4_subset_1(X39,X41,X42),X40,X45,X42)!=X44|X45=k1_tmap_1(X39,X40,X41,X42,X43,X44)|(~v1_funct_1(X45)|~v1_funct_2(X45,k4_subset_1(X39,X41,X42),X40)|~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X39,X41,X42),X40))))|k2_partfun1(X41,X40,X43,k9_subset_1(X39,X41,X42))!=k2_partfun1(X42,X40,X44,k9_subset_1(X39,X41,X42))|(~v1_funct_1(X44)|~v1_funct_2(X44,X42,X40)|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X40))))|(~v1_funct_1(X43)|~v1_funct_2(X43,X41,X40)|~m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X40))))|(v1_xboole_0(X42)|~m1_subset_1(X42,k1_zfmisc_1(X39)))|(v1_xboole_0(X41)|~m1_subset_1(X41,k1_zfmisc_1(X39)))|v1_xboole_0(X40)|v1_xboole_0(X39))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_tmap_1])])])])])).
% 16.55/16.81  fof(c_0_16, plain, ![X46, X47, X48, X49, X50, X51]:(((v1_funct_1(k1_tmap_1(X46,X47,X48,X49,X50,X51))|(v1_xboole_0(X46)|v1_xboole_0(X47)|v1_xboole_0(X48)|~m1_subset_1(X48,k1_zfmisc_1(X46))|v1_xboole_0(X49)|~m1_subset_1(X49,k1_zfmisc_1(X46))|~v1_funct_1(X50)|~v1_funct_2(X50,X48,X47)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X47)))|~v1_funct_1(X51)|~v1_funct_2(X51,X49,X47)|~m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47)))))&(v1_funct_2(k1_tmap_1(X46,X47,X48,X49,X50,X51),k4_subset_1(X46,X48,X49),X47)|(v1_xboole_0(X46)|v1_xboole_0(X47)|v1_xboole_0(X48)|~m1_subset_1(X48,k1_zfmisc_1(X46))|v1_xboole_0(X49)|~m1_subset_1(X49,k1_zfmisc_1(X46))|~v1_funct_1(X50)|~v1_funct_2(X50,X48,X47)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X47)))|~v1_funct_1(X51)|~v1_funct_2(X51,X49,X47)|~m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47))))))&(m1_subset_1(k1_tmap_1(X46,X47,X48,X49,X50,X51),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X46,X48,X49),X47)))|(v1_xboole_0(X46)|v1_xboole_0(X47)|v1_xboole_0(X48)|~m1_subset_1(X48,k1_zfmisc_1(X46))|v1_xboole_0(X49)|~m1_subset_1(X49,k1_zfmisc_1(X46))|~v1_funct_1(X50)|~v1_funct_2(X50,X48,X47)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X47)))|~v1_funct_1(X51)|~v1_funct_2(X51,X49,X47)|~m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k1_tmap_1])])])])).
% 16.55/16.81  fof(c_0_17, negated_conjecture, (~v1_xboole_0(esk1_0)&(~v1_xboole_0(esk2_0)&((~v1_xboole_0(esk3_0)&m1_subset_1(esk3_0,k1_zfmisc_1(esk1_0)))&((~v1_xboole_0(esk4_0)&m1_subset_1(esk4_0,k1_zfmisc_1(esk1_0)))&(r1_subset_1(esk3_0,esk4_0)&(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,esk3_0,esk2_0))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk2_0))))&(((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,esk4_0,esk2_0))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk2_0))))&(k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk3_0)!=esk5_0|k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk4_0)!=esk6_0)))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 16.55/16.81  cnf(c_0_18, plain, (k2_partfun1(k4_subset_1(X1,X2,X3),X4,X5,X3)=X6|v1_xboole_0(X3)|v1_xboole_0(X2)|v1_xboole_0(X4)|v1_xboole_0(X1)|X5!=k1_tmap_1(X1,X4,X2,X3,X7,X6)|~v1_funct_1(X5)|~v1_funct_2(X5,k4_subset_1(X1,X2,X3),X4)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X2,X3),X4)))|k2_partfun1(X2,X4,X7,k9_subset_1(X1,X2,X3))!=k2_partfun1(X3,X4,X6,k9_subset_1(X1,X2,X3))|~v1_funct_1(X6)|~v1_funct_2(X6,X3,X4)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~v1_funct_1(X7)|~v1_funct_2(X7,X2,X4)|~m1_subset_1(X7,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 16.55/16.81  cnf(c_0_19, plain, (m1_subset_1(k1_tmap_1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X3,X4),X2)))|v1_xboole_0(X1)|v1_xboole_0(X2)|v1_xboole_0(X3)|v1_xboole_0(X4)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X1))|~v1_funct_1(X5)|~v1_funct_2(X5,X3,X2)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~v1_funct_1(X6)|~v1_funct_2(X6,X4,X2)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 16.55/16.81  cnf(c_0_20, plain, (v1_funct_1(k1_tmap_1(X1,X2,X3,X4,X5,X6))|v1_xboole_0(X1)|v1_xboole_0(X2)|v1_xboole_0(X3)|v1_xboole_0(X4)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X1))|~v1_funct_1(X5)|~v1_funct_2(X5,X3,X2)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~v1_funct_1(X6)|~v1_funct_2(X6,X4,X2)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 16.55/16.81  cnf(c_0_21, plain, (v1_funct_2(k1_tmap_1(X1,X2,X3,X4,X5,X6),k4_subset_1(X1,X3,X4),X2)|v1_xboole_0(X1)|v1_xboole_0(X2)|v1_xboole_0(X3)|v1_xboole_0(X4)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X1))|~v1_funct_1(X5)|~v1_funct_2(X5,X3,X2)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~v1_funct_1(X6)|~v1_funct_2(X6,X4,X2)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 16.55/16.81  fof(c_0_22, plain, ![X10, X11]:(((r1_tarski(X10,X11)|X10!=X11)&(r1_tarski(X11,X10)|X10!=X11))&(~r1_tarski(X10,X11)|~r1_tarski(X11,X10)|X10=X11)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 16.55/16.81  cnf(c_0_23, negated_conjecture, (k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk3_0)!=esk5_0|k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk4_0)!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_24, plain, (k2_partfun1(k4_subset_1(X1,X2,X3),X4,k1_tmap_1(X1,X4,X2,X3,X5,X6),X3)=X6|v1_xboole_0(X4)|v1_xboole_0(X3)|v1_xboole_0(X2)|v1_xboole_0(X1)|k2_partfun1(X2,X4,X5,k9_subset_1(X1,X2,X3))!=k2_partfun1(X3,X4,X6,k9_subset_1(X1,X2,X3))|~v1_funct_2(X5,X2,X4)|~v1_funct_2(X6,X3,X4)|~v1_funct_1(X5)|~v1_funct_1(X6)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_18]), c_0_19]), c_0_20]), c_0_21])).
% 16.55/16.81  cnf(c_0_25, negated_conjecture, (v1_funct_2(esk5_0,esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_26, negated_conjecture, (v1_funct_2(esk6_0,esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_27, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_28, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_30, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_31, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_32, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_33, negated_conjecture, (~v1_xboole_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_34, negated_conjecture, (~v1_xboole_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_35, negated_conjecture, (~v1_xboole_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_36, negated_conjecture, (~v1_xboole_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_37, plain, (k2_partfun1(k4_subset_1(X1,X2,X3),X4,X5,X2)=X6|v1_xboole_0(X3)|v1_xboole_0(X2)|v1_xboole_0(X4)|v1_xboole_0(X1)|X5!=k1_tmap_1(X1,X4,X2,X3,X6,X7)|~v1_funct_1(X5)|~v1_funct_2(X5,k4_subset_1(X1,X2,X3),X4)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(X1,X2,X3),X4)))|k2_partfun1(X2,X4,X6,k9_subset_1(X1,X2,X3))!=k2_partfun1(X3,X4,X7,k9_subset_1(X1,X2,X3))|~v1_funct_1(X7)|~v1_funct_2(X7,X3,X4)|~m1_subset_1(X7,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~v1_funct_1(X6)|~v1_funct_2(X6,X2,X4)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 16.55/16.81  fof(c_0_38, plain, ![X35, X36, X37, X38]:(~v1_funct_1(X37)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))|k2_partfun1(X35,X36,X37,X38)=k7_relat_1(X37,X38)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_partfun1])])).
% 16.55/16.81  fof(c_0_39, plain, ![X28, X29]:(~v1_relat_1(X29)|~v4_relat_1(X29,X28)|X29=k7_relat_1(X29,X28)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 16.55/16.81  fof(c_0_40, plain, ![X32, X33, X34]:(~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))|v1_relat_1(X34)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 16.55/16.81  fof(c_0_41, plain, ![X21, X22]:((~v4_relat_1(X22,X21)|r1_tarski(k1_relat_1(X22),X21)|~v1_relat_1(X22))&(~r1_tarski(k1_relat_1(X22),X21)|v4_relat_1(X22,X21)|~v1_relat_1(X22))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 16.55/16.81  cnf(c_0_42, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_22])).
% 16.55/16.81  cnf(c_0_43, negated_conjecture, (k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|k2_partfun1(k4_subset_1(esk1_0,esk3_0,esk4_0),esk2_0,k1_tmap_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0),esk3_0)!=esk5_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32])]), c_0_33]), c_0_34]), c_0_35]), c_0_36])).
% 16.55/16.81  cnf(c_0_44, plain, (k2_partfun1(k4_subset_1(X1,X2,X3),X4,k1_tmap_1(X1,X4,X2,X3,X5,X6),X2)=X5|v1_xboole_0(X4)|v1_xboole_0(X3)|v1_xboole_0(X2)|v1_xboole_0(X1)|k2_partfun1(X2,X4,X5,k9_subset_1(X1,X2,X3))!=k2_partfun1(X3,X4,X6,k9_subset_1(X1,X2,X3))|~v1_funct_2(X6,X3,X4)|~v1_funct_2(X5,X2,X4)|~v1_funct_1(X6)|~v1_funct_1(X5)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_37]), c_0_19]), c_0_20]), c_0_21])).
% 16.55/16.81  cnf(c_0_45, plain, (k2_partfun1(X2,X3,X1,X4)=k7_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 16.55/16.81  cnf(c_0_46, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 16.55/16.81  cnf(c_0_47, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 16.55/16.81  cnf(c_0_48, plain, (v4_relat_1(X1,X2)|~r1_tarski(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 16.55/16.81  cnf(c_0_49, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_42])).
% 16.55/16.81  cnf(c_0_50, negated_conjecture, (k2_partfun1(esk4_0,esk2_0,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_26]), c_0_25]), c_0_28]), c_0_27]), c_0_30]), c_0_29]), c_0_31]), c_0_32])]), c_0_33]), c_0_34]), c_0_35]), c_0_36])).
% 16.55/16.81  cnf(c_0_51, plain, (k2_partfun1(X1,X2,X3,X4)=k2_partfun1(X5,X6,X3,X4)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(spm,[status(thm)],[c_0_45, c_0_45])).
% 16.55/16.81  cnf(c_0_52, plain, (k2_partfun1(X1,X2,X3,X4)=X3|~v1_funct_1(X3)|~v4_relat_1(X3,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_47])).
% 16.55/16.81  cnf(c_0_53, plain, (v4_relat_1(X1,k1_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 16.55/16.81  cnf(c_0_54, negated_conjecture, (k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k2_partfun1(esk3_0,esk2_0,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_28]), c_0_30])])).
% 16.55/16.81  fof(c_0_55, plain, ![X13, X14, X15]:(~m1_subset_1(X15,k1_zfmisc_1(X13))|k9_subset_1(X13,X14,X15)=k3_xboole_0(X14,X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k9_subset_1])])).
% 16.55/16.81  fof(c_0_56, plain, ![X16, X17]:k1_setfam_1(k2_tarski(X16,X17))=k3_xboole_0(X16,X17), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 16.55/16.81  fof(c_0_57, plain, ![X8, X9]:((~r1_xboole_0(X8,X9)|k3_xboole_0(X8,X9)=k1_xboole_0)&(k3_xboole_0(X8,X9)!=k1_xboole_0|r1_xboole_0(X8,X9))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 16.55/16.81  cnf(c_0_58, plain, (k2_partfun1(X1,X2,X3,k1_relat_1(X3))=X3|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_47])).
% 16.55/16.81  cnf(c_0_59, negated_conjecture, (k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k2_partfun1(X3,X4,esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_51]), c_0_27]), c_0_29])])).
% 16.55/16.81  cnf(c_0_60, plain, (k9_subset_1(X2,X3,X1)=k3_xboole_0(X3,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 16.55/16.81  cnf(c_0_61, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_56])).
% 16.55/16.81  cnf(c_0_62, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 16.55/16.81  fof(c_0_63, plain, ![X30, X31]:((~r1_subset_1(X30,X31)|r1_xboole_0(X30,X31)|(v1_xboole_0(X30)|v1_xboole_0(X31)))&(~r1_xboole_0(X30,X31)|r1_subset_1(X30,X31)|(v1_xboole_0(X30)|v1_xboole_0(X31)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r1_subset_1])])])])).
% 16.55/16.81  fof(c_0_64, plain, ![X25, X26, X27]:(~v1_relat_1(X27)|(~r1_xboole_0(X25,X26)|k7_relat_1(k7_relat_1(X27,X25),X26)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t207_relat_1])])).
% 16.55/16.81  cnf(c_0_65, plain, (k7_relat_1(X1,k1_relat_1(X1))=X1|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_45, c_0_58])).
% 16.55/16.81  cnf(c_0_66, negated_conjecture, (k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k7_relat_1(esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_45]), c_0_27])])).
% 16.55/16.81  cnf(c_0_67, plain, (k9_subset_1(X2,X3,X1)=k1_setfam_1(k2_tarski(X3,X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_60, c_0_61])).
% 16.55/16.81  cnf(c_0_68, plain, (k1_setfam_1(k2_tarski(X1,X2))=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_62, c_0_61])).
% 16.55/16.81  cnf(c_0_69, plain, (r1_xboole_0(X1,X2)|v1_xboole_0(X1)|v1_xboole_0(X2)|~r1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 16.55/16.81  cnf(c_0_70, negated_conjecture, (r1_subset_1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 16.55/16.81  cnf(c_0_71, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k1_xboole_0|~v1_relat_1(X1)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 16.55/16.81  cnf(c_0_72, negated_conjecture, (k7_relat_1(esk5_0,k1_relat_1(esk5_0))=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_29]), c_0_27])])).
% 16.55/16.81  cnf(c_0_73, negated_conjecture, (v1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_47, c_0_29])).
% 16.55/16.81  fof(c_0_74, plain, ![X12]:r1_xboole_0(X12,k1_xboole_0), inference(variable_rename,[status(thm)],[t65_xboole_1])).
% 16.55/16.81  cnf(c_0_75, negated_conjecture, (k7_relat_1(esk6_0,k1_relat_1(esk6_0))=esk6_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_30]), c_0_28])])).
% 16.55/16.81  cnf(c_0_76, negated_conjecture, (v1_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_47, c_0_30])).
% 16.55/16.81  cnf(c_0_77, negated_conjecture, (k2_partfun1(X1,X2,esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k7_relat_1(esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_66, c_0_29])).
% 16.55/16.81  cnf(c_0_78, plain, (k9_subset_1(X1,X2,X3)=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X3)), inference(spm,[status(thm)],[c_0_67, c_0_68])).
% 16.55/16.81  cnf(c_0_79, negated_conjecture, (r1_xboole_0(esk3_0,esk4_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_35]), c_0_34])).
% 16.55/16.81  cnf(c_0_80, negated_conjecture, (k7_relat_1(esk5_0,X1)=k1_xboole_0|~r1_xboole_0(k1_relat_1(esk5_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_73])])).
% 16.55/16.81  cnf(c_0_81, plain, (r1_xboole_0(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_74])).
% 16.55/16.81  cnf(c_0_82, negated_conjecture, (k7_relat_1(esk6_0,X1)=k1_xboole_0|~r1_xboole_0(k1_relat_1(esk6_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_75]), c_0_76])])).
% 16.55/16.81  cnf(c_0_83, negated_conjecture, (k7_relat_1(esk5_0,k9_subset_1(esk1_0,esk3_0,esk4_0))!=k7_relat_1(esk6_0,k9_subset_1(esk1_0,esk3_0,esk4_0))|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_45]), c_0_28])])).
% 16.55/16.81  cnf(c_0_84, negated_conjecture, (k9_subset_1(X1,esk3_0,esk4_0)=k1_xboole_0|~m1_subset_1(esk4_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_78, c_0_79])).
% 16.55/16.81  cnf(c_0_85, negated_conjecture, (k7_relat_1(esk5_0,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 16.55/16.81  cnf(c_0_86, negated_conjecture, (k7_relat_1(esk6_0,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_82, c_0_81])).
% 16.55/16.81  cnf(c_0_87, negated_conjecture, (~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_84]), c_0_85]), c_0_86]), c_0_31])])).
% 16.55/16.81  cnf(c_0_88, negated_conjecture, ($false), inference(sr,[status(thm)],[c_0_30, c_0_87]), ['proof']).
% 16.55/16.81  # SZS output end CNFRefutation
% 16.55/16.81  # Proof object total steps             : 89
% 16.55/16.81  # Proof object clause steps            : 60
% 16.55/16.81  # Proof object formula steps           : 29
% 16.55/16.81  # Proof object conjectures             : 36
% 16.55/16.81  # Proof object clause conjectures      : 33
% 16.55/16.81  # Proof object formula conjectures     : 3
% 16.55/16.81  # Proof object initial clauses used    : 30
% 16.55/16.81  # Proof object initial formulas used   : 14
% 16.55/16.81  # Proof object generating inferences   : 24
% 16.55/16.81  # Proof object simplifying inferences  : 64
% 16.55/16.81  # Training examples: 0 positive, 0 negative
% 16.55/16.81  # Parsed axioms                        : 16
% 16.55/16.81  # Removed by relevancy pruning/SinE    : 0
% 16.55/16.81  # Initial clauses                      : 38
% 16.55/16.81  # Removed in clause preprocessing      : 1
% 16.55/16.81  # Initial clauses in saturation        : 37
% 16.55/16.81  # Processed clauses                    : 23518
% 16.55/16.81  # ...of these trivial                  : 0
% 16.55/16.81  # ...subsumed                          : 18496
% 16.55/16.81  # ...remaining for further processing  : 5022
% 16.55/16.81  # Other redundant clauses eliminated   : 6939
% 16.55/16.81  # Clauses deleted for lack of memory   : 0
% 16.55/16.81  # Backward-subsumed                    : 1047
% 16.55/16.81  # Backward-rewritten                   : 4
% 16.55/16.81  # Generated clauses                    : 79773
% 16.55/16.81  # ...of the previous two non-trivial   : 72059
% 16.55/16.81  # Contextual simplify-reflections      : 249
% 16.55/16.81  # Paramodulations                      : 72784
% 16.55/16.81  # Factorizations                       : 0
% 16.55/16.81  # Equation resolutions                 : 6989
% 16.55/16.81  # Propositional unsat checks           : 0
% 16.55/16.81  #    Propositional check models        : 0
% 16.55/16.81  #    Propositional check unsatisfiable : 0
% 16.55/16.81  #    Propositional clauses             : 0
% 16.55/16.81  #    Propositional clauses after purity: 0
% 16.55/16.81  #    Propositional unsat core size     : 0
% 16.55/16.81  #    Propositional preprocessing time  : 0.000
% 16.55/16.81  #    Propositional encoding time       : 0.000
% 16.55/16.81  #    Propositional solver time         : 0.000
% 16.55/16.81  #    Success case prop preproc time    : 0.000
% 16.55/16.81  #    Success case prop encoding time   : 0.000
% 16.55/16.81  #    Success case prop solver time     : 0.000
% 16.55/16.81  # Current number of processed clauses  : 3965
% 16.55/16.81  #    Positive orientable unit clauses  : 24
% 16.55/16.81  #    Positive unorientable unit clauses: 0
% 16.55/16.81  #    Negative unit clauses             : 6
% 16.55/16.81  #    Non-unit-clauses                  : 3935
% 16.55/16.81  # Current number of unprocessed clauses: 47215
% 16.55/16.81  # ...number of literals in the above   : 1350754
% 16.55/16.81  # Current number of archived formulas  : 0
% 16.55/16.81  # Current number of archived clauses   : 1053
% 16.55/16.81  # Clause-clause subsumption calls (NU) : 20398748
% 16.55/16.81  # Rec. Clause-clause subsumption calls : 230339
% 16.55/16.81  # Non-unit clause-clause subsumptions  : 19791
% 16.55/16.81  # Unit Clause-clause subsumption calls : 3691
% 16.55/16.81  # Rewrite failures with RHS unbound    : 0
% 16.55/16.81  # BW rewrite match attempts            : 4
% 16.55/16.81  # BW rewrite match successes           : 4
% 16.55/16.81  # Condensation attempts                : 0
% 16.55/16.81  # Condensation successes               : 0
% 16.55/16.81  # Termbank termtop insertions          : 7493878
% 16.64/16.82  
% 16.64/16.82  # -------------------------------------------------
% 16.64/16.82  # User time                : 16.364 s
% 16.64/16.82  # System time              : 0.082 s
% 16.64/16.82  # Total time               : 16.447 s
% 16.64/16.82  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
