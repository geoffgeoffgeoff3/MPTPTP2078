%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.azvckieTOC

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:57:44 EST 2020

% Result     : Theorem 0.40s
% Output     : Refutation 0.40s
% Verified   : 
% Statistics : Number of formulae       :   80 ( 117 expanded)
%              Number of leaves         :   27 (  46 expanded)
%              Depth                    :   11
%              Number of atoms          :  645 (1731 expanded)
%              Number of equality atoms :   39 ( 125 expanded)
%              Maximal formula depth    :   17 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k4_relset_1_type,type,(
    k4_relset_1: $i > $i > $i > $i > $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(t160_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) )
            = ( k9_relat_1 @ B @ ( k2_relat_1 @ A ) ) ) ) ) )).

thf('0',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X5 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X6 @ X5 ) )
        = ( k9_relat_1 @ X5 @ ( k2_relat_1 @ X6 ) ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t160_relat_1])).

thf(t73_funct_2,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
         => ( ( ( ( k2_relset_1 @ A @ A @ B )
                = A )
              & ( ( k2_relset_1 @ A @ A @ C )
                = A ) )
           => ( ( k2_relset_1 @ A @ A @ ( k4_relset_1 @ A @ A @ A @ A @ C @ B ) )
              = A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
       => ! [C: $i] :
            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
           => ( ( ( ( k2_relset_1 @ A @ A @ B )
                  = A )
                & ( ( k2_relset_1 @ A @ A @ C )
                  = A ) )
             => ( ( k2_relset_1 @ A @ A @ ( k4_relset_1 @ A @ A @ A @ A @ C @ B ) )
                = A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t73_funct_2])).

thf('1',plain,(
    ( k2_relset_1 @ sk_A @ sk_A @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B ) )
 != sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( m1_subset_1 @ ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) )).

thf('4',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) )
      | ( m1_subset_1 @ ( k4_relset_1 @ X16 @ X17 @ X19 @ X20 @ X15 @ X18 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k4_relset_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k4_relset_1 @ sk_A @ sk_A @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    m1_subset_1 @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference('sup-',[status(thm)],['2','5'])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('7',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k2_relset_1 @ X25 @ X26 @ X24 )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('8',plain,
    ( ( k2_relset_1 @ sk_A @ sk_A @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B ) )
    = ( k2_relat_1 @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ( k2_relat_1 @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B ) )
 != sk_A ),
    inference(demod,[status(thm)],['1','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('12',plain,(
    ! [X27: $i,X28: $i,X29: $i,X30: $i,X31: $i,X32: $i] :
      ( ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X29 ) ) )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X31 @ X32 ) ) )
      | ( ( k4_relset_1 @ X28 @ X29 @ X31 @ X32 @ X27 @ X30 )
        = ( k5_relat_1 @ X27 @ X30 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k4_relset_1 @ sk_A @ sk_A @ X2 @ X1 @ sk_C @ X0 )
        = ( k5_relat_1 @ sk_C @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B )
    = ( k5_relat_1 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['10','13'])).

thf('15',plain,(
    ( k2_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) )
 != sk_A ),
    inference(demod,[status(thm)],['9','14'])).

thf('16',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k2_relat_1 @ sk_C ) )
     != sk_A )
    | ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['0','15'])).

