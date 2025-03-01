%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.4KROVbmPpJ

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:47:31 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   55 (  62 expanded)
%              Number of leaves         :   27 (  32 expanded)
%              Depth                    :    8
%              Number of atoms          :  227 ( 272 expanded)
%              Number of equality atoms :    9 (  10 expanded)
%              Maximal formula depth    :   12 (   4 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_subset_1_type,type,(
    v1_subset_1: $i > $i > $o )).

thf(v5_funct_1_type,type,(
    v5_funct_1: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('0',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf(d20_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( v5_funct_1 @ B @ A )
          <=> ! [C: $i] :
                ( ( r2_hidden @ C @ ( k1_relat_1 @ B ) )
               => ( r2_hidden @ ( k1_funct_1 @ B @ C ) @ ( k1_funct_1 @ A @ C ) ) ) ) ) ) )).

thf('1',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( v1_relat_1 @ X9 )
      | ~ ( v1_funct_1 @ X9 )
      | ( r2_hidden @ ( sk_C @ X9 @ X10 ) @ ( k1_relat_1 @ X9 ) )
      | ( v5_funct_1 @ X9 @ X10 )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[d20_funct_1])).

thf('2',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C @ k1_xboole_0 @ X0 ) @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( v5_funct_1 @ k1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf(t81_relat_1,axiom,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 )).

thf('3',plain,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t81_relat_1])).

