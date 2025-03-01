%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:05:58 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :  150 (12302 expanded)
%              Number of clauses        :  111 (4404 expanded)
%              Number of leaves         :   19 (2975 expanded)
%              Depth                    :   17
%              Number of atoms          :  484 (78960 expanded)
%              Number of equality atoms :  119 (2395 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t87_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & v3_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ! [X3] :
          ( ( v1_funct_1(X3)
            & v1_funct_2(X3,X1,X1)
            & v3_funct_2(X3,X1,X1)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
         => ( r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,X3),k6_partfun1(X1))
           => r2_relset_1(X1,X1,X3,k2_funct_2(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t87_funct_2)).

fof(dt_k2_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & v3_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ( v1_funct_1(k2_funct_2(X1,X2))
        & v1_funct_2(k2_funct_2(X1,X2),X1,X1)
        & v3_funct_2(k2_funct_2(X1,X2),X1,X1)
        & m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_2)).

fof(redefinition_k2_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & v3_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => k2_funct_2(X1,X2) = k2_funct_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_funct_2)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

fof(cc2_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( v1_funct_1(X3)
          & v3_funct_2(X3,X1,X2) )
       => ( v1_funct_1(X3)
          & v2_funct_1(X3)
          & v2_funct_2(X3,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_funct_2)).

fof(redefinition_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k1_partfun1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

fof(d3_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v5_relat_1(X2,X1) )
     => ( v2_funct_2(X2,X1)
      <=> k2_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_funct_2)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_funct_1)).

fof(dt_k6_partfun1,axiom,(
    ! [X1] :
      ( v1_partfun1(k6_partfun1(X1),X1)
      & m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_partfun1)).

fof(redefinition_k6_partfun1,axiom,(
    ! [X1] : k6_partfun1(X1) = k6_relat_1(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

fof(dt_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => ( v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))
        & m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_partfun1)).

fof(t24_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
         => ( r2_relset_1(X2,X2,k1_partfun1(X2,X1,X1,X2,X4,X3),k6_partfun1(X2))
           => k2_relset_1(X1,X2,X3) = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_funct_2)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(redefinition_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_relset_1(X1,X2,X3,X4)
      <=> X3 = X4 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

fof(t64_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( v2_funct_1(X1)
              & k2_relat_1(X2) = k1_relat_1(X1)
              & k5_relat_1(X2,X1) = k6_relat_1(k2_relat_1(X1)) )
           => X2 = k2_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_funct_1)).

fof(t35_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( k2_relset_1(X1,X2,X3) = X2
          & v2_funct_1(X3) )
       => ( X2 = k1_xboole_0
          | ( k5_relat_1(X3,k2_funct_1(X3)) = k6_partfun1(X1)
            & k5_relat_1(k2_funct_1(X3),X3) = k6_partfun1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_funct_2)).

fof(t64_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( ( k1_relat_1(X1) = k1_xboole_0
          | k2_relat_1(X1) = k1_xboole_0 )
       => X1 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_funct_1(X2)
          & v1_funct_2(X2,X1,X1)
          & v3_funct_2(X2,X1,X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
       => ! [X3] :
            ( ( v1_funct_1(X3)
              & v1_funct_2(X3,X1,X1)
              & v3_funct_2(X3,X1,X1)
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
           => ( r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,X3),k6_partfun1(X1))
             => r2_relset_1(X1,X1,X3,k2_funct_2(X1,X2)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t87_funct_2])).

fof(c_0_20,plain,(
    ! [X36,X37] :
      ( ( v1_funct_1(k2_funct_2(X36,X37))
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X36,X36)
        | ~ v3_funct_2(X37,X36,X36)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36))) )
      & ( v1_funct_2(k2_funct_2(X36,X37),X36,X36)
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X36,X36)
        | ~ v3_funct_2(X37,X36,X36)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36))) )
      & ( v3_funct_2(k2_funct_2(X36,X37),X36,X36)
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X36,X36)
        | ~ v3_funct_2(X37,X36,X36)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36))) )
      & ( m1_subset_1(k2_funct_2(X36,X37),k1_zfmisc_1(k2_zfmisc_1(X36,X36)))
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X36,X36)
        | ~ v3_funct_2(X37,X36,X36)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_2])])])).

fof(c_0_21,negated_conjecture,
    ( v1_funct_1(esk2_0)
    & v1_funct_2(esk2_0,esk1_0,esk1_0)
    & v3_funct_2(esk2_0,esk1_0,esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    & v1_funct_1(esk3_0)
    & v1_funct_2(esk3_0,esk1_0,esk1_0)
    & v3_funct_2(esk3_0,esk1_0,esk1_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    & r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k6_partfun1(esk1_0))
    & ~ r2_relset_1(esk1_0,esk1_0,esk3_0,k2_funct_2(esk1_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).

fof(c_0_22,plain,(
    ! [X45,X46] :
      ( ~ v1_funct_1(X46)
      | ~ v1_funct_2(X46,X45,X45)
      | ~ v3_funct_2(X46,X45,X45)
      | ~ m1_subset_1(X46,k1_zfmisc_1(k2_zfmisc_1(X45,X45)))
      | k2_funct_2(X45,X46) = k2_funct_1(X46) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_funct_2])])).

fof(c_0_23,plain,(
    ! [X7,X8] :
      ( ~ v1_relat_1(X7)
      | ~ m1_subset_1(X8,k1_zfmisc_1(X7))
      | v1_relat_1(X8) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_24,plain,(
    ! [X9,X10] : v1_relat_1(k2_zfmisc_1(X9,X10)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

cnf(c_0_25,plain,
    ( m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( v1_funct_2(esk3_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( v3_funct_2(esk3_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,plain,
    ( k2_funct_2(X2,X1) = k2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X2)
    | ~ v3_funct_2(X1,X2,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_31,plain,(
    ! [X25,X26,X27] :
      ( ( v1_funct_1(X27)
        | ~ v1_funct_1(X27)
        | ~ v3_funct_2(X27,X25,X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( v2_funct_1(X27)
        | ~ v1_funct_1(X27)
        | ~ v3_funct_2(X27,X25,X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( v2_funct_2(X27,X26)
        | ~ v1_funct_1(X27)
        | ~ v3_funct_2(X27,X25,X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_funct_2])])])).

fof(c_0_32,plain,(
    ! [X39,X40,X41,X42,X43,X44] :
      ( ~ v1_funct_1(X43)
      | ~ m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))
      | ~ v1_funct_1(X44)
      | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X41,X42)))
      | k1_partfun1(X39,X40,X41,X42,X43,X44) = k5_relat_1(X43,X44) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).

fof(c_0_33,plain,(
    ! [X28,X29] :
      ( ( ~ v2_funct_2(X29,X28)
        | k2_relat_1(X29) = X28
        | ~ v1_relat_1(X29)
        | ~ v5_relat_1(X29,X28) )
      & ( k2_relat_1(X29) != X28
        | v2_funct_2(X29,X28)
        | ~ v1_relat_1(X29)
        | ~ v5_relat_1(X29,X28) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_funct_2])])])).

cnf(c_0_34,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_35,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_36,plain,(
    ! [X18,X19,X20] :
      ( ( v4_relat_1(X20,X18)
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) )
      & ( v5_relat_1(X20,X19)
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(k2_funct_2(esk1_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27]),c_0_28]),c_0_29])])).

cnf(c_0_38,negated_conjecture,
    ( k2_funct_2(X1,esk3_0) = k2_funct_1(esk3_0)
    | ~ v1_funct_2(esk3_0,X1,X1)
    | ~ v3_funct_2(esk3_0,X1,X1)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_29])).

fof(c_0_39,plain,(
    ! [X12] :
      ( ( k2_relat_1(X12) = k1_relat_1(k2_funct_1(X12))
        | ~ v2_funct_1(X12)
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) )
      & ( k1_relat_1(X12) = k2_relat_1(k2_funct_1(X12))
        | ~ v2_funct_1(X12)
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

cnf(c_0_40,plain,
    ( v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v3_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_41,plain,
    ( v3_funct_2(k2_funct_2(X1,X2),X1,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_42,plain,
    ( v1_funct_1(k2_funct_2(X1,X2))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_43,plain,
    ( k1_partfun1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

fof(c_0_44,plain,(
    ! [X38] :
      ( v1_partfun1(k6_partfun1(X38),X38)
      & m1_subset_1(k6_partfun1(X38),k1_zfmisc_1(k2_zfmisc_1(X38,X38))) ) ),
    inference(variable_rename,[status(thm)],[dt_k6_partfun1])).

fof(c_0_45,plain,(
    ! [X47] : k6_partfun1(X47) = k6_relat_1(X47) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).

fof(c_0_46,plain,(
    ! [X30,X31,X32,X33,X34,X35] :
      ( ( v1_funct_1(k1_partfun1(X30,X31,X32,X33,X34,X35))
        | ~ v1_funct_1(X34)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
        | ~ v1_funct_1(X35)
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X32,X33))) )
      & ( m1_subset_1(k1_partfun1(X30,X31,X32,X33,X34,X35),k1_zfmisc_1(k2_zfmisc_1(X30,X33)))
        | ~ v1_funct_1(X34)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
        | ~ v1_funct_1(X35)
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X32,X33))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).

cnf(c_0_47,plain,
    ( k2_relat_1(X1) = X2
    | ~ v2_funct_2(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v5_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_48,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_26]),c_0_35])])).

cnf(c_0_49,plain,
    ( v2_funct_2(X1,X2)
    | ~ v1_funct_1(X1)
    | ~ v3_funct_2(X1,X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_50,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_51,negated_conjecture,
    ( v1_relat_1(k2_funct_2(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_37]),c_0_35])])).

cnf(c_0_52,negated_conjecture,
    ( k2_funct_2(esk1_0,esk3_0) = k2_funct_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_28]),c_0_27]),c_0_26])])).