thf('17',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k2_relset_1 @ X25 @ X26 @ X24 )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('19',plain,
    ( ( k2_relset_1 @ sk_A @ sk_A @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,
    ( ( k2_relset_1 @ sk_A @ sk_A @ sk_C )
    = sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,
    ( ( k2_relat_1 @ sk_C )
    = sk_A ),
    inference('sup+',[status(thm)],['19','20'])).

thf('22',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k1_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('23',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( m1_subset_1 @ ( k1_relset_1 @ X12 @ X13 @ X14 ) @ ( k1_zfmisc_1 @ X12 ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_relset_1])).

thf('24',plain,(
    m1_subset_1 @ ( k1_relset_1 @ sk_A @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('26',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( ( k1_relset_1 @ X22 @ X23 @ X21 )
        = ( k1_relat_1 @ X21 ) )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X22 @ X23 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('27',plain,
    ( ( k1_relset_1 @ sk_A @ sk_A @ sk_B )
    = ( k1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    m1_subset_1 @ ( k1_relat_1 @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(demod,[status(thm)],['24','27'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('30',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_B ) @ sk_A ),
    inference('sup-',[status(thm)],['28','29'])).

thf(t97_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k7_relat_1 @ B @ A )
          = B ) ) ) )).

thf('31',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X7 ) @ X8 )
      | ( ( k7_relat_1 @ X7 @ X8 )
        = X7 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t97_relat_1])).

thf('32',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
      = sk_B ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('34',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( v1_relat_1 @ X9 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('35',plain,(
    v1_relat_1 @ sk_B ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,
    ( ( k7_relat_1 @ sk_B @ sk_A )
    = sk_B ),
    inference(demod,[status(thm)],['32','35'])).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('37',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X3 @ X4 ) )
        = ( k9_relat_1 @ X3 @ X4 ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf('38',plain,
    ( ( ( k2_relat_1 @ sk_B )
      = ( k9_relat_1 @ sk_B @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['36','37'])).

thf('39',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k2_relset_1 @ X25 @ X26 @ X24 )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('41',plain,
    ( ( k2_relset_1 @ sk_A @ sk_A @ sk_B )
    = ( k2_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,
    ( ( k2_relset_1 @ sk_A @ sk_A @ sk_B )
    = sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ( k2_relat_1 @ sk_B )
    = sk_A ),
    inference('sup+',[status(thm)],['41','42'])).

thf('44',plain,(
    v1_relat_1 @ sk_B ),
    inference('sup-',[status(thm)],['33','34'])).

thf('45',plain,
    ( sk_A
    = ( k9_relat_1 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['38','43','44'])).

thf('46',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( v1_relat_1 @ X9 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('48',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,(
    v1_relat_1 @ sk_B ),
    inference('sup-',[status(thm)],['33','34'])).

thf('50',plain,(
    sk_A != sk_A ),
    inference(demod,[status(thm)],['16','21','45','48','49'])).

thf('51',plain,(
    $false ),
    inference(simplify,[status(thm)],['50'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.azvckieTOC
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 19:05:09 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.40/0.57  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.40/0.57  % Solved by: fo/fo7.sh
% 0.40/0.57  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.40/0.57  % done 194 iterations in 0.121s
% 0.40/0.57  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.40/0.57  % SZS output start Refutation
% 0.40/0.57  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.40/0.57  thf(sk_A_type, type, sk_A: $i).
% 0.40/0.57  thf(sk_B_type, type, sk_B: $i).
% 0.40/0.57  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.40/0.57  thf(sk_C_type, type, sk_C: $i).
% 0.40/0.57  thf(k4_relset_1_type, type, k4_relset_1: $i > $i > $i > $i > $i > $i > $i).
% 0.40/0.57  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.40/0.57  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.40/0.57  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.40/0.57  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.40/0.57  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.40/0.57  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.40/0.57  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.40/0.57  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.40/0.57  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.40/0.57  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.40/0.57  thf(t160_relat_1, axiom,
% 0.40/0.57    (![A:$i]:
% 0.40/0.57     ( ( v1_relat_1 @ A ) =>
% 0.40/0.57       ( ![B:$i]:
% 0.40/0.57         ( ( v1_relat_1 @ B ) =>
% 0.40/0.57           ( ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) ) =
% 0.40/0.57             ( k9_relat_1 @ B @ ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.40/0.57  thf('0', plain,
% 0.40/0.57      (![X5 : $i, X6 : $i]:
% 0.40/0.57         (~ (v1_relat_1 @ X5)
% 0.40/0.57          | ((k2_relat_1 @ (k5_relat_1 @ X6 @ X5))
% 0.40/0.57              = (k9_relat_1 @ X5 @ (k2_relat_1 @ X6)))
% 0.40/0.57          | ~ (v1_relat_1 @ X6))),
% 0.40/0.57      inference('cnf', [status(esa)], [t160_relat_1])).
% 0.40/0.57  thf(t73_funct_2, conjecture,
% 0.40/0.57    (![A:$i,B:$i]:
% 0.40/0.57     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) =>
% 0.40/0.57       ( ![C:$i]:
% 0.40/0.57         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) =>
% 0.40/0.57           ( ( ( ( k2_relset_1 @ A @ A @ B ) = ( A ) ) & 
% 0.40/0.57               ( ( k2_relset_1 @ A @ A @ C ) = ( A ) ) ) =>
% 0.40/0.57             ( ( k2_relset_1 @ A @ A @ ( k4_relset_1 @ A @ A @ A @ A @ C @ B ) ) =
% 0.40/0.57               ( A ) ) ) ) ) ))).
% 0.40/0.57  thf(zf_stmt_0, negated_conjecture,
% 0.40/0.57    (~( ![A:$i,B:$i]:
% 0.40/0.57        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) =>
% 0.40/0.57          ( ![C:$i]:
% 0.40/0.57            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) =>
% 0.40/0.57              ( ( ( ( k2_relset_1 @ A @ A @ B ) = ( A ) ) & 
% 0.40/0.57                  ( ( k2_relset_1 @ A @ A @ C ) = ( A ) ) ) =>
% 0.40/0.57                ( ( k2_relset_1 @
% 0.40/0.57                    A @ A @ ( k4_relset_1 @ A @ A @ A @ A @ C @ B ) ) =
% 0.40/0.57                  ( A ) ) ) ) ) ) )),
% 0.40/0.57    inference('cnf.neg', [status(esa)], [t73_funct_2])).
% 0.40/0.57  thf('1', plain,
% 0.40/0.57      (((k2_relset_1 @ sk_A @ sk_A @ 
% 0.40/0.57         (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B)) != (sk_A))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('2', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('3', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf(dt_k4_relset_1, axiom,
% 0.40/0.57    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.40/0.57     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.40/0.57         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.40/0.57       ( m1_subset_1 @
% 0.40/0.57         ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.40/0.57         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ))).
% 0.40/0.57  thf('4', plain,
% 0.40/0.57      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.40/0.57         (~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17)))
% 0.40/0.57          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20)))
% 0.40/0.57          | (m1_subset_1 @ (k4_relset_1 @ X16 @ X17 @ X19 @ X20 @ X15 @ X18) @ 
% 0.40/0.57             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X20))))),
% 0.40/0.57      inference('cnf', [status(esa)], [dt_k4_relset_1])).
% 0.40/0.57  thf('5', plain,
% 0.40/0.57      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.40/0.57         ((m1_subset_1 @ (k4_relset_1 @ sk_A @ sk_A @ X2 @ X0 @ sk_C @ X1) @ 
% 0.40/0.57           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.40/0.57          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0))))),
% 0.40/0.57      inference('sup-', [status(thm)], ['3', '4'])).
% 0.40/0.57  thf('6', plain,
% 0.40/0.57      ((m1_subset_1 @ 
% 0.40/0.57        (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B) @ 
% 0.40/0.57        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('sup-', [status(thm)], ['2', '5'])).
% 0.40/0.57  thf(redefinition_k2_relset_1, axiom,
% 0.40/0.57    (![A:$i,B:$i,C:$i]:
% 0.40/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.57       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.40/0.57  thf('7', plain,
% 0.40/0.57      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.40/0.57         (((k2_relset_1 @ X25 @ X26 @ X24) = (k2_relat_1 @ X24))
% 0.40/0.57          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.40/0.57      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.40/0.57  thf('8', plain,
% 0.40/0.57      (((k2_relset_1 @ sk_A @ sk_A @ 
% 0.40/0.57         (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B))
% 0.40/0.57         = (k2_relat_1 @ 
% 0.40/0.57            (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B)))),
% 0.40/0.57      inference('sup-', [status(thm)], ['6', '7'])).
% 0.40/0.57  thf('9', plain,
% 0.40/0.57      (((k2_relat_1 @ (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B))
% 0.40/0.57         != (sk_A))),
% 0.40/0.57      inference('demod', [status(thm)], ['1', '8'])).
% 0.40/0.57  thf('10', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('11', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf(redefinition_k4_relset_1, axiom,
% 0.40/0.57    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.40/0.57     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.40/0.57         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.40/0.57       ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.40/0.57  thf('12', plain,
% 0.40/0.57      (![X27 : $i, X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i]:
% 0.40/0.57         (~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X29)))
% 0.40/0.57          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X31 @ X32)))
% 0.40/0.57          | ((k4_relset_1 @ X28 @ X29 @ X31 @ X32 @ X27 @ X30)
% 0.40/0.57              = (k5_relat_1 @ X27 @ X30)))),
% 0.40/0.57      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.40/0.57  thf('13', plain,
% 0.40/0.57      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.40/0.57         (((k4_relset_1 @ sk_A @ sk_A @ X2 @ X1 @ sk_C @ X0)
% 0.40/0.57            = (k5_relat_1 @ sk_C @ X0))
% 0.40/0.57          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.40/0.57      inference('sup-', [status(thm)], ['11', '12'])).
% 0.40/0.57  thf('14', plain,
% 0.40/0.57      (((k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_C @ sk_B)
% 0.40/0.57         = (k5_relat_1 @ sk_C @ sk_B))),
% 0.40/0.57      inference('sup-', [status(thm)], ['10', '13'])).
% 0.40/0.57  thf('15', plain, (((k2_relat_1 @ (k5_relat_1 @ sk_C @ sk_B)) != (sk_A))),
% 0.40/0.57      inference('demod', [status(thm)], ['9', '14'])).
% 0.40/0.57  thf('16', plain,
% 0.40/0.57      ((((k9_relat_1 @ sk_B @ (k2_relat_1 @ sk_C)) != (sk_A))
% 0.40/0.57        | ~ (v1_relat_1 @ sk_C)
% 0.40/0.57        | ~ (v1_relat_1 @ sk_B))),
% 0.40/0.57      inference('sup-', [status(thm)], ['0', '15'])).
% 0.40/0.57  thf('17', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('18', plain,
% 0.40/0.57      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.40/0.57         (((k2_relset_1 @ X25 @ X26 @ X24) = (k2_relat_1 @ X24))
% 0.40/0.57          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.40/0.57      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.40/0.57  thf('19', plain,
% 0.40/0.57      (((k2_relset_1 @ sk_A @ sk_A @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.40/0.57      inference('sup-', [status(thm)], ['17', '18'])).
% 0.40/0.57  thf('20', plain, (((k2_relset_1 @ sk_A @ sk_A @ sk_C) = (sk_A))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('21', plain, (((k2_relat_1 @ sk_C) = (sk_A))),
% 0.40/0.57      inference('sup+', [status(thm)], ['19', '20'])).
% 0.40/0.57  thf('22', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf(dt_k1_relset_1, axiom,
% 0.40/0.57    (![A:$i,B:$i,C:$i]:
% 0.40/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.57       ( m1_subset_1 @ ( k1_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.40/0.57  thf('23', plain,
% 0.40/0.57      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.40/0.57         ((m1_subset_1 @ (k1_relset_1 @ X12 @ X13 @ X14) @ (k1_zfmisc_1 @ X12))
% 0.40/0.57          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13))))),
% 0.40/0.57      inference('cnf', [status(esa)], [dt_k1_relset_1])).
% 0.40/0.57  thf('24', plain,
% 0.40/0.57      ((m1_subset_1 @ (k1_relset_1 @ sk_A @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.40/0.57      inference('sup-', [status(thm)], ['22', '23'])).
% 0.40/0.57  thf('25', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf(redefinition_k1_relset_1, axiom,
% 0.40/0.57    (![A:$i,B:$i,C:$i]:
% 0.40/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.57       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.40/0.57  thf('26', plain,
% 0.40/0.57      (![X21 : $i, X22 : $i, X23 : $i]:
% 0.40/0.57         (((k1_relset_1 @ X22 @ X23 @ X21) = (k1_relat_1 @ X21))
% 0.40/0.57          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X22 @ X23))))),
% 0.40/0.57      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.40/0.57  thf('27', plain,
% 0.40/0.57      (((k1_relset_1 @ sk_A @ sk_A @ sk_B) = (k1_relat_1 @ sk_B))),
% 0.40/0.57      inference('sup-', [status(thm)], ['25', '26'])).
% 0.40/0.57  thf('28', plain,
% 0.40/0.57      ((m1_subset_1 @ (k1_relat_1 @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.40/0.57      inference('demod', [status(thm)], ['24', '27'])).
% 0.40/0.57  thf(t3_subset, axiom,
% 0.40/0.57    (![A:$i,B:$i]:
% 0.40/0.57     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.40/0.57  thf('29', plain,
% 0.40/0.57      (![X0 : $i, X1 : $i]:
% 0.40/0.57         ((r1_tarski @ X0 @ X1) | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1)))),
% 0.40/0.57      inference('cnf', [status(esa)], [t3_subset])).
% 0.40/0.57  thf('30', plain, ((r1_tarski @ (k1_relat_1 @ sk_B) @ sk_A)),
% 0.40/0.57      inference('sup-', [status(thm)], ['28', '29'])).
% 0.40/0.57  thf(t97_relat_1, axiom,
% 0.40/0.57    (![A:$i,B:$i]:
% 0.40/0.57     ( ( v1_relat_1 @ B ) =>
% 0.40/0.57       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.40/0.57         ( ( k7_relat_1 @ B @ A ) = ( B ) ) ) ))).
% 0.40/0.57  thf('31', plain,
% 0.40/0.57      (![X7 : $i, X8 : $i]:
% 0.40/0.57         (~ (r1_tarski @ (k1_relat_1 @ X7) @ X8)
% 0.40/0.57          | ((k7_relat_1 @ X7 @ X8) = (X7))
% 0.40/0.57          | ~ (v1_relat_1 @ X7))),
% 0.40/0.57      inference('cnf', [status(esa)], [t97_relat_1])).
% 0.40/0.57  thf('32', plain,
% 0.40/0.57      ((~ (v1_relat_1 @ sk_B) | ((k7_relat_1 @ sk_B @ sk_A) = (sk_B)))),
% 0.40/0.57      inference('sup-', [status(thm)], ['30', '31'])).
% 0.40/0.57  thf('33', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf(cc1_relset_1, axiom,
% 0.40/0.57    (![A:$i,B:$i,C:$i]:
% 0.40/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.57       ( v1_relat_1 @ C ) ))).
% 0.40/0.57  thf('34', plain,
% 0.40/0.57      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.40/0.57         ((v1_relat_1 @ X9)
% 0.40/0.57          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 0.40/0.57      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.40/0.57  thf('35', plain, ((v1_relat_1 @ sk_B)),
% 0.40/0.57      inference('sup-', [status(thm)], ['33', '34'])).
% 0.40/0.57  thf('36', plain, (((k7_relat_1 @ sk_B @ sk_A) = (sk_B))),
% 0.40/0.57      inference('demod', [status(thm)], ['32', '35'])).
% 0.40/0.57  thf(t148_relat_1, axiom,
% 0.40/0.57    (![A:$i,B:$i]:
% 0.40/0.57     ( ( v1_relat_1 @ B ) =>
% 0.40/0.57       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 0.40/0.57  thf('37', plain,
% 0.40/0.57      (![X3 : $i, X4 : $i]:
% 0.40/0.57         (((k2_relat_1 @ (k7_relat_1 @ X3 @ X4)) = (k9_relat_1 @ X3 @ X4))
% 0.40/0.57          | ~ (v1_relat_1 @ X3))),
% 0.40/0.57      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.40/0.57  thf('38', plain,
% 0.40/0.57      ((((k2_relat_1 @ sk_B) = (k9_relat_1 @ sk_B @ sk_A))
% 0.40/0.57        | ~ (v1_relat_1 @ sk_B))),
% 0.40/0.57      inference('sup+', [status(thm)], ['36', '37'])).
% 0.40/0.57  thf('39', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('40', plain,
% 0.40/0.57      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.40/0.57         (((k2_relset_1 @ X25 @ X26 @ X24) = (k2_relat_1 @ X24))
% 0.40/0.57          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.40/0.57      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.40/0.57  thf('41', plain,
% 0.40/0.57      (((k2_relset_1 @ sk_A @ sk_A @ sk_B) = (k2_relat_1 @ sk_B))),
% 0.40/0.57      inference('sup-', [status(thm)], ['39', '40'])).
% 0.40/0.57  thf('42', plain, (((k2_relset_1 @ sk_A @ sk_A @ sk_B) = (sk_A))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('43', plain, (((k2_relat_1 @ sk_B) = (sk_A))),
% 0.40/0.57      inference('sup+', [status(thm)], ['41', '42'])).
% 0.40/0.57  thf('44', plain, ((v1_relat_1 @ sk_B)),
% 0.40/0.57      inference('sup-', [status(thm)], ['33', '34'])).
% 0.40/0.57  thf('45', plain, (((sk_A) = (k9_relat_1 @ sk_B @ sk_A))),
% 0.40/0.57      inference('demod', [status(thm)], ['38', '43', '44'])).
% 0.40/0.57  thf('46', plain,
% 0.40/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.40/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.57  thf('47', plain,
% 0.40/0.57      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.40/0.57         ((v1_relat_1 @ X9)
% 0.40/0.57          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 0.40/0.57      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.40/0.57  thf('48', plain, ((v1_relat_1 @ sk_C)),
% 0.40/0.57      inference('sup-', [status(thm)], ['46', '47'])).
% 0.40/0.57  thf('49', plain, ((v1_relat_1 @ sk_B)),
% 0.40/0.57      inference('sup-', [status(thm)], ['33', '34'])).
% 0.40/0.57  thf('50', plain, (((sk_A) != (sk_A))),
% 0.40/0.57      inference('demod', [status(thm)], ['16', '21', '45', '48', '49'])).
% 0.40/0.57  thf('51', plain, ($false), inference('simplify', [status(thm)], ['50'])).
% 0.40/0.57  
% 0.40/0.57  % SZS output end Refutation
% 0.40/0.57  
% 0.40/0.58  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