thf(fc3_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('4',plain,(
    ! [X13: $i] :
      ( v1_funct_1 @ ( k6_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('5',plain,(
    v1_funct_1 @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t81_relat_1])).

thf('7',plain,(
    ! [X12: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('8',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C @ k1_xboole_0 @ X0 ) @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( v5_funct_1 @ k1_xboole_0 @ X0 ) ) ),
    inference(demod,[status(thm)],['2','5','8'])).

thf(rc3_subset_1,axiom,(
    ! [A: $i] :
    ? [B: $i] :
      ( ~ ( v1_subset_1 @ B @ A )
      & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('10',plain,(
    ! [X1: $i] :
      ( m1_subset_1 @ ( sk_B @ X1 ) @ ( k1_zfmisc_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[rc3_subset_1])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('11',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('12',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( sk_B @ X0 ) @ X0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(t3_xboole_1,axiom,(
    ! [A: $i] :
      ( ( r1_tarski @ A @ k1_xboole_0 )
     => ( A = k1_xboole_0 ) ) )).

thf('13',plain,(
    ! [X0: $i] :
      ( ( X0 = k1_xboole_0 )
      | ~ ( r1_tarski @ X0 @ k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_1])).

thf('14',plain,
    ( ( sk_B @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X1: $i] :
      ( m1_subset_1 @ ( sk_B @ X1 ) @ ( k1_zfmisc_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[rc3_subset_1])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('16',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r2_hidden @ X5 @ X6 )
      | ~ ( v1_xboole_0 @ X7 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ~ ( r2_hidden @ X1 @ ( sk_B @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ k1_xboole_0 )
      | ~ ( v1_xboole_0 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['14','17'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('19',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('20',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( v5_funct_1 @ k1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['9','20'])).

thf(t174_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( v5_funct_1 @ k1_xboole_0 @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ( v5_funct_1 @ k1_xboole_0 @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t174_funct_1])).

thf('22',plain,(
    ~ ( v5_funct_1 @ k1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    $false ),
    inference(demod,[status(thm)],['23','24','25'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.4KROVbmPpJ
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 19:13:51 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 0.22/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.48  % Solved by: fo/fo7.sh
% 0.22/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.48  % done 32 iterations in 0.016s
% 0.22/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.48  % SZS output start Refutation
% 0.22/0.48  thf(v1_subset_1_type, type, v1_subset_1: $i > $i > $o).
% 0.22/0.48  thf(v5_funct_1_type, type, v5_funct_1: $i > $i > $o).
% 0.22/0.48  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.48  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.48  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.22/0.48  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.48  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.48  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.48  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.22/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.48  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.22/0.48  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.48  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.48  thf(sk_B_type, type, sk_B: $i > $i).
% 0.22/0.48  thf(t60_relat_1, axiom,
% 0.22/0.48    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.22/0.48     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.22/0.48  thf('0', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.48      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.48  thf(d20_funct_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.22/0.48       ( ![B:$i]:
% 0.22/0.48         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.22/0.48           ( ( v5_funct_1 @ B @ A ) <=>
% 0.22/0.48             ( ![C:$i]:
% 0.22/0.48               ( ( r2_hidden @ C @ ( k1_relat_1 @ B ) ) =>
% 0.22/0.48                 ( r2_hidden @ ( k1_funct_1 @ B @ C ) @ ( k1_funct_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.22/0.48  thf('1', plain,
% 0.22/0.48      (![X9 : $i, X10 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ X9)
% 0.22/0.48          | ~ (v1_funct_1 @ X9)
% 0.22/0.48          | (r2_hidden @ (sk_C @ X9 @ X10) @ (k1_relat_1 @ X9))
% 0.22/0.48          | (v5_funct_1 @ X9 @ X10)
% 0.22/0.48          | ~ (v1_funct_1 @ X10)
% 0.22/0.48          | ~ (v1_relat_1 @ X10))),
% 0.22/0.48      inference('cnf', [status(esa)], [d20_funct_1])).
% 0.22/0.48  thf('2', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((r2_hidden @ (sk_C @ k1_xboole_0 @ X0) @ k1_xboole_0)
% 0.22/0.48          | ~ (v1_relat_1 @ X0)
% 0.22/0.48          | ~ (v1_funct_1 @ X0)
% 0.22/0.48          | (v5_funct_1 @ k1_xboole_0 @ X0)
% 0.22/0.48          | ~ (v1_funct_1 @ k1_xboole_0)
% 0.22/0.48          | ~ (v1_relat_1 @ k1_xboole_0))),
% 0.22/0.48      inference('sup+', [status(thm)], ['0', '1'])).
% 0.22/0.48  thf(t81_relat_1, axiom, (( k6_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ))).
% 0.22/0.48  thf('3', plain, (((k6_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.48      inference('cnf', [status(esa)], [t81_relat_1])).
% 0.22/0.48  thf(fc3_funct_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( v1_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.22/0.48       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.22/0.48  thf('4', plain, (![X13 : $i]: (v1_funct_1 @ (k6_relat_1 @ X13))),
% 0.22/0.48      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.22/0.48  thf('5', plain, ((v1_funct_1 @ k1_xboole_0)),
% 0.22/0.48      inference('sup+', [status(thm)], ['3', '4'])).
% 0.22/0.48  thf('6', plain, (((k6_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.48      inference('cnf', [status(esa)], [t81_relat_1])).
% 0.22/0.48  thf('7', plain, (![X12 : $i]: (v1_relat_1 @ (k6_relat_1 @ X12))),
% 0.22/0.48      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.22/0.48  thf('8', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.22/0.48      inference('sup+', [status(thm)], ['6', '7'])).
% 0.22/0.48  thf('9', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((r2_hidden @ (sk_C @ k1_xboole_0 @ X0) @ k1_xboole_0)
% 0.22/0.48          | ~ (v1_relat_1 @ X0)
% 0.22/0.48          | ~ (v1_funct_1 @ X0)
% 0.22/0.48          | (v5_funct_1 @ k1_xboole_0 @ X0))),
% 0.22/0.48      inference('demod', [status(thm)], ['2', '5', '8'])).
% 0.22/0.48  thf(rc3_subset_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ?[B:$i]:
% 0.22/0.48       ( ( ~( v1_subset_1 @ B @ A ) ) & 
% 0.22/0.48         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) ) ))).
% 0.22/0.48  thf('10', plain,
% 0.22/0.48      (![X1 : $i]: (m1_subset_1 @ (sk_B @ X1) @ (k1_zfmisc_1 @ X1))),
% 0.22/0.48      inference('cnf', [status(esa)], [rc3_subset_1])).
% 0.22/0.48  thf(t3_subset, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.22/0.48  thf('11', plain,
% 0.22/0.48      (![X2 : $i, X3 : $i]:
% 0.22/0.48         ((r1_tarski @ X2 @ X3) | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X3)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t3_subset])).
% 0.22/0.48  thf('12', plain, (![X0 : $i]: (r1_tarski @ (sk_B @ X0) @ X0)),
% 0.22/0.48      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.48  thf(t3_xboole_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( r1_tarski @ A @ k1_xboole_0 ) => ( ( A ) = ( k1_xboole_0 ) ) ))).
% 0.22/0.48  thf('13', plain,
% 0.22/0.48      (![X0 : $i]: (((X0) = (k1_xboole_0)) | ~ (r1_tarski @ X0 @ k1_xboole_0))),
% 0.22/0.48      inference('cnf', [status(esa)], [t3_xboole_1])).
% 0.22/0.48  thf('14', plain, (((sk_B @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['12', '13'])).
% 0.22/0.48  thf('15', plain,
% 0.22/0.48      (![X1 : $i]: (m1_subset_1 @ (sk_B @ X1) @ (k1_zfmisc_1 @ X1))),
% 0.22/0.48      inference('cnf', [status(esa)], [rc3_subset_1])).
% 0.22/0.48  thf(t5_subset, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.22/0.48          ( v1_xboole_0 @ C ) ) ))).
% 0.22/0.48  thf('16', plain,
% 0.22/0.48      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.22/0.48         (~ (r2_hidden @ X5 @ X6)
% 0.22/0.48          | ~ (v1_xboole_0 @ X7)
% 0.22/0.48          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t5_subset])).
% 0.22/0.48  thf('17', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (~ (v1_xboole_0 @ X0) | ~ (r2_hidden @ X1 @ (sk_B @ X0)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['15', '16'])).
% 0.22/0.48  thf('18', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (~ (r2_hidden @ X0 @ k1_xboole_0) | ~ (v1_xboole_0 @ k1_xboole_0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['14', '17'])).
% 0.22/0.48  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.22/0.48  thf('19', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.22/0.48      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.22/0.48  thf('20', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.22/0.48      inference('demod', [status(thm)], ['18', '19'])).
% 0.22/0.48  thf('21', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((v5_funct_1 @ k1_xboole_0 @ X0)
% 0.22/0.48          | ~ (v1_funct_1 @ X0)
% 0.22/0.48          | ~ (v1_relat_1 @ X0))),
% 0.22/0.48      inference('sup-', [status(thm)], ['9', '20'])).
% 0.22/0.48  thf(t174_funct_1, conjecture,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.22/0.48       ( v5_funct_1 @ k1_xboole_0 @ A ) ))).
% 0.22/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.48    (~( ![A:$i]:
% 0.22/0.48        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.22/0.48          ( v5_funct_1 @ k1_xboole_0 @ A ) ) )),
% 0.22/0.48    inference('cnf.neg', [status(esa)], [t174_funct_1])).
% 0.22/0.48  thf('22', plain, (~ (v5_funct_1 @ k1_xboole_0 @ sk_A)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('23', plain, ((~ (v1_relat_1 @ sk_A) | ~ (v1_funct_1 @ sk_A))),
% 0.22/0.48      inference('sup-', [status(thm)], ['21', '22'])).
% 0.22/0.48  thf('24', plain, ((v1_relat_1 @ sk_A)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('25', plain, ((v1_funct_1 @ sk_A)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('26', plain, ($false),
% 0.22/0.48      inference('demod', [status(thm)], ['23', '24', '25'])).
% 0.22/0.48  
% 0.22/0.48  % SZS output end Refutation
% 0.22/0.48  
% 0.22/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