cnf(c_0_53,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_54,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_26]),c_0_28]),c_0_29])])).

cnf(c_0_55,negated_conjecture,
    ( v3_funct_2(k2_funct_2(esk1_0,esk3_0),esk1_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_27]),c_0_28]),c_0_29]),c_0_26])])).

cnf(c_0_56,negated_conjecture,
    ( v1_funct_1(k2_funct_2(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_26]),c_0_27]),c_0_28]),c_0_29])])).

fof(c_0_57,plain,(
    ! [X48,X49,X50,X51] :
      ( ~ v1_funct_1(X50)
      | ~ v1_funct_2(X50,X48,X49)
      | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49)))
      | ~ v1_funct_1(X51)
      | ~ v1_funct_2(X51,X49,X48)
      | ~ m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X48)))
      | ~ r2_relset_1(X49,X49,k1_partfun1(X49,X48,X48,X49,X51,X50),k6_partfun1(X49))
      | k2_relset_1(X48,X49,X50) = X49 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t24_funct_2])])])).

cnf(c_0_58,negated_conjecture,
    ( k1_partfun1(X1,X2,esk1_0,esk1_0,X3,esk3_0) = k5_relat_1(X3,esk3_0)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_26]),c_0_29])])).

cnf(c_0_59,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_60,plain,(
    ! [X15,X16,X17] :
      ( ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))
      | v1_relat_1(X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_61,plain,(
    ! [X21,X22,X23,X24] :
      ( ( ~ r2_relset_1(X21,X22,X23,X24)
        | X23 = X24
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( X23 != X24
        | r2_relset_1(X21,X22,X23,X24)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).

cnf(c_0_62,plain,
    ( m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_63,plain,
    ( k6_partfun1(X1) = k6_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_64,plain,
    ( m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X6)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_65,negated_conjecture,
    ( k2_relat_1(esk3_0) = X1
    | ~ v2_funct_2(esk3_0,X1)
    | ~ v5_relat_1(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_66,negated_conjecture,
    ( v2_funct_2(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_26]),c_0_28]),c_0_29])])).

cnf(c_0_67,negated_conjecture,
    ( v5_relat_1(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_26])).

cnf(c_0_68,negated_conjecture,
    ( v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_69,negated_conjecture,
    ( k2_relat_1(k2_funct_1(esk3_0)) = k1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_29]),c_0_48])]),c_0_54])])).

cnf(c_0_70,negated_conjecture,
    ( v2_funct_2(k2_funct_2(esk1_0,esk3_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_37]),c_0_55]),c_0_56])])).

cnf(c_0_71,negated_conjecture,
    ( v5_relat_1(k2_funct_2(esk1_0,esk3_0),esk1_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_37])).

cnf(c_0_72,plain,
    ( k2_relset_1(X2,X3,X1) = X3
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,X3,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_partfun1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_73,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k6_partfun1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_74,negated_conjecture,
    ( k1_partfun1(X1,X2,esk1_0,esk1_0,esk2_0,esk3_0) = k5_relat_1(esk2_0,esk3_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_58,c_0_59])).

cnf(c_0_75,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_76,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_77,plain,
    ( X3 = X4
    | ~ r2_relset_1(X1,X2,X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_78,plain,
    ( m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(rw,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_79,negated_conjecture,
    ( m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,esk3_0),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_64,c_0_29])).

fof(c_0_80,plain,(
    ! [X13,X14] :
      ( ~ v1_relat_1(X13)
      | ~ v1_funct_1(X13)
      | ~ v1_relat_1(X14)
      | ~ v1_funct_1(X14)
      | ~ v2_funct_1(X13)
      | k2_relat_1(X14) != k1_relat_1(X13)
      | k5_relat_1(X14,X13) != k6_relat_1(k2_relat_1(X13))
      | X14 = k2_funct_1(X13) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_funct_1])])])).

cnf(c_0_81,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_82,negated_conjecture,
    ( k2_relat_1(esk3_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_67])])).

cnf(c_0_83,negated_conjecture,
    ( k1_relat_1(esk3_0) = X1
    | ~ v2_funct_2(k2_funct_1(esk3_0),X1)
    | ~ v5_relat_1(k2_funct_1(esk3_0),X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_68]),c_0_69])).

cnf(c_0_84,negated_conjecture,
    ( v2_funct_2(k2_funct_1(esk3_0),esk1_0) ),
    inference(rw,[status(thm)],[c_0_70,c_0_52])).

cnf(c_0_85,negated_conjecture,
    ( v5_relat_1(k2_funct_1(esk3_0),esk1_0) ),
    inference(rw,[status(thm)],[c_0_71,c_0_52])).

cnf(c_0_86,negated_conjecture,
    ( v2_funct_1(k2_funct_2(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_37]),c_0_55]),c_0_56])])).

