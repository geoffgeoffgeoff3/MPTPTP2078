%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.jvAjgtv6Uy

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:42:06 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   49 ( 109 expanded)
%              Number of leaves         :   21 (  43 expanded)
%              Depth                    :   11
%              Number of atoms          :  241 ( 668 expanded)
%              Number of equality atoms :   29 (  77 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t150_relat_1,conjecture,(
    ! [A: $i] :
      ( ( k9_relat_1 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( k9_relat_1 @ k1_xboole_0 @ A )
        = k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t150_relat_1])).

thf('0',plain,(
    ( k9_relat_1 @ k1_xboole_0 @ sk_A )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('1',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf(t145_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k9_relat_1 @ B @ A )
        = ( k9_relat_1 @ B @ ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) ) )).

thf('2',plain,(
    ! [X29: $i,X30: $i] :
      ( ( ( k9_relat_1 @ X29 @ X30 )
        = ( k9_relat_1 @ X29 @ ( k3_xboole_0 @ ( k1_relat_1 @ X29 ) @ X30 ) ) )
      | ~ ( v1_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t145_relat_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( ( k9_relat_1 @ k1_xboole_0 @ X0 )
        = ( k9_relat_1 @ k1_xboole_0 @ ( k3_xboole_0 @ k1_xboole_0 @ X0 ) ) )
      | ~ ( v1_relat_1 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('4',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k4_xboole_0 @ X10 @ ( k4_xboole_0 @ X10 @ X11 ) )
      = ( k3_xboole_0 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf(t4_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf('5',plain,(
    ! [X12: $i] :
      ( ( k4_xboole_0 @ k1_xboole_0 @ X12 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t4_boole])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( ( k9_relat_1 @ k1_xboole_0 @ X0 )
        = ( k9_relat_1 @ k1_xboole_0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['3','6'])).

thf(d1_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
    <=> ! [B: $i] :
          ~ ( ( r2_hidden @ B @ A )
            & ! [C: $i,D: $i] :
                ( B
               != ( k4_tarski @ C @ D ) ) ) ) )).

thf('8',plain,(
    ! [X26: $i] :
      ( ( v1_relat_1 @ X26 )
      | ( r2_hidden @ ( sk_B @ X26 ) @ X26 ) ) ),
    inference(cnf,[status(esa)],[d1_relat_1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('10',plain,(
    ! [X3: $i,X5: $i,X6: $i] :
      ( ~ ( r2_hidden @ X5 @ ( k3_xboole_0 @ X3 @ X6 ) )
      | ~ ( r1_xboole_0 @ X3 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ k1_xboole_0 )
      | ~ ( r1_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('13',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ( ( k3_xboole_0 @ X0 @ X2 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference(simplify,[status(thm)],['14'])).

thf('16',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['11','15'])).

thf('17',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['8','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ k1_xboole_0 @ X0 )
      = ( k9_relat_1 @ k1_xboole_0 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['7','17'])).

thf('19',plain,(
    ( k9_relat_1 @ k1_xboole_0 @ k1_xboole_0 )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['0','18'])).

thf(t149_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k9_relat_1 @ A @ k1_xboole_0 )
        = k1_xboole_0 ) ) )).

thf('20',plain,(
    ! [X31: $i] :
      ( ( ( k9_relat_1 @ X31 @ k1_xboole_0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X31 ) ) ),
    inference(cnf,[status(esa)],[t149_relat_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ k1_xboole_0 @ X0 )
      = ( k9_relat_1 @ k1_xboole_0 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['7','17'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( ( k9_relat_1 @ k1_xboole_0 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['20','21'])).

thf('23',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['8','16'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['19','24'])).

thf('26',plain,(
    $false ),
    inference(simplify,[status(thm)],['25'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.jvAjgtv6Uy
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:19:41 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.45  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.45  % Solved by: fo/fo7.sh
% 0.21/0.45  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.45  % done 38 iterations in 0.021s
% 0.21/0.45  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.45  % SZS output start Refutation
% 0.21/0.45  thf(sk_B_type, type, sk_B: $i > $i).
% 0.21/0.45  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.21/0.45  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.45  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.45  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.45  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.21/0.45  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.45  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.45  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.45  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.45  thf(t150_relat_1, conjecture,
% 0.21/0.45    (![A:$i]: ( ( k9_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 0.21/0.45  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.45    (~( ![A:$i]: ( ( k9_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) )),
% 0.21/0.45    inference('cnf.neg', [status(esa)], [t150_relat_1])).
% 0.21/0.45  thf('0', plain, (((k9_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0))),
% 0.21/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.45  thf(t60_relat_1, axiom,
% 0.21/0.45    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.21/0.45     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.21/0.45  thf('1', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.21/0.45      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.21/0.45  thf(t145_relat_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( v1_relat_1 @ B ) =>
% 0.21/0.45       ( ( k9_relat_1 @ B @ A ) =
% 0.21/0.45         ( k9_relat_1 @ B @ ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) ))).
% 0.21/0.45  thf('2', plain,
% 0.21/0.45      (![X29 : $i, X30 : $i]:
% 0.21/0.45         (((k9_relat_1 @ X29 @ X30)
% 0.21/0.45            = (k9_relat_1 @ X29 @ (k3_xboole_0 @ (k1_relat_1 @ X29) @ X30)))
% 0.21/0.45          | ~ (v1_relat_1 @ X29))),
% 0.21/0.45      inference('cnf', [status(esa)], [t145_relat_1])).
% 0.21/0.45  thf('3', plain,
% 0.21/0.45      (![X0 : $i]:
% 0.21/0.45         (((k9_relat_1 @ k1_xboole_0 @ X0)
% 0.21/0.45            = (k9_relat_1 @ k1_xboole_0 @ (k3_xboole_0 @ k1_xboole_0 @ X0)))
% 0.21/0.45          | ~ (v1_relat_1 @ k1_xboole_0))),
% 0.21/0.45      inference('sup+', [status(thm)], ['1', '2'])).
% 0.21/0.45  thf(t48_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.45  thf('4', plain,
% 0.21/0.45      (![X10 : $i, X11 : $i]:
% 0.21/0.45         ((k4_xboole_0 @ X10 @ (k4_xboole_0 @ X10 @ X11))
% 0.21/0.45           = (k3_xboole_0 @ X10 @ X11))),
% 0.21/0.45      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.21/0.45  thf(t4_boole, axiom,
% 0.21/0.45    (![A:$i]: ( ( k4_xboole_0 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 0.21/0.45  thf('5', plain,
% 0.21/0.45      (![X12 : $i]: ((k4_xboole_0 @ k1_xboole_0 @ X12) = (k1_xboole_0))),
% 0.21/0.45      inference('cnf', [status(esa)], [t4_boole])).
% 0.21/0.45  thf('6', plain,
% 0.21/0.45      (![X0 : $i]: ((k3_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.21/0.45      inference('sup+', [status(thm)], ['4', '5'])).
% 0.21/0.45  thf('7', plain,
% 0.21/0.45      (![X0 : $i]:
% 0.21/0.45         (((k9_relat_1 @ k1_xboole_0 @ X0)
% 0.21/0.45            = (k9_relat_1 @ k1_xboole_0 @ k1_xboole_0))
% 0.21/0.45          | ~ (v1_relat_1 @ k1_xboole_0))),
% 0.21/0.45      inference('demod', [status(thm)], ['3', '6'])).
% 0.21/0.45  thf(d1_relat_1, axiom,
% 0.21/0.45    (![A:$i]:
% 0.21/0.45     ( ( v1_relat_1 @ A ) <=>
% 0.21/0.45       ( ![B:$i]:
% 0.21/0.45         ( ~( ( r2_hidden @ B @ A ) & 
% 0.21/0.45              ( ![C:$i,D:$i]: ( ( B ) != ( k4_tarski @ C @ D ) ) ) ) ) ) ))).
% 0.21/0.45  thf('8', plain,
% 0.21/0.45      (![X26 : $i]: ((v1_relat_1 @ X26) | (r2_hidden @ (sk_B @ X26) @ X26))),
% 0.21/0.45      inference('cnf', [status(esa)], [d1_relat_1])).
% 0.21/0.45  thf('9', plain,
% 0.21/0.45      (![X0 : $i]: ((k3_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.21/0.45      inference('sup+', [status(thm)], ['4', '5'])).
% 0.21/0.45  thf(t4_xboole_0, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.21/0.45            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.21/0.45       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.21/0.45            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.21/0.45  thf('10', plain,
% 0.21/0.45      (![X3 : $i, X5 : $i, X6 : $i]:
% 0.21/0.45         (~ (r2_hidden @ X5 @ (k3_xboole_0 @ X3 @ X6))
% 0.21/0.45          | ~ (r1_xboole_0 @ X3 @ X6))),
% 0.21/0.45      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.21/0.45  thf('11', plain,
% 0.21/0.45      (![X0 : $i, X1 : $i]:
% 0.21/0.45         (~ (r2_hidden @ X1 @ k1_xboole_0) | ~ (r1_xboole_0 @ k1_xboole_0 @ X0))),
% 0.21/0.45      inference('sup-', [status(thm)], ['9', '10'])).
% 0.21/0.45  thf('12', plain,
% 0.21/0.45      (![X0 : $i]: ((k3_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.21/0.45      inference('sup+', [status(thm)], ['4', '5'])).
% 0.21/0.45  thf(d7_xboole_0, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.21/0.45       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.21/0.45  thf('13', plain,
% 0.21/0.45      (![X0 : $i, X2 : $i]:
% 0.21/0.45         ((r1_xboole_0 @ X0 @ X2) | ((k3_xboole_0 @ X0 @ X2) != (k1_xboole_0)))),
% 0.21/0.45      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.21/0.45  thf('14', plain,
% 0.21/0.45      (![X0 : $i]:
% 0.21/0.45         (((k1_xboole_0) != (k1_xboole_0)) | (r1_xboole_0 @ k1_xboole_0 @ X0))),
% 0.21/0.45      inference('sup-', [status(thm)], ['12', '13'])).
% 0.21/0.45  thf('15', plain, (![X0 : $i]: (r1_xboole_0 @ k1_xboole_0 @ X0)),
% 0.21/0.45      inference('simplify', [status(thm)], ['14'])).
% 0.21/0.45  thf('16', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.21/0.45      inference('demod', [status(thm)], ['11', '15'])).
% 0.21/0.45  thf('17', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.21/0.45      inference('sup-', [status(thm)], ['8', '16'])).
% 0.21/0.45  thf('18', plain,
% 0.21/0.45      (![X0 : $i]:
% 0.21/0.45         ((k9_relat_1 @ k1_xboole_0 @ X0)
% 0.21/0.45           = (k9_relat_1 @ k1_xboole_0 @ k1_xboole_0))),
% 0.21/0.45      inference('demod', [status(thm)], ['7', '17'])).
% 0.21/0.45  thf('19', plain,
% 0.21/0.45      (((k9_relat_1 @ k1_xboole_0 @ k1_xboole_0) != (k1_xboole_0))),
% 0.21/0.45      inference('demod', [status(thm)], ['0', '18'])).
% 0.21/0.45  thf(t149_relat_1, axiom,
% 0.21/0.45    (![A:$i]:
% 0.21/0.45     ( ( v1_relat_1 @ A ) =>
% 0.21/0.45       ( ( k9_relat_1 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ) ))).
% 0.21/0.45  thf('20', plain,
% 0.21/0.45      (![X31 : $i]:
% 0.21/0.45         (((k9_relat_1 @ X31 @ k1_xboole_0) = (k1_xboole_0))
% 0.21/0.45          | ~ (v1_relat_1 @ X31))),
% 0.21/0.45      inference('cnf', [status(esa)], [t149_relat_1])).
% 0.21/0.45  thf('21', plain,
% 0.21/0.45      (![X0 : $i]:
% 0.21/0.45         ((k9_relat_1 @ k1_xboole_0 @ X0)
% 0.21/0.45           = (k9_relat_1 @ k1_xboole_0 @ k1_xboole_0))),
% 0.21/0.45      inference('demod', [status(thm)], ['7', '17'])).
% 0.21/0.45  thf('22', plain,
% 0.21/0.45      (![X0 : $i]:
% 0.21/0.45         (((k9_relat_1 @ k1_xboole_0 @ X0) = (k1_xboole_0))
% 0.21/0.45          | ~ (v1_relat_1 @ k1_xboole_0))),
% 0.21/0.45      inference('sup+', [status(thm)], ['20', '21'])).
% 0.21/0.45  thf('23', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.21/0.45      inference('sup-', [status(thm)], ['8', '16'])).
% 0.21/0.45  thf('24', plain,
% 0.21/0.45      (![X0 : $i]: ((k9_relat_1 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.21/0.45      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.45  thf('25', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.21/0.45      inference('demod', [status(thm)], ['19', '24'])).
% 0.21/0.45  thf('26', plain, ($false), inference('simplify', [status(thm)], ['25'])).
% 0.21/0.45  
% 0.21/0.45  % SZS output end Refutation
% 0.21/0.45  
% 0.21/0.46  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
