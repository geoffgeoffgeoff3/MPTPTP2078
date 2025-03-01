%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OjMSBtlKno

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:08 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   41 (  51 expanded)
%              Number of leaves         :   15 (  22 expanded)
%              Depth                    :   14
%              Number of atoms          :  242 ( 348 expanded)
%              Number of equality atoms :    5 (   6 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(t215_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) )
           => ( r1_xboole_0 @ A @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i] :
            ( ( v1_relat_1 @ B )
           => ( ( r1_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) )
             => ( r1_xboole_0 @ A @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t215_relat_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t21_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( r1_tarski @ A @ ( k2_zfmisc_1 @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ A ) ) ) ) )).

thf('1',plain,(
    ! [X12: $i] :
      ( ( r1_tarski @ X12 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ X12 ) @ ( k2_relat_1 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t21_relat_1])).

thf('2',plain,(
    ! [X12: $i] :
      ( ( r1_tarski @ X12 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ X12 ) @ ( k2_relat_1 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t21_relat_1])).

thf('3',plain,(
    r1_xboole_0 @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t127_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( r1_xboole_0 @ A @ B )
        | ( r1_xboole_0 @ C @ D ) )
     => ( r1_xboole_0 @ ( k2_zfmisc_1 @ A @ C ) @ ( k2_zfmisc_1 @ B @ D ) ) ) )).

thf('4',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ( r1_xboole_0 @ ( k2_zfmisc_1 @ X8 @ X9 ) @ ( k2_zfmisc_1 @ X10 @ X11 ) )
      | ~ ( r1_xboole_0 @ X9 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t127_zfmisc_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_xboole_0 @ ( k2_zfmisc_1 @ X1 @ ( k2_relat_1 @ sk_A ) ) @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(t83_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k4_xboole_0 @ A @ B )
        = A ) ) )).

thf('6',plain,(
    ! [X5: $i,X6: $i] :
      ( ( ( k4_xboole_0 @ X5 @ X6 )
        = X5 )
      | ~ ( r1_xboole_0 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k2_zfmisc_1 @ X1 @ ( k2_relat_1 @ sk_A ) ) @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) )
      = ( k2_zfmisc_1 @ X1 @ ( k2_relat_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t106_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) )
     => ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ A @ C ) ) ) )).