fof(c_0_87,plain,(
    ! [X52,X53,X54] :
      ( ( k5_relat_1(X54,k2_funct_1(X54)) = k6_partfun1(X52)
        | X53 = k1_xboole_0
        | k2_relset_1(X52,X53,X54) != X53
        | ~ v2_funct_1(X54)
        | ~ v1_funct_1(X54)
        | ~ v1_funct_2(X54,X52,X53)
        | ~ m1_subset_1(X54,k1_zfmisc_1(k2_zfmisc_1(X52,X53))) )
      & ( k5_relat_1(k2_funct_1(X54),X54) = k6_partfun1(X53)
        | X53 = k1_xboole_0
        | k2_relset_1(X52,X53,X54) != X53
        | ~ v2_funct_1(X54)
        | ~ v1_funct_1(X54)
        | ~ v1_funct_2(X54,X52,X53)
        | ~ m1_subset_1(X54,k1_zfmisc_1(k2_zfmisc_1(X52,X53))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_funct_2])])])).

cnf(c_0_88,plain,
    ( k2_relset_1(X2,X3,X1) = X3
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X4,X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_relat_1(X3)) ),
    inference(rw,[status(thm)],[c_0_72,c_0_63])).

cnf(c_0_89,negated_conjecture,
    ( v1_funct_2(esk2_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_90,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_73,c_0_63])).

cnf(c_0_91,negated_conjecture,
    ( k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) = k5_relat_1(esk2_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_74,c_0_75])).

cnf(c_0_92,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(spm,[status(thm)],[c_0_76,c_0_75])).

cnf(c_0_93,negated_conjecture,
    ( v3_funct_2(esk2_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_94,plain,
    ( X1 = k6_relat_1(X2)
    | ~ r2_relset_1(X2,X2,X1,k6_relat_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2))) ),
    inference(spm,[status(thm)],[c_0_77,c_0_78])).

cnf(c_0_95,negated_conjecture,
    ( m1_subset_1(k1_partfun1(X1,X2,esk1_0,esk1_0,X3,esk3_0),k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_79,c_0_26])).

cnf(c_0_96,plain,
    ( X2 = k2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | k2_relat_1(X2) != k1_relat_1(X1)
    | k5_relat_1(X2,X1) != k6_relat_1(k2_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_80])).

cnf(c_0_97,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk3_0)) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_48]),c_0_29])]),c_0_82]),c_0_54])])).

cnf(c_0_98,negated_conjecture,
    ( k1_relat_1(esk3_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_84]),c_0_85])])).

cnf(c_0_99,negated_conjecture,
    ( v2_funct_1(k2_funct_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_86,c_0_52])).

cnf(c_0_100,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_56,c_0_52])).

cnf(c_0_101,plain,
    ( k5_relat_1(X1,k2_funct_1(X1)) = k6_partfun1(X2)
    | X3 = k1_xboole_0
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_87])).

cnf(c_0_102,negated_conjecture,
    ( k2_relset_1(esk1_0,esk1_0,X1) = esk1_0
    | ~ v1_funct_2(X1,esk1_0,esk1_0)
    | ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,X1),k6_relat_1(esk1_0))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_75]),c_0_89]),c_0_59])])).

cnf(c_0_103,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k5_relat_1(esk2_0,esk3_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_90,c_0_91])).

cnf(c_0_104,negated_conjecture,
    ( k2_relat_1(esk2_0) = X1
    | ~ v2_funct_2(esk2_0,X1)
    | ~ v5_relat_1(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_92])).

cnf(c_0_105,negated_conjecture,
    ( v5_relat_1(esk2_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_75])).

cnf(c_0_106,negated_conjecture,
    ( v2_funct_2(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_75]),c_0_93]),c_0_59])])).

cnf(c_0_107,negated_conjecture,
    ( k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) = k6_relat_1(esk1_0)
    | ~ m1_subset_1(k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(spm,[status(thm)],[c_0_94,c_0_90])).

cnf(c_0_108,negated_conjecture,
    ( m1_subset_1(k1_partfun1(X1,X2,esk1_0,esk1_0,esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_95,c_0_59])).

cnf(c_0_109,negated_conjecture,
    ( X1 = k2_funct_1(k2_funct_1(esk3_0))
    | k5_relat_1(X1,k2_funct_1(esk3_0)) != k6_relat_1(esk1_0)
    | k2_relat_1(X1) != esk1_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96,c_0_97]),c_0_69]),c_0_98]),c_0_99]),c_0_100]),c_0_68])])).

cnf(c_0_110,plain,
    ( X3 = k1_xboole_0
    | k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(X2)
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(rw,[status(thm)],[c_0_101,c_0_63])).

cnf(c_0_111,negated_conjecture,
    ( k2_relset_1(esk1_0,esk1_0,esk3_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_102,c_0_26]),c_0_27]),c_0_91]),c_0_103]),c_0_29])])).

cnf(c_0_112,negated_conjecture,
    ( X1 = k2_funct_1(esk3_0)
    | k5_relat_1(X1,esk3_0) != k6_relat_1(esk1_0)
    | k2_relat_1(X1) != esk1_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96,c_0_98]),c_0_82]),c_0_54]),c_0_29]),c_0_48])])).

cnf(c_0_113,negated_conjecture,
    ( k2_relat_1(esk2_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104,c_0_105]),c_0_106])])).

cnf(c_0_114,negated_conjecture,
    ( k6_relat_1(esk1_0) = k5_relat_1(esk2_0,esk3_0)
    | ~ m1_subset_1(k5_relat_1(esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_107,c_0_91]),c_0_91])).

cnf(c_0_115,negated_conjecture,
    ( m1_subset_1(k5_relat_1(esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_108,c_0_75]),c_0_91])).

fof(c_0_116,plain,(
    ! [X11] :
      ( ( k1_relat_1(X11) != k1_xboole_0
        | X11 = k1_xboole_0
        | ~ v1_relat_1(X11) )
      & ( k2_relat_1(X11) != k1_xboole_0
        | X11 = k1_xboole_0
        | ~ v1_relat_1(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).

cnf(c_0_117,negated_conjecture,
    ( k2_funct_2(X1,esk2_0) = k2_funct_1(esk2_0)
    | ~ v1_funct_2(esk2_0,X1,X1)
    | ~ v3_funct_2(esk2_0,X1,X1)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_59])).

cnf(c_0_118,negated_conjecture,
    ( k2_funct_1(k2_funct_1(esk3_0)) = esk3_0
    | k5_relat_1(esk3_0,k2_funct_1(esk3_0)) != k6_relat_1(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_109,c_0_29]),c_0_82]),c_0_48])])).

cnf(c_0_119,negated_conjecture,
    ( k5_relat_1(esk3_0,k2_funct_1(esk3_0)) = k6_relat_1(esk1_0)
    | esk1_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_110,c_0_111]),c_0_27]),c_0_54]),c_0_29]),c_0_26])])).

cnf(c_0_120,negated_conjecture,
    ( k2_funct_1(esk3_0) = esk2_0
    | k6_relat_1(esk1_0) != k5_relat_1(esk2_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_112,c_0_59]),c_0_113]),c_0_92])])).

cnf(c_0_121,negated_conjecture,
    ( k6_relat_1(esk1_0) = k5_relat_1(esk2_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_114,c_0_115])])).

cnf(c_0_122,plain,
    ( r2_relset_1(X3,X4,X1,X2)
    | X1 != X2
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_123,negated_conjecture,
    ( m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_75]),c_0_89]),c_0_93]),c_0_59])])).

