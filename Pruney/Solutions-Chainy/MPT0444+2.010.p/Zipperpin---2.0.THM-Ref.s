%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.6pvgva2RoN

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:39:46 EST 2020

% Result     : Theorem 0.15s
% Output     : Refutation 0.15s
% Verified   : 
% Statistics : Number of formulae       :   53 (  69 expanded)
%              Number of leaves         :   21 (  30 expanded)
%              Depth                    :   10
%              Number of atoms          :  345 ( 504 expanded)
%              Number of equality atoms :    7 (  14 expanded)
%              Maximal formula depth    :   12 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('0',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ( X6 != X5 )
      | ( r2_hidden @ X6 @ X7 )
      | ( X7
       != ( k2_tarski @ X8 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('1',plain,(
    ! [X5: $i,X8: $i] :
      ( r2_hidden @ X5 @ ( k2_tarski @ X8 @ X5 ) ) ),
    inference(simplify,[status(thm)],['0'])).

thf(t4_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ ( k1_setfam_1 @ B ) @ A ) ) )).

thf('2',plain,(
    ! [X30: $i,X31: $i] :
      ( ( r1_tarski @ ( k1_setfam_1 @ X30 ) @ X31 )
      | ~ ( r2_hidden @ X31 @ X30 ) ) ),
    inference(cnf,[status(esa)],[t4_setfam_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) ) @ X0 ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('4',plain,(
    ! [X25: $i,X26: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X25 @ X26 ) )
      = ( k3_xboole_0 @ X25 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference(demod,[status(thm)],['3','4'])).

thf(t25_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_tarski @ A @ B )
           => ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) )
              & ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) )).

thf('6',plain,(
    ! [X34: $i,X35: $i] :
      ( ~ ( v1_relat_1 @ X34 )
      | ( r1_tarski @ ( k2_relat_1 @ X35 ) @ ( k2_relat_1 @ X34 ) )
      | ~ ( r1_tarski @ X35 @ X34 )
      | ~ ( v1_relat_1 @ X35 ) ) ),
    inference(cnf,[status(esa)],[t25_relat_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k2_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference(demod,[status(thm)],['3','4'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('9',plain,(
    ! [X27: $i,X29: $i] :
      ( ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ X29 ) )
      | ~ ( r1_tarski @ X27 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( m1_subset_1 @ ( k3_xboole_0 @ X1 @ X0 ) @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('11',plain,(
    ! [X32: $i,X33: $i] :
      ( ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ X33 ) )
      | ( v1_relat_1 @ X32 )
      | ~ ( v1_relat_1 @ X33 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( v1_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k2_relat_1 @ X0 ) ) ) ),
    inference(clc,[status(thm)],['7','12'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X0 @ X1 ) @ X0 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('15',plain,(
    ! [X34: $i,X35: $i] :
      ( ~ ( v1_relat_1 @ X34 )
      | ( r1_tarski @ ( k2_relat_1 @ X35 ) @ ( k2_relat_1 @ X34 ) )
      | ~ ( r1_tarski @ X35 @ X34 )
      | ~ ( v1_relat_1 @ X35 ) ) ),
    inference(cnf,[status(esa)],[t25_relat_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) )
      | ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k2_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X0 @ X1 ) @ X0 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('18',plain,(
    ! [X27: $i,X29: $i] :
      ( ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ X29 ) )
      | ~ ( r1_tarski @ X27 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( m1_subset_1 @ ( k3_xboole_0 @ X0 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X32: $i,X33: $i] :
      ( ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ X33 ) )
      | ( v1_relat_1 @ X32 )
      | ~ ( v1_relat_1 @ X33 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( v1_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k2_relat_1 @ X0 ) ) ) ),
    inference(clc,[status(thm)],['16','21'])).

thf(t19_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ A @ C ) )
     => ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ) )).

thf('23',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ~ ( r1_tarski @ X2 @ X3 )
      | ~ ( r1_tarski @ X2 @ X4 )
      | ( r1_tarski @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t19_xboole_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X0 ) @ X2 ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X1 ) @ ( k2_relat_1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['13','24'])).

thf(t27_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i] :
            ( ( v1_relat_1 @ B )
           => ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t27_relat_1])).