thf('8',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X2 @ X4 )
      | ~ ( r1_tarski @ X2 @ ( k4_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t106_xboole_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_A ) ) )
      | ( r1_xboole_0 @ X2 @ ( k2_zfmisc_1 @ X1 @ ( k2_relat_1 @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_A )
      | ( r1_xboole_0 @ sk_A @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['2','9'])).

thf('11',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ sk_A @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('14',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) @ sk_A ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X5: $i,X6: $i] :
      ( ( ( k4_xboole_0 @ X5 @ X6 )
        = X5 )
      | ~ ( r1_xboole_0 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) @ sk_A )
      = ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X2 @ X4 )
      | ~ ( r1_tarski @ X2 @ ( k4_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t106_xboole_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X1 @ ( k2_zfmisc_1 @ X0 @ ( k2_relat_1 @ sk_B ) ) )
      | ( r1_xboole_0 @ X1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( r1_xboole_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['1','18'])).

thf('20',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    r1_xboole_0 @ sk_B @ sk_A ),
    inference(demod,[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('23',plain,(
    r1_xboole_0 @ sk_A @ sk_B ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    $false ),
    inference(demod,[status(thm)],['0','23'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OjMSBtlKno
% 0.15/0.35  % Computer   : n018.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % DateTime   : Tue Dec  1 16:27:42 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.35  % Running portfolio for 600 s
% 0.15/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.15/0.35  % Number of cores: 8
% 0.15/0.35  % Python version: Python 3.6.8
% 0.15/0.35  % Running in FO mode
% 0.22/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.48  % Solved by: fo/fo7.sh
% 0.22/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.48  % done 42 iterations in 0.024s
% 0.22/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.48  % SZS output start Refutation
% 0.22/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.48  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.48  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.22/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.48  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.22/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.48  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.48  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.48  thf(t215_relat_1, conjecture,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ A ) =>
% 0.22/0.48       ( ![B:$i]:
% 0.22/0.48         ( ( v1_relat_1 @ B ) =>
% 0.22/0.48           ( ( r1_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) =>
% 0.22/0.48             ( r1_xboole_0 @ A @ B ) ) ) ) ))).
% 0.22/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.48    (~( ![A:$i]:
% 0.22/0.48        ( ( v1_relat_1 @ A ) =>
% 0.22/0.48          ( ![B:$i]:
% 0.22/0.48            ( ( v1_relat_1 @ B ) =>
% 0.22/0.48              ( ( r1_xboole_0 @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) =>
% 0.22/0.48                ( r1_xboole_0 @ A @ B ) ) ) ) ) )),
% 0.22/0.48    inference('cnf.neg', [status(esa)], [t215_relat_1])).
% 0.22/0.48  thf('0', plain, (~ (r1_xboole_0 @ sk_A @ sk_B)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(t21_relat_1, axiom,
% 0.22/0.48    (![A:$i]:
% 0.22/0.48     ( ( v1_relat_1 @ A ) =>
% 0.22/0.48       ( r1_tarski @
% 0.22/0.48         A @ ( k2_zfmisc_1 @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ A ) ) ) ))).
% 0.22/0.48  thf('1', plain,
% 0.22/0.48      (![X12 : $i]:
% 0.22/0.48         ((r1_tarski @ X12 @ 
% 0.22/0.48           (k2_zfmisc_1 @ (k1_relat_1 @ X12) @ (k2_relat_1 @ X12)))
% 0.22/0.48          | ~ (v1_relat_1 @ X12))),
% 0.22/0.48      inference('cnf', [status(esa)], [t21_relat_1])).
% 0.22/0.48  thf('2', plain,
% 0.22/0.48      (![X12 : $i]:
% 0.22/0.48         ((r1_tarski @ X12 @ 
% 0.22/0.48           (k2_zfmisc_1 @ (k1_relat_1 @ X12) @ (k2_relat_1 @ X12)))
% 0.22/0.48          | ~ (v1_relat_1 @ X12))),
% 0.22/0.48      inference('cnf', [status(esa)], [t21_relat_1])).
% 0.22/0.48  thf('3', plain, ((r1_xboole_0 @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(t127_zfmisc_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48     ( ( ( r1_xboole_0 @ A @ B ) | ( r1_xboole_0 @ C @ D ) ) =>
% 0.22/0.48       ( r1_xboole_0 @ ( k2_zfmisc_1 @ A @ C ) @ ( k2_zfmisc_1 @ B @ D ) ) ))).
% 0.22/0.48  thf('4', plain,
% 0.22/0.48      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ (k2_zfmisc_1 @ X8 @ X9) @ (k2_zfmisc_1 @ X10 @ X11))
% 0.22/0.48          | ~ (r1_xboole_0 @ X9 @ X11))),
% 0.22/0.48      inference('cnf', [status(esa)], [t127_zfmisc_1])).
% 0.22/0.48  thf('5', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (r1_xboole_0 @ (k2_zfmisc_1 @ X1 @ (k2_relat_1 @ sk_A)) @ 
% 0.22/0.48          (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['3', '4'])).
% 0.22/0.48  thf(t83_xboole_1, axiom,
% 0.22/0.48    (![A:$i,B:$i]:
% 0.22/0.48     ( ( r1_xboole_0 @ A @ B ) <=> ( ( k4_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.22/0.48  thf('6', plain,
% 0.22/0.48      (![X5 : $i, X6 : $i]:
% 0.22/0.48         (((k4_xboole_0 @ X5 @ X6) = (X5)) | ~ (r1_xboole_0 @ X5 @ X6))),
% 0.22/0.48      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.22/0.48  thf('7', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         ((k4_xboole_0 @ (k2_zfmisc_1 @ X1 @ (k2_relat_1 @ sk_A)) @ 
% 0.22/0.48           (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)))
% 0.22/0.48           = (k2_zfmisc_1 @ X1 @ (k2_relat_1 @ sk_A)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['5', '6'])).
% 0.22/0.48  thf(t106_xboole_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) =>
% 0.22/0.48       ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) ))).
% 0.22/0.48  thf('8', plain,
% 0.22/0.48      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ X2 @ X4)
% 0.22/0.48          | ~ (r1_tarski @ X2 @ (k4_xboole_0 @ X3 @ X4)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t106_xboole_1])).
% 0.22/0.48  thf('9', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.48         (~ (r1_tarski @ X2 @ (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_A)))
% 0.22/0.48          | (r1_xboole_0 @ X2 @ (k2_zfmisc_1 @ X1 @ (k2_relat_1 @ sk_B))))),
% 0.22/0.48      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.48  thf('10', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (~ (v1_relat_1 @ sk_A)
% 0.22/0.48          | (r1_xboole_0 @ sk_A @ (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B))))),
% 0.22/0.48      inference('sup-', [status(thm)], ['2', '9'])).
% 0.22/0.48  thf('11', plain, ((v1_relat_1 @ sk_A)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('12', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (r1_xboole_0 @ sk_A @ (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)))),
% 0.22/0.48      inference('demod', [status(thm)], ['10', '11'])).
% 0.22/0.48  thf(symmetry_r1_xboole_0, axiom,
% 0.22/0.48    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.22/0.48  thf('13', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.22/0.48      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.22/0.48  thf('14', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         (r1_xboole_0 @ (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)) @ sk_A)),
% 0.22/0.48      inference('sup-', [status(thm)], ['12', '13'])).
% 0.22/0.48  thf('15', plain,
% 0.22/0.48      (![X5 : $i, X6 : $i]:
% 0.22/0.48         (((k4_xboole_0 @ X5 @ X6) = (X5)) | ~ (r1_xboole_0 @ X5 @ X6))),
% 0.22/0.48      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.22/0.48  thf('16', plain,
% 0.22/0.48      (![X0 : $i]:
% 0.22/0.48         ((k4_xboole_0 @ (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)) @ sk_A)
% 0.22/0.48           = (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['14', '15'])).
% 0.22/0.48  thf('17', plain,
% 0.22/0.48      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ X2 @ X4)
% 0.22/0.48          | ~ (r1_tarski @ X2 @ (k4_xboole_0 @ X3 @ X4)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t106_xboole_1])).
% 0.22/0.48  thf('18', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (~ (r1_tarski @ X1 @ (k2_zfmisc_1 @ X0 @ (k2_relat_1 @ sk_B)))
% 0.22/0.48          | (r1_xboole_0 @ X1 @ sk_A))),
% 0.22/0.48      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.48  thf('19', plain, ((~ (v1_relat_1 @ sk_B) | (r1_xboole_0 @ sk_B @ sk_A))),
% 0.22/0.48      inference('sup-', [status(thm)], ['1', '18'])).
% 0.22/0.48  thf('20', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('21', plain, ((r1_xboole_0 @ sk_B @ sk_A)),
% 0.22/0.48      inference('demod', [status(thm)], ['19', '20'])).
% 0.22/0.48  thf('22', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.22/0.48      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.22/0.48  thf('23', plain, ((r1_xboole_0 @ sk_A @ sk_B)),
% 0.22/0.48      inference('sup-', [status(thm)], ['21', '22'])).
% 0.22/0.48  thf('24', plain, ($false), inference('demod', [status(thm)], ['0', '23'])).
% 0.22/0.48  
% 0.22/0.48  % SZS output end Refutation
% 0.22/0.48  
% 0.22/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