cnf(c_0_124,plain,
    ( X1 = k1_xboole_0
    | k2_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_116])).

cnf(c_0_125,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,esk3_0,k2_funct_2(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_126,negated_conjecture,
    ( k2_funct_2(esk1_0,esk2_0) = k2_funct_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_117,c_0_75]),c_0_89]),c_0_93])])).

cnf(c_0_127,negated_conjecture,
    ( k2_funct_1(k2_funct_1(esk3_0)) = esk3_0
    | esk1_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_118,c_0_119])).

cnf(c_0_128,negated_conjecture,
    ( k2_funct_1(esk3_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_120,c_0_121])])).

cnf(c_0_129,plain,
    ( r2_relset_1(X1,X2,X3,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(er,[status(thm)],[c_0_122])).

cnf(c_0_130,plain,
    ( X1 = k1_xboole_0
    | k1_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_116])).

cnf(c_0_131,negated_conjecture,
    ( v1_relat_1(k2_funct_2(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_123]),c_0_35])])).

cnf(c_0_132,negated_conjecture,
    ( v2_funct_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_75]),c_0_93]),c_0_59])])).

cnf(c_0_133,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | k2_relat_1(esk2_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_124,c_0_92])).

cnf(c_0_134,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,esk3_0,k2_funct_1(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_125,c_0_126])).

cnf(c_0_135,negated_conjecture,
    ( k2_funct_1(esk2_0) = esk3_0
    | esk1_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_127,c_0_128])).

cnf(c_0_136,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,esk3_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_129,c_0_26])).

cnf(c_0_137,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | k2_relat_1(esk3_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_124,c_0_48])).

cnf(c_0_138,negated_conjecture,
    ( k2_funct_2(esk1_0,esk2_0) = k1_xboole_0
    | k1_relat_1(k2_funct_2(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_130,c_0_131])).

cnf(c_0_139,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk2_0)) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_92]),c_0_59])]),c_0_113]),c_0_132])])).

cnf(c_0_140,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk1_0 != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_133,c_0_113])).

cnf(c_0_141,negated_conjecture,
    ( esk1_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_134,c_0_135]),c_0_136])])).

cnf(c_0_142,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | esk1_0 != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_137,c_0_82])).

cnf(c_0_143,negated_conjecture,
    ( k2_funct_1(esk2_0) = k1_xboole_0
    | esk1_0 != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_138,c_0_126]),c_0_126]),c_0_139])).

cnf(c_0_144,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_140,c_0_141])])).

cnf(c_0_145,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_142,c_0_141])])).

cnf(c_0_146,negated_conjecture,
    ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_143,c_0_141])]),c_0_144])).

cnf(c_0_147,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,esk2_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_129,c_0_75])).

cnf(c_0_148,negated_conjecture,
    ( ~ r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_134,c_0_141]),c_0_141]),c_0_145]),c_0_144]),c_0_146])).