thf('26',plain,(
    ~ ( r1_tarski @ ( k2_relat_1 @ ( k3_xboole_0 @ sk_A @ sk_B ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    $false ),
    inference(demod,[status(thm)],['27','28','29'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.09  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.09  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.6pvgva2RoN
% 0.10/0.28  % Computer   : n020.cluster.edu
% 0.10/0.28  % Model      : x86_64 x86_64
% 0.10/0.28  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.10/0.28  % Memory     : 8042.1875MB
% 0.10/0.28  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.10/0.28  % CPULimit   : 60
% 0.10/0.28  % DateTime   : Tue Dec  1 17:55:07 EST 2020
% 0.10/0.28  % CPUTime    : 
% 0.10/0.28  % Running portfolio for 600 s
% 0.10/0.28  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.10/0.28  % Number of cores: 8
% 0.10/0.29  % Python version: Python 3.6.8
% 0.10/0.29  % Running in FO mode
% 0.15/0.50  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.15/0.50  % Solved by: fo/fo7.sh
% 0.15/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.15/0.50  % done 168 iterations in 0.140s
% 0.15/0.50  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.15/0.50  % SZS output start Refutation
% 0.15/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.15/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.15/0.50  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.15/0.50  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.15/0.50  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.15/0.50  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.15/0.50  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.15/0.50  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.15/0.50  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.15/0.50  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.15/0.50  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.15/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.15/0.50  thf(d2_tarski, axiom,
% 0.15/0.50    (![A:$i,B:$i,C:$i]:
% 0.15/0.50     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.15/0.50       ( ![D:$i]:
% 0.15/0.50         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.15/0.50  thf('0', plain,
% 0.15/0.50      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.15/0.50         (((X6) != (X5))
% 0.15/0.50          | (r2_hidden @ X6 @ X7)
% 0.15/0.50          | ((X7) != (k2_tarski @ X8 @ X5)))),
% 0.15/0.50      inference('cnf', [status(esa)], [d2_tarski])).
% 0.15/0.50  thf('1', plain,
% 0.15/0.50      (![X5 : $i, X8 : $i]: (r2_hidden @ X5 @ (k2_tarski @ X8 @ X5))),
% 0.15/0.50      inference('simplify', [status(thm)], ['0'])).
% 0.15/0.50  thf(t4_setfam_1, axiom,
% 0.15/0.50    (![A:$i,B:$i]:
% 0.15/0.50     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ ( k1_setfam_1 @ B ) @ A ) ))).
% 0.15/0.50  thf('2', plain,
% 0.15/0.50      (![X30 : $i, X31 : $i]:
% 0.15/0.50         ((r1_tarski @ (k1_setfam_1 @ X30) @ X31) | ~ (r2_hidden @ X31 @ X30))),
% 0.15/0.50      inference('cnf', [status(esa)], [t4_setfam_1])).
% 0.15/0.50  thf('3', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (r1_tarski @ (k1_setfam_1 @ (k2_tarski @ X1 @ X0)) @ X0)),
% 0.15/0.50      inference('sup-', [status(thm)], ['1', '2'])).
% 0.15/0.50  thf(t12_setfam_1, axiom,
% 0.15/0.50    (![A:$i,B:$i]:
% 0.15/0.50     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.15/0.50  thf('4', plain,
% 0.15/0.50      (![X25 : $i, X26 : $i]:
% 0.15/0.50         ((k1_setfam_1 @ (k2_tarski @ X25 @ X26)) = (k3_xboole_0 @ X25 @ X26))),
% 0.15/0.50      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.15/0.50  thf('5', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X1 @ X0) @ X0)),
% 0.15/0.50      inference('demod', [status(thm)], ['3', '4'])).
% 0.15/0.50  thf(t25_relat_1, axiom,
% 0.15/0.50    (![A:$i]:
% 0.15/0.50     ( ( v1_relat_1 @ A ) =>
% 0.15/0.50       ( ![B:$i]:
% 0.15/0.50         ( ( v1_relat_1 @ B ) =>
% 0.15/0.50           ( ( r1_tarski @ A @ B ) =>
% 0.15/0.50             ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) & 
% 0.15/0.50               ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) ))).
% 0.15/0.50  thf('6', plain,
% 0.15/0.50      (![X34 : $i, X35 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X34)
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ X35) @ (k2_relat_1 @ X34))
% 0.15/0.50          | ~ (r1_tarski @ X35 @ X34)
% 0.15/0.50          | ~ (v1_relat_1 @ X35))),
% 0.15/0.50      inference('cnf', [status(esa)], [t25_relat_1])).
% 0.15/0.50  thf('7', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ (k3_xboole_0 @ X1 @ X0))
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.15/0.50             (k2_relat_1 @ X0))
% 0.15/0.50          | ~ (v1_relat_1 @ X0))),
% 0.15/0.50      inference('sup-', [status(thm)], ['5', '6'])).
% 0.15/0.50  thf('8', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X1 @ X0) @ X0)),
% 0.15/0.50      inference('demod', [status(thm)], ['3', '4'])).
% 0.15/0.50  thf(t3_subset, axiom,
% 0.15/0.50    (![A:$i,B:$i]:
% 0.15/0.50     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.15/0.50  thf('9', plain,
% 0.15/0.50      (![X27 : $i, X29 : $i]:
% 0.15/0.50         ((m1_subset_1 @ X27 @ (k1_zfmisc_1 @ X29)) | ~ (r1_tarski @ X27 @ X29))),
% 0.15/0.50      inference('cnf', [status(esa)], [t3_subset])).
% 0.15/0.50  thf('10', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (m1_subset_1 @ (k3_xboole_0 @ X1 @ X0) @ (k1_zfmisc_1 @ X0))),
% 0.15/0.50      inference('sup-', [status(thm)], ['8', '9'])).
% 0.15/0.50  thf(cc2_relat_1, axiom,
% 0.15/0.50    (![A:$i]:
% 0.15/0.50     ( ( v1_relat_1 @ A ) =>
% 0.15/0.50       ( ![B:$i]:
% 0.15/0.50         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.15/0.50  thf('11', plain,
% 0.15/0.50      (![X32 : $i, X33 : $i]:
% 0.15/0.50         (~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ X33))
% 0.15/0.50          | (v1_relat_1 @ X32)
% 0.15/0.50          | ~ (v1_relat_1 @ X33))),
% 0.15/0.50      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.15/0.50  thf('12', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X0) | (v1_relat_1 @ (k3_xboole_0 @ X1 @ X0)))),
% 0.15/0.50      inference('sup-', [status(thm)], ['10', '11'])).
% 0.15/0.50  thf('13', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X0)
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.15/0.50             (k2_relat_1 @ X0)))),
% 0.15/0.50      inference('clc', [status(thm)], ['7', '12'])).
% 0.15/0.50  thf(t17_xboole_1, axiom,
% 0.15/0.50    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.15/0.50  thf('14', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X0 @ X1) @ X0)),
% 0.15/0.50      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.15/0.50  thf('15', plain,
% 0.15/0.50      (![X34 : $i, X35 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X34)
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ X35) @ (k2_relat_1 @ X34))
% 0.15/0.50          | ~ (r1_tarski @ X35 @ X34)
% 0.15/0.50          | ~ (v1_relat_1 @ X35))),
% 0.15/0.50      inference('cnf', [status(esa)], [t25_relat_1])).
% 0.15/0.50  thf('16', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ (k3_xboole_0 @ X0 @ X1))
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.15/0.50             (k2_relat_1 @ X0))
% 0.15/0.50          | ~ (v1_relat_1 @ X0))),
% 0.15/0.50      inference('sup-', [status(thm)], ['14', '15'])).
% 0.15/0.50  thf('17', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X0 @ X1) @ X0)),
% 0.15/0.50      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.15/0.50  thf('18', plain,
% 0.15/0.50      (![X27 : $i, X29 : $i]:
% 0.15/0.50         ((m1_subset_1 @ X27 @ (k1_zfmisc_1 @ X29)) | ~ (r1_tarski @ X27 @ X29))),
% 0.15/0.50      inference('cnf', [status(esa)], [t3_subset])).
% 0.15/0.50  thf('19', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (m1_subset_1 @ (k3_xboole_0 @ X0 @ X1) @ (k1_zfmisc_1 @ X0))),
% 0.15/0.50      inference('sup-', [status(thm)], ['17', '18'])).
% 0.15/0.50  thf('20', plain,
% 0.15/0.50      (![X32 : $i, X33 : $i]:
% 0.15/0.50         (~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ X33))
% 0.15/0.50          | (v1_relat_1 @ X32)
% 0.15/0.50          | ~ (v1_relat_1 @ X33))),
% 0.15/0.50      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.15/0.50  thf('21', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X0) | (v1_relat_1 @ (k3_xboole_0 @ X0 @ X1)))),
% 0.15/0.50      inference('sup-', [status(thm)], ['19', '20'])).
% 0.15/0.50  thf('22', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X0)
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.15/0.50             (k2_relat_1 @ X0)))),
% 0.15/0.50      inference('clc', [status(thm)], ['16', '21'])).
% 0.15/0.50  thf(t19_xboole_1, axiom,
% 0.15/0.50    (![A:$i,B:$i,C:$i]:
% 0.15/0.50     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ A @ C ) ) =>
% 0.15/0.50       ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ))).
% 0.15/0.50  thf('23', plain,
% 0.15/0.50      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.15/0.50         (~ (r1_tarski @ X2 @ X3)
% 0.15/0.50          | ~ (r1_tarski @ X2 @ X4)
% 0.15/0.50          | (r1_tarski @ X2 @ (k3_xboole_0 @ X3 @ X4)))),
% 0.15/0.50      inference('cnf', [status(esa)], [t19_xboole_1])).
% 0.15/0.50  thf('24', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X0)
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.15/0.50             (k3_xboole_0 @ (k2_relat_1 @ X0) @ X2))
% 0.15/0.50          | ~ (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ X2))),
% 0.15/0.50      inference('sup-', [status(thm)], ['22', '23'])).
% 0.15/0.50  thf('25', plain,
% 0.15/0.50      (![X0 : $i, X1 : $i]:
% 0.15/0.50         (~ (v1_relat_1 @ X0)
% 0.15/0.50          | (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.15/0.50             (k3_xboole_0 @ (k2_relat_1 @ X1) @ (k2_relat_1 @ X0)))
% 0.15/0.50          | ~ (v1_relat_1 @ X1))),
% 0.15/0.50      inference('sup-', [status(thm)], ['13', '24'])).
% 0.15/0.50  thf(t27_relat_1, conjecture,
% 0.15/0.50    (![A:$i]:
% 0.15/0.50     ( ( v1_relat_1 @ A ) =>
% 0.15/0.50       ( ![B:$i]:
% 0.15/0.50         ( ( v1_relat_1 @ B ) =>
% 0.15/0.50           ( r1_tarski @
% 0.15/0.50             ( k2_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ 
% 0.15/0.50             ( k3_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ))).
% 0.15/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.15/0.50    (~( ![A:$i]:
% 0.15/0.50        ( ( v1_relat_1 @ A ) =>
% 0.15/0.50          ( ![B:$i]:
% 0.15/0.50            ( ( v1_relat_1 @ B ) =>
% 0.15/0.50              ( r1_tarski @
% 0.15/0.50                ( k2_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ 
% 0.15/0.50                ( k3_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) )),
% 0.15/0.50    inference('cnf.neg', [status(esa)], [t27_relat_1])).
% 0.15/0.50  thf('26', plain,
% 0.15/0.50      (~ (r1_tarski @ (k2_relat_1 @ (k3_xboole_0 @ sk_A @ sk_B)) @ 
% 0.15/0.50          (k3_xboole_0 @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B)))),
% 0.15/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.15/0.50  thf('27', plain, ((~ (v1_relat_1 @ sk_A) | ~ (v1_relat_1 @ sk_B))),
% 0.15/0.50      inference('sup-', [status(thm)], ['25', '26'])).
% 0.15/0.50  thf('28', plain, ((v1_relat_1 @ sk_A)),
% 0.15/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.15/0.50  thf('29', plain, ((v1_relat_1 @ sk_B)),
% 0.15/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.15/0.50  thf('30', plain, ($false),
% 0.15/0.50      inference('demod', [status(thm)], ['27', '28', '29'])).
% 0.15/0.50  
% 0.15/0.50  % SZS output end Refutation
% 0.15/0.50  
% 0.15/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