cnf(c_0_149,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_147,c_0_141]),c_0_141]),c_0_144]),c_0_144]),c_0_148]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n021.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 13:26:49 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.52  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S05EI
% 0.19/0.52  # and selection function SelectDivPreferIntoLits.
% 0.19/0.52  #
% 0.19/0.52  # Preprocessing time       : 0.052 s
% 0.19/0.52  # Presaturation interreduction done
% 0.19/0.52  
% 0.19/0.52  # Proof found!
% 0.19/0.52  # SZS status Theorem
% 0.19/0.52  # SZS output start CNFRefutation
% 0.19/0.52  fof(t87_funct_2, conjecture, ![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X3]:((((v1_funct_1(X3)&v1_funct_2(X3,X1,X1))&v3_funct_2(X3,X1,X1))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,X3),k6_partfun1(X1))=>r2_relset_1(X1,X1,X3,k2_funct_2(X1,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t87_funct_2)).
% 0.19/0.52  fof(dt_k2_funct_2, axiom, ![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(((v1_funct_1(k2_funct_2(X1,X2))&v1_funct_2(k2_funct_2(X1,X2),X1,X1))&v3_funct_2(k2_funct_2(X1,X2),X1,X1))&m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_2)).
% 0.19/0.52  fof(redefinition_k2_funct_2, axiom, ![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>k2_funct_2(X1,X2)=k2_funct_1(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_funct_2)).
% 0.19/0.52  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.19/0.52  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.19/0.52  fof(cc2_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>((v1_funct_1(X3)&v3_funct_2(X3,X1,X2))=>((v1_funct_1(X3)&v2_funct_1(X3))&v2_funct_2(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_funct_2)).
% 0.19/0.52  fof(redefinition_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k1_partfun1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_partfun1)).
% 0.19/0.52  fof(d3_funct_2, axiom, ![X1, X2]:((v1_relat_1(X2)&v5_relat_1(X2,X1))=>(v2_funct_2(X2,X1)<=>k2_relat_1(X2)=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_funct_2)).
% 0.19/0.52  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.19/0.52  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_funct_1)).
% 0.19/0.52  fof(dt_k6_partfun1, axiom, ![X1]:(v1_partfun1(k6_partfun1(X1),X1)&m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_partfun1)).
% 0.19/0.52  fof(redefinition_k6_partfun1, axiom, ![X1]:k6_partfun1(X1)=k6_relat_1(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 0.19/0.52  fof(dt_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>(v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))&m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_partfun1)).
% 0.19/0.52  fof(t24_funct_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(r2_relset_1(X2,X2,k1_partfun1(X2,X1,X1,X2,X4,X3),k6_partfun1(X2))=>k2_relset_1(X1,X2,X3)=X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_funct_2)).
% 0.19/0.52  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.19/0.52  fof(redefinition_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_relset_1(X1,X2,X3,X4)<=>X3=X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 0.19/0.52  fof(t64_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X2)=k1_relat_1(X1))&k5_relat_1(X2,X1)=k6_relat_1(k2_relat_1(X1)))=>X2=k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_funct_1)).
% 0.19/0.52  fof(t35_funct_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((k2_relset_1(X1,X2,X3)=X2&v2_funct_1(X3))=>(X2=k1_xboole_0|(k5_relat_1(X3,k2_funct_1(X3))=k6_partfun1(X1)&k5_relat_1(k2_funct_1(X3),X3)=k6_partfun1(X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_funct_2)).
% 0.19/0.52  fof(t64_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_relat_1)).
% 0.19/0.52  fof(c_0_19, negated_conjecture, ~(![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X3]:((((v1_funct_1(X3)&v1_funct_2(X3,X1,X1))&v3_funct_2(X3,X1,X1))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,X3),k6_partfun1(X1))=>r2_relset_1(X1,X1,X3,k2_funct_2(X1,X2)))))), inference(assume_negation,[status(cth)],[t87_funct_2])).
% 0.19/0.52  fof(c_0_20, plain, ![X36, X37]:((((v1_funct_1(k2_funct_2(X36,X37))|(~v1_funct_1(X37)|~v1_funct_2(X37,X36,X36)|~v3_funct_2(X37,X36,X36)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36)))))&(v1_funct_2(k2_funct_2(X36,X37),X36,X36)|(~v1_funct_1(X37)|~v1_funct_2(X37,X36,X36)|~v3_funct_2(X37,X36,X36)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36))))))&(v3_funct_2(k2_funct_2(X36,X37),X36,X36)|(~v1_funct_1(X37)|~v1_funct_2(X37,X36,X36)|~v3_funct_2(X37,X36,X36)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36))))))&(m1_subset_1(k2_funct_2(X36,X37),k1_zfmisc_1(k2_zfmisc_1(X36,X36)))|(~v1_funct_1(X37)|~v1_funct_2(X37,X36,X36)|~v3_funct_2(X37,X36,X36)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X36,X36)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_2])])])).
% 0.19/0.52  fof(c_0_21, negated_conjecture, ((((v1_funct_1(esk2_0)&v1_funct_2(esk2_0,esk1_0,esk1_0))&v3_funct_2(esk2_0,esk1_0,esk1_0))&m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))))&((((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,esk1_0,esk1_0))&v3_funct_2(esk3_0,esk1_0,esk1_0))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))))&(r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k6_partfun1(esk1_0))&~r2_relset_1(esk1_0,esk1_0,esk3_0,k2_funct_2(esk1_0,esk2_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).
% 0.19/0.52  fof(c_0_22, plain, ![X45, X46]:(~v1_funct_1(X46)|~v1_funct_2(X46,X45,X45)|~v3_funct_2(X46,X45,X45)|~m1_subset_1(X46,k1_zfmisc_1(k2_zfmisc_1(X45,X45)))|k2_funct_2(X45,X46)=k2_funct_1(X46)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_funct_2])])).
% 0.19/0.52  fof(c_0_23, plain, ![X7, X8]:(~v1_relat_1(X7)|(~m1_subset_1(X8,k1_zfmisc_1(X7))|v1_relat_1(X8))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.19/0.52  fof(c_0_24, plain, ![X9, X10]:v1_relat_1(k2_zfmisc_1(X9,X10)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.19/0.52  cnf(c_0_25, plain, (m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.52  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_27, negated_conjecture, (v1_funct_2(esk3_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_28, negated_conjecture, (v3_funct_2(esk3_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_29, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_30, plain, (k2_funct_2(X2,X1)=k2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X2)|~v3_funct_2(X1,X2,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.52  fof(c_0_31, plain, ![X25, X26, X27]:(((v1_funct_1(X27)|(~v1_funct_1(X27)|~v3_funct_2(X27,X25,X26))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))))&(v2_funct_1(X27)|(~v1_funct_1(X27)|~v3_funct_2(X27,X25,X26))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))))&(v2_funct_2(X27,X26)|(~v1_funct_1(X27)|~v3_funct_2(X27,X25,X26))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_funct_2])])])).
% 0.19/0.52  fof(c_0_32, plain, ![X39, X40, X41, X42, X43, X44]:(~v1_funct_1(X43)|~m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))|~v1_funct_1(X44)|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X41,X42)))|k1_partfun1(X39,X40,X41,X42,X43,X44)=k5_relat_1(X43,X44)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).
% 0.19/0.52  fof(c_0_33, plain, ![X28, X29]:((~v2_funct_2(X29,X28)|k2_relat_1(X29)=X28|(~v1_relat_1(X29)|~v5_relat_1(X29,X28)))&(k2_relat_1(X29)!=X28|v2_funct_2(X29,X28)|(~v1_relat_1(X29)|~v5_relat_1(X29,X28)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_funct_2])])])).
% 0.19/0.52  cnf(c_0_34, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.52  cnf(c_0_35, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.52  fof(c_0_36, plain, ![X18, X19, X20]:((v4_relat_1(X20,X18)|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))))&(v5_relat_1(X20,X19)|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.19/0.52  cnf(c_0_37, negated_conjecture, (m1_subset_1(k2_funct_2(esk1_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27]), c_0_28]), c_0_29])])).
% 0.19/0.52  cnf(c_0_38, negated_conjecture, (k2_funct_2(X1,esk3_0)=k2_funct_1(esk3_0)|~v1_funct_2(esk3_0,X1,X1)|~v3_funct_2(esk3_0,X1,X1)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(spm,[status(thm)],[c_0_30, c_0_29])).
% 0.19/0.52  fof(c_0_39, plain, ![X12]:((k2_relat_1(X12)=k1_relat_1(k2_funct_1(X12))|~v2_funct_1(X12)|(~v1_relat_1(X12)|~v1_funct_1(X12)))&(k1_relat_1(X12)=k2_relat_1(k2_funct_1(X12))|~v2_funct_1(X12)|(~v1_relat_1(X12)|~v1_funct_1(X12)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 0.19/0.52  cnf(c_0_40, plain, (v2_funct_1(X1)|~v1_funct_1(X1)|~v3_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.52  cnf(c_0_41, plain, (v3_funct_2(k2_funct_2(X1,X2),X1,X1)|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.52  cnf(c_0_42, plain, (v1_funct_1(k2_funct_2(X1,X2))|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.52  cnf(c_0_43, plain, (k1_partfun1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.19/0.52  fof(c_0_44, plain, ![X38]:(v1_partfun1(k6_partfun1(X38),X38)&m1_subset_1(k6_partfun1(X38),k1_zfmisc_1(k2_zfmisc_1(X38,X38)))), inference(variable_rename,[status(thm)],[dt_k6_partfun1])).
% 0.19/0.52  fof(c_0_45, plain, ![X47]:k6_partfun1(X47)=k6_relat_1(X47), inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).
% 0.19/0.52  fof(c_0_46, plain, ![X30, X31, X32, X33, X34, X35]:((v1_funct_1(k1_partfun1(X30,X31,X32,X33,X34,X35))|(~v1_funct_1(X34)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|~v1_funct_1(X35)|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))))&(m1_subset_1(k1_partfun1(X30,X31,X32,X33,X34,X35),k1_zfmisc_1(k2_zfmisc_1(X30,X33)))|(~v1_funct_1(X34)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|~v1_funct_1(X35)|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).
% 0.19/0.52  cnf(c_0_47, plain, (k2_relat_1(X1)=X2|~v2_funct_2(X1,X2)|~v1_relat_1(X1)|~v5_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.19/0.52  cnf(c_0_48, negated_conjecture, (v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_26]), c_0_35])])).
% 0.19/0.52  cnf(c_0_49, plain, (v2_funct_2(X1,X2)|~v1_funct_1(X1)|~v3_funct_2(X1,X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.52  cnf(c_0_50, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.19/0.52  cnf(c_0_51, negated_conjecture, (v1_relat_1(k2_funct_2(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_37]), c_0_35])])).
% 0.19/0.52  cnf(c_0_52, negated_conjecture, (k2_funct_2(esk1_0,esk3_0)=k2_funct_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_28]), c_0_27]), c_0_26])])).
% 0.19/0.52  cnf(c_0_53, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.52  cnf(c_0_54, negated_conjecture, (v2_funct_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_26]), c_0_28]), c_0_29])])).
% 0.19/0.52  cnf(c_0_55, negated_conjecture, (v3_funct_2(k2_funct_2(esk1_0,esk3_0),esk1_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_27]), c_0_28]), c_0_29]), c_0_26])])).
% 0.19/0.52  cnf(c_0_56, negated_conjecture, (v1_funct_1(k2_funct_2(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_26]), c_0_27]), c_0_28]), c_0_29])])).
% 0.19/0.52  fof(c_0_57, plain, ![X48, X49, X50, X51]:(~v1_funct_1(X50)|~v1_funct_2(X50,X48,X49)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49)))|(~v1_funct_1(X51)|~v1_funct_2(X51,X49,X48)|~m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X48)))|(~r2_relset_1(X49,X49,k1_partfun1(X49,X48,X48,X49,X51,X50),k6_partfun1(X49))|k2_relset_1(X48,X49,X50)=X49))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t24_funct_2])])])).
% 0.19/0.52  cnf(c_0_58, negated_conjecture, (k1_partfun1(X1,X2,esk1_0,esk1_0,X3,esk3_0)=k5_relat_1(X3,esk3_0)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_26]), c_0_29])])).
% 0.19/0.52  cnf(c_0_59, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  fof(c_0_60, plain, ![X15, X16, X17]:(~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))|v1_relat_1(X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.19/0.52  fof(c_0_61, plain, ![X21, X22, X23, X24]:((~r2_relset_1(X21,X22,X23,X24)|X23=X24|(~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))))&(X23!=X24|r2_relset_1(X21,X22,X23,X24)|(~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).
% 0.19/0.52  cnf(c_0_62, plain, (m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.19/0.52  cnf(c_0_63, plain, (k6_partfun1(X1)=k6_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.19/0.52  cnf(c_0_64, plain, (m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X6)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.19/0.52  cnf(c_0_65, negated_conjecture, (k2_relat_1(esk3_0)=X1|~v2_funct_2(esk3_0,X1)|~v5_relat_1(esk3_0,X1)), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.19/0.52  cnf(c_0_66, negated_conjecture, (v2_funct_2(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_26]), c_0_28]), c_0_29])])).
% 0.19/0.52  cnf(c_0_67, negated_conjecture, (v5_relat_1(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_50, c_0_26])).
% 0.19/0.52  cnf(c_0_68, negated_conjecture, (v1_relat_1(k2_funct_1(esk3_0))), inference(rw,[status(thm)],[c_0_51, c_0_52])).
% 0.19/0.52  cnf(c_0_69, negated_conjecture, (k2_relat_1(k2_funct_1(esk3_0))=k1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_29]), c_0_48])]), c_0_54])])).
% 0.19/0.52  cnf(c_0_70, negated_conjecture, (v2_funct_2(k2_funct_2(esk1_0,esk3_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_37]), c_0_55]), c_0_56])])).
% 0.19/0.52  cnf(c_0_71, negated_conjecture, (v5_relat_1(k2_funct_2(esk1_0,esk3_0),esk1_0)), inference(spm,[status(thm)],[c_0_50, c_0_37])).
% 0.19/0.52  cnf(c_0_72, plain, (k2_relset_1(X2,X3,X1)=X3|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~v1_funct_2(X4,X3,X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_partfun1(X3))), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.19/0.52  cnf(c_0_73, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k6_partfun1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_74, negated_conjecture, (k1_partfun1(X1,X2,esk1_0,esk1_0,esk2_0,esk3_0)=k5_relat_1(esk2_0,esk3_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_58, c_0_59])).
% 0.19/0.52  cnf(c_0_75, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_76, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.19/0.52  cnf(c_0_77, plain, (X3=X4|~r2_relset_1(X1,X2,X3,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.19/0.52  cnf(c_0_78, plain, (m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(rw,[status(thm)],[c_0_62, c_0_63])).
% 0.19/0.52  cnf(c_0_79, negated_conjecture, (m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,esk3_0),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))|~v1_funct_1(X5)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_64, c_0_29])).
% 0.19/0.52  fof(c_0_80, plain, ![X13, X14]:(~v1_relat_1(X13)|~v1_funct_1(X13)|(~v1_relat_1(X14)|~v1_funct_1(X14)|(~v2_funct_1(X13)|k2_relat_1(X14)!=k1_relat_1(X13)|k5_relat_1(X14,X13)!=k6_relat_1(k2_relat_1(X13))|X14=k2_funct_1(X13)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_funct_1])])])).
% 0.19/0.52  cnf(c_0_81, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.52  cnf(c_0_82, negated_conjecture, (k2_relat_1(esk3_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_67])])).
% 0.19/0.52  cnf(c_0_83, negated_conjecture, (k1_relat_1(esk3_0)=X1|~v2_funct_2(k2_funct_1(esk3_0),X1)|~v5_relat_1(k2_funct_1(esk3_0),X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_68]), c_0_69])).
% 0.19/0.52  cnf(c_0_84, negated_conjecture, (v2_funct_2(k2_funct_1(esk3_0),esk1_0)), inference(rw,[status(thm)],[c_0_70, c_0_52])).
% 0.19/0.52  cnf(c_0_85, negated_conjecture, (v5_relat_1(k2_funct_1(esk3_0),esk1_0)), inference(rw,[status(thm)],[c_0_71, c_0_52])).
% 0.19/0.52  cnf(c_0_86, negated_conjecture, (v2_funct_1(k2_funct_2(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_37]), c_0_55]), c_0_56])])).
% 0.19/0.52  fof(c_0_87, plain, ![X52, X53, X54]:((k5_relat_1(X54,k2_funct_1(X54))=k6_partfun1(X52)|X53=k1_xboole_0|(k2_relset_1(X52,X53,X54)!=X53|~v2_funct_1(X54))|(~v1_funct_1(X54)|~v1_funct_2(X54,X52,X53)|~m1_subset_1(X54,k1_zfmisc_1(k2_zfmisc_1(X52,X53)))))&(k5_relat_1(k2_funct_1(X54),X54)=k6_partfun1(X53)|X53=k1_xboole_0|(k2_relset_1(X52,X53,X54)!=X53|~v2_funct_1(X54))|(~v1_funct_1(X54)|~v1_funct_2(X54,X52,X53)|~m1_subset_1(X54,k1_zfmisc_1(k2_zfmisc_1(X52,X53)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_funct_2])])])).
% 0.19/0.52  cnf(c_0_88, plain, (k2_relset_1(X2,X3,X1)=X3|~v1_funct_1(X4)|~v1_funct_1(X1)|~v1_funct_2(X4,X3,X2)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_relat_1(X3))), inference(rw,[status(thm)],[c_0_72, c_0_63])).
% 0.19/0.52  cnf(c_0_89, negated_conjecture, (v1_funct_2(esk2_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_90, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_73, c_0_63])).
% 0.19/0.52  cnf(c_0_91, negated_conjecture, (k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)=k5_relat_1(esk2_0,esk3_0)), inference(spm,[status(thm)],[c_0_74, c_0_75])).
% 0.19/0.52  cnf(c_0_92, negated_conjecture, (v1_relat_1(esk2_0)), inference(spm,[status(thm)],[c_0_76, c_0_75])).
% 0.19/0.52  cnf(c_0_93, negated_conjecture, (v3_funct_2(esk2_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_94, plain, (X1=k6_relat_1(X2)|~r2_relset_1(X2,X2,X1,k6_relat_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2)))), inference(spm,[status(thm)],[c_0_77, c_0_78])).
% 0.19/0.52  cnf(c_0_95, negated_conjecture, (m1_subset_1(k1_partfun1(X1,X2,esk1_0,esk1_0,X3,esk3_0),k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_79, c_0_26])).
% 0.19/0.52  cnf(c_0_96, plain, (X2=k2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|k2_relat_1(X2)!=k1_relat_1(X1)|k5_relat_1(X2,X1)!=k6_relat_1(k2_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_80])).
% 0.19/0.52  cnf(c_0_97, negated_conjecture, (k1_relat_1(k2_funct_1(esk3_0))=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_48]), c_0_29])]), c_0_82]), c_0_54])])).
% 0.19/0.52  cnf(c_0_98, negated_conjecture, (k1_relat_1(esk3_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_84]), c_0_85])])).
% 0.19/0.52  cnf(c_0_99, negated_conjecture, (v2_funct_1(k2_funct_1(esk3_0))), inference(rw,[status(thm)],[c_0_86, c_0_52])).
% 0.19/0.52  cnf(c_0_100, negated_conjecture, (v1_funct_1(k2_funct_1(esk3_0))), inference(rw,[status(thm)],[c_0_56, c_0_52])).
% 0.19/0.52  cnf(c_0_101, plain, (k5_relat_1(X1,k2_funct_1(X1))=k6_partfun1(X2)|X3=k1_xboole_0|k2_relset_1(X2,X3,X1)!=X3|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_87])).
% 0.19/0.52  cnf(c_0_102, negated_conjecture, (k2_relset_1(esk1_0,esk1_0,X1)=esk1_0|~v1_funct_2(X1,esk1_0,esk1_0)|~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,X1),k6_relat_1(esk1_0))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_75]), c_0_89]), c_0_59])])).
% 0.19/0.52  cnf(c_0_103, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k5_relat_1(esk2_0,esk3_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_90, c_0_91])).
% 0.19/0.52  cnf(c_0_104, negated_conjecture, (k2_relat_1(esk2_0)=X1|~v2_funct_2(esk2_0,X1)|~v5_relat_1(esk2_0,X1)), inference(spm,[status(thm)],[c_0_47, c_0_92])).
% 0.19/0.52  cnf(c_0_105, negated_conjecture, (v5_relat_1(esk2_0,esk1_0)), inference(spm,[status(thm)],[c_0_50, c_0_75])).
% 0.19/0.52  cnf(c_0_106, negated_conjecture, (v2_funct_2(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_75]), c_0_93]), c_0_59])])).
% 0.19/0.52  cnf(c_0_107, negated_conjecture, (k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)=k6_relat_1(esk1_0)|~m1_subset_1(k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(spm,[status(thm)],[c_0_94, c_0_90])).
% 0.19/0.52  cnf(c_0_108, negated_conjecture, (m1_subset_1(k1_partfun1(X1,X2,esk1_0,esk1_0,esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_95, c_0_59])).
% 0.19/0.52  cnf(c_0_109, negated_conjecture, (X1=k2_funct_1(k2_funct_1(esk3_0))|k5_relat_1(X1,k2_funct_1(esk3_0))!=k6_relat_1(esk1_0)|k2_relat_1(X1)!=esk1_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96, c_0_97]), c_0_69]), c_0_98]), c_0_99]), c_0_100]), c_0_68])])).
% 0.19/0.52  cnf(c_0_110, plain, (X3=k1_xboole_0|k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(X2)|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_1(X1)|~v2_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(rw,[status(thm)],[c_0_101, c_0_63])).
% 0.19/0.52  cnf(c_0_111, negated_conjecture, (k2_relset_1(esk1_0,esk1_0,esk3_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_102, c_0_26]), c_0_27]), c_0_91]), c_0_103]), c_0_29])])).
% 0.19/0.52  cnf(c_0_112, negated_conjecture, (X1=k2_funct_1(esk3_0)|k5_relat_1(X1,esk3_0)!=k6_relat_1(esk1_0)|k2_relat_1(X1)!=esk1_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96, c_0_98]), c_0_82]), c_0_54]), c_0_29]), c_0_48])])).
% 0.19/0.52  cnf(c_0_113, negated_conjecture, (k2_relat_1(esk2_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104, c_0_105]), c_0_106])])).
% 0.19/0.52  cnf(c_0_114, negated_conjecture, (k6_relat_1(esk1_0)=k5_relat_1(esk2_0,esk3_0)|~m1_subset_1(k5_relat_1(esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_107, c_0_91]), c_0_91])).
% 0.19/0.52  cnf(c_0_115, negated_conjecture, (m1_subset_1(k5_relat_1(esk2_0,esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_108, c_0_75]), c_0_91])).
% 0.19/0.52  fof(c_0_116, plain, ![X11]:((k1_relat_1(X11)!=k1_xboole_0|X11=k1_xboole_0|~v1_relat_1(X11))&(k2_relat_1(X11)!=k1_xboole_0|X11=k1_xboole_0|~v1_relat_1(X11))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).
% 0.19/0.52  cnf(c_0_117, negated_conjecture, (k2_funct_2(X1,esk2_0)=k2_funct_1(esk2_0)|~v1_funct_2(esk2_0,X1,X1)|~v3_funct_2(esk2_0,X1,X1)|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(spm,[status(thm)],[c_0_30, c_0_59])).
% 0.19/0.52  cnf(c_0_118, negated_conjecture, (k2_funct_1(k2_funct_1(esk3_0))=esk3_0|k5_relat_1(esk3_0,k2_funct_1(esk3_0))!=k6_relat_1(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_109, c_0_29]), c_0_82]), c_0_48])])).
% 0.19/0.52  cnf(c_0_119, negated_conjecture, (k5_relat_1(esk3_0,k2_funct_1(esk3_0))=k6_relat_1(esk1_0)|esk1_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_110, c_0_111]), c_0_27]), c_0_54]), c_0_29]), c_0_26])])).
% 0.19/0.52  cnf(c_0_120, negated_conjecture, (k2_funct_1(esk3_0)=esk2_0|k6_relat_1(esk1_0)!=k5_relat_1(esk2_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_112, c_0_59]), c_0_113]), c_0_92])])).
% 0.19/0.52  cnf(c_0_121, negated_conjecture, (k6_relat_1(esk1_0)=k5_relat_1(esk2_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_114, c_0_115])])).
% 0.19/0.52  cnf(c_0_122, plain, (r2_relset_1(X3,X4,X1,X2)|X1!=X2|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.19/0.52  cnf(c_0_123, negated_conjecture, (m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_75]), c_0_89]), c_0_93]), c_0_59])])).
% 0.19/0.52  cnf(c_0_124, plain, (X1=k1_xboole_0|k2_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_116])).
% 0.19/0.52  cnf(c_0_125, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,esk3_0,k2_funct_2(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.52  cnf(c_0_126, negated_conjecture, (k2_funct_2(esk1_0,esk2_0)=k2_funct_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_117, c_0_75]), c_0_89]), c_0_93])])).
% 0.19/0.52  cnf(c_0_127, negated_conjecture, (k2_funct_1(k2_funct_1(esk3_0))=esk3_0|esk1_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_118, c_0_119])).
% 0.19/0.52  cnf(c_0_128, negated_conjecture, (k2_funct_1(esk3_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_120, c_0_121])])).
% 0.19/0.52  cnf(c_0_129, plain, (r2_relset_1(X1,X2,X3,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(er,[status(thm)],[c_0_122])).
% 0.19/0.52  cnf(c_0_130, plain, (X1=k1_xboole_0|k1_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_116])).
% 0.19/0.52  cnf(c_0_131, negated_conjecture, (v1_relat_1(k2_funct_2(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_123]), c_0_35])])).
% 0.19/0.52  cnf(c_0_132, negated_conjecture, (v2_funct_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_75]), c_0_93]), c_0_59])])).
% 0.19/0.52  cnf(c_0_133, negated_conjecture, (esk2_0=k1_xboole_0|k2_relat_1(esk2_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_124, c_0_92])).
% 0.19/0.52  cnf(c_0_134, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,esk3_0,k2_funct_1(esk2_0))), inference(rw,[status(thm)],[c_0_125, c_0_126])).
% 0.19/0.52  cnf(c_0_135, negated_conjecture, (k2_funct_1(esk2_0)=esk3_0|esk1_0=k1_xboole_0), inference(rw,[status(thm)],[c_0_127, c_0_128])).
% 0.19/0.52  cnf(c_0_136, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,esk3_0,esk3_0)), inference(spm,[status(thm)],[c_0_129, c_0_26])).
% 0.19/0.52  cnf(c_0_137, negated_conjecture, (esk3_0=k1_xboole_0|k2_relat_1(esk3_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_124, c_0_48])).
% 0.19/0.52  cnf(c_0_138, negated_conjecture, (k2_funct_2(esk1_0,esk2_0)=k1_xboole_0|k1_relat_1(k2_funct_2(esk1_0,esk2_0))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_130, c_0_131])).
% 0.19/0.52  cnf(c_0_139, negated_conjecture, (k1_relat_1(k2_funct_1(esk2_0))=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_92]), c_0_59])]), c_0_113]), c_0_132])])).
% 0.19/0.52  cnf(c_0_140, negated_conjecture, (esk2_0=k1_xboole_0|esk1_0!=k1_xboole_0), inference(rw,[status(thm)],[c_0_133, c_0_113])).
% 0.19/0.52  cnf(c_0_141, negated_conjecture, (esk1_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_134, c_0_135]), c_0_136])])).
% 0.19/0.52  cnf(c_0_142, negated_conjecture, (esk3_0=k1_xboole_0|esk1_0!=k1_xboole_0), inference(rw,[status(thm)],[c_0_137, c_0_82])).
% 0.19/0.52  cnf(c_0_143, negated_conjecture, (k2_funct_1(esk2_0)=k1_xboole_0|esk1_0!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_138, c_0_126]), c_0_126]), c_0_139])).
% 0.19/0.52  cnf(c_0_144, negated_conjecture, (esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_140, c_0_141])])).
% 0.19/0.52  cnf(c_0_145, negated_conjecture, (esk3_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_142, c_0_141])])).
% 0.19/0.52  cnf(c_0_146, negated_conjecture, (k2_funct_1(k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_143, c_0_141])]), c_0_144])).
% 0.19/0.52  cnf(c_0_147, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,esk2_0,esk2_0)), inference(spm,[status(thm)],[c_0_129, c_0_75])).
% 0.19/0.52  cnf(c_0_148, negated_conjecture, (~r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_134, c_0_141]), c_0_141]), c_0_145]), c_0_144]), c_0_146])).
% 0.19/0.52  cnf(c_0_149, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_147, c_0_141]), c_0_141]), c_0_144]), c_0_144]), c_0_148]), ['proof']).
% 0.19/0.52  # SZS output end CNFRefutation
% 0.19/0.52  # Proof object total steps             : 150
% 0.19/0.52  # Proof object clause steps            : 111
% 0.19/0.52  # Proof object formula steps           : 39
% 0.19/0.52  # Proof object conjectures             : 85
% 0.19/0.52  # Proof object clause conjectures      : 82
% 0.19/0.52  # Proof object formula conjectures     : 3
% 0.19/0.52  # Proof object initial clauses used    : 34
% 0.19/0.52  # Proof object initial formulas used   : 19
% 0.19/0.52  # Proof object generating inferences   : 53
% 0.19/0.52  # Proof object simplifying inferences  : 143
% 0.19/0.52  # Training examples: 0 positive, 0 negative
% 0.19/0.52  # Parsed axioms                        : 19
% 0.19/0.52  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.52  # Initial clauses                      : 41
% 0.19/0.52  # Removed in clause preprocessing      : 2
% 0.19/0.52  # Initial clauses in saturation        : 39
% 0.19/0.52  # Processed clauses                    : 1277
% 0.19/0.52  # ...of these trivial                  : 145
% 0.19/0.52  # ...subsumed                          : 121
% 0.19/0.52  # ...remaining for further processing  : 1010
% 0.19/0.52  # Other redundant clauses eliminated   : 2
% 0.19/0.52  # Clauses deleted for lack of memory   : 0
% 0.19/0.52  # Backward-subsumed                    : 1
% 0.19/0.52  # Backward-rewritten                   : 897
% 0.19/0.52  # Generated clauses                    : 4626
% 0.19/0.52  # ...of the previous two non-trivial   : 5163
% 0.19/0.52  # Contextual simplify-reflections      : 2
% 0.19/0.52  # Paramodulations                      : 4624
% 0.19/0.52  # Factorizations                       : 0
% 0.19/0.52  # Equation resolutions                 : 2
% 0.19/0.52  # Propositional unsat checks           : 0
% 0.19/0.52  #    Propositional check models        : 0
% 0.19/0.52  #    Propositional check unsatisfiable : 0
% 0.19/0.52  #    Propositional clauses             : 0
% 0.19/0.52  #    Propositional clauses after purity: 0
% 0.19/0.52  #    Propositional unsat core size     : 0
% 0.19/0.52  #    Propositional preprocessing time  : 0.000
% 0.19/0.52  #    Propositional encoding time       : 0.000
% 0.19/0.52  #    Propositional solver time         : 0.000
% 0.19/0.52  #    Success case prop preproc time    : 0.000
% 0.19/0.52  #    Success case prop encoding time   : 0.000
% 0.19/0.52  #    Success case prop solver time     : 0.000
% 0.19/0.52  # Current number of processed clauses  : 71
% 0.19/0.52  #    Positive orientable unit clauses  : 25
% 0.19/0.52  #    Positive unorientable unit clauses: 0
% 0.19/0.52  #    Negative unit clauses             : 1
% 0.19/0.52  #    Non-unit-clauses                  : 45
% 0.19/0.52  # Current number of unprocessed clauses: 3580
% 0.19/0.52  # ...number of literals in the above   : 10568
% 0.19/0.52  # Current number of archived formulas  : 0
% 0.19/0.52  # Current number of archived clauses   : 938
% 0.19/0.52  # Clause-clause subsumption calls (NU) : 12433
% 0.19/0.52  # Rec. Clause-clause subsumption calls : 10059
% 0.19/0.52  # Non-unit clause-clause subsumptions  : 122
% 0.19/0.52  # Unit Clause-clause subsumption calls : 693
% 0.19/0.52  # Rewrite failures with RHS unbound    : 0
% 0.19/0.52  # BW rewrite match attempts            : 7201
% 0.19/0.52  # BW rewrite match successes           : 51
% 0.19/0.52  # Condensation attempts                : 0
% 0.19/0.52  # Condensation successes               : 0
% 0.19/0.52  # Termbank termtop insertions          : 174835
% 0.19/0.52  
% 0.19/0.52  # -------------------------------------------------
% 0.19/0.52  # User time                : 0.178 s
% 0.19/0.52  # System time              : 0.011 s
% 0.19/0.52  # Total time               : 0.189 s
% 0.19/0.52  # Maximum resident set size: 1604 pages
%------------------------------------------------------------------------------
