%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.1oDuCirUZP

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:45:53 EST 2020

% Result     : Theorem 0.59s
% Output     : Refutation 0.59s
% Verified   : 
% Statistics : Number of formulae       :   45 (  74 expanded)
%              Number of leaves         :   16 (  28 expanded)
%              Depth                    :   12
%              Number of atoms          :  354 ( 831 expanded)
%              Number of equality atoms :    8 (   8 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(t73_funct_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( r2_hidden @ A @ B ) )
       => ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ ( k2_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_relat_1 @ C )
          & ( v1_funct_1 @ C ) )
       => ( ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
            & ( r2_hidden @ A @ B ) )
         => ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ ( k2_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t73_funct_1])).

thf('0',plain,(
    ~ ( r2_hidden @ ( k1_funct_1 @ sk_C_1 @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k7_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ A )
     => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X0 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf(fc8_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) )
        & ( v1_funct_1 @ ( k7_relat_1 @ A @ B ) ) ) ) )).

thf('2',plain,(
    ! [X12: $i,X13: $i] :
      ( ~ ( v1_funct_1 @ X12 )
      | ~ ( v1_relat_1 @ X12 )
      | ( v1_funct_1 @ ( k7_relat_1 @ X12 @ X13 ) ) ) ),
    inference(cnf,[status(esa)],[fc8_funct_1])).

thf('3',plain,(
    r2_hidden @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t86_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) )
      <=> ( ( r2_hidden @ A @ B )
          & ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) ) ) ) )).

thf('5',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X2 @ X3 )
      | ~ ( r2_hidden @ X2 @ ( k1_relat_1 @ X4 ) )
      | ( r2_hidden @ X2 @ ( k1_relat_1 @ ( k7_relat_1 @ X4 @ X3 ) ) )
      | ~ ( v1_relat_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t86_relat_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_C_1 )
      | ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ X0 ) ) )
      | ~ ( r2_hidden @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ X0 ) ) )
      | ~ ( r2_hidden @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','8'])).

thf(d5_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( B
            = ( k2_relat_1 @ A ) )
        <=> ! [C: $i] :
              ( ( r2_hidden @ C @ B )
            <=> ? [D: $i] :
                  ( ( C
                    = ( k1_funct_1 @ A @ D ) )
                  & ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) )).

thf('10',plain,(
    ! [X6: $i,X8: $i,X10: $i,X11: $i] :
      ( ( X8
       != ( k2_relat_1 @ X6 ) )
      | ( r2_hidden @ X10 @ X8 )
      | ~ ( r2_hidden @ X11 @ ( k1_relat_1 @ X6 ) )
      | ( X10
       != ( k1_funct_1 @ X6 @ X11 ) )
      | ~ ( v1_funct_1 @ X6 )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('11',plain,(
    ! [X6: $i,X11: $i] :
      ( ~ ( v1_relat_1 @ X6 )
      | ~ ( v1_funct_1 @ X6 )
      | ~ ( r2_hidden @ X11 @ ( k1_relat_1 @ X6 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X6 @ X11 ) @ ( k2_relat_1 @ X6 ) ) ) ),
    inference(simplify,[status(thm)],['10'])).

thf('12',plain,
    ( ( r2_hidden @ ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) )
    | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['9','11'])).

thf('13',plain,
    ( ~ ( v1_relat_1 @ sk_C_1 )
    | ~ ( v1_funct_1 @ sk_C_1 )
    | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) )
    | ( r2_hidden @ ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['2','12'])).

thf('14',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,
    ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) )
    | ( r2_hidden @ ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['13','14','15'])).

thf('17',plain,
    ( ~ ( v1_relat_1 @ sk_C_1 )
    | ( r2_hidden @ ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['1','16'])).

thf('18',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    r2_hidden @ ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','8'])).

thf(t70_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) )
       => ( ( k1_funct_1 @ ( k7_relat_1 @ C @ B ) @ A )
          = ( k1_funct_1 @ C @ A ) ) ) ) )).

thf('21',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ~ ( r2_hidden @ X14 @ ( k1_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) ) )
      | ( ( k1_funct_1 @ ( k7_relat_1 @ X15 @ X16 ) @ X14 )
        = ( k1_funct_1 @ X15 @ X14 ) )
      | ~ ( v1_funct_1 @ X15 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t70_funct_1])).

thf('22',plain,
    ( ~ ( v1_relat_1 @ sk_C_1 )
    | ~ ( v1_funct_1 @ sk_C_1 )
    | ( ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A )
      = ( k1_funct_1 @ sk_C_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,
    ( ( k1_funct_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) @ sk_A )
    = ( k1_funct_1 @ sk_C_1 @ sk_A ) ),
    inference(demod,[status(thm)],['22','23','24'])).

thf('26',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_C_1 @ sk_A ) @ ( k2_relat_1 @ ( k7_relat_1 @ sk_C_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['19','25'])).

thf('27',plain,(
    $false ),
    inference(demod,[status(thm)],['0','26'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.1oDuCirUZP
% 0.14/0.35  % Computer   : n019.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 19:25:07 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.59/0.83  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.59/0.83  % Solved by: fo/fo7.sh
% 0.59/0.83  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.59/0.83  % done 114 iterations in 0.369s
% 0.59/0.83  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.59/0.83  % SZS output start Refutation
% 0.59/0.83  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.59/0.83  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.59/0.83  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.59/0.83  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.59/0.83  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.59/0.83  thf(sk_B_type, type, sk_B: $i).
% 0.59/0.83  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.59/0.83  thf(sk_A_type, type, sk_A: $i).
% 0.59/0.83  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.59/0.83  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.59/0.83  thf(t73_funct_1, conjecture,
% 0.59/0.83    (![A:$i,B:$i,C:$i]:
% 0.59/0.83     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.59/0.83       ( ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & ( r2_hidden @ A @ B ) ) =>
% 0.59/0.83         ( r2_hidden @
% 0.59/0.83           ( k1_funct_1 @ C @ A ) @ ( k2_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) ) ))).
% 0.59/0.83  thf(zf_stmt_0, negated_conjecture,
% 0.59/0.83    (~( ![A:$i,B:$i,C:$i]:
% 0.59/0.83        ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.59/0.83          ( ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & ( r2_hidden @ A @ B ) ) =>
% 0.59/0.83            ( r2_hidden @
% 0.59/0.83              ( k1_funct_1 @ C @ A ) @ ( k2_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) ) ) )),
% 0.59/0.83    inference('cnf.neg', [status(esa)], [t73_funct_1])).
% 0.59/0.83  thf('0', plain,
% 0.59/0.83      (~ (r2_hidden @ (k1_funct_1 @ sk_C_1 @ sk_A) @ 
% 0.59/0.83          (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf(dt_k7_relat_1, axiom,
% 0.59/0.83    (![A:$i,B:$i]:
% 0.59/0.83     ( ( v1_relat_1 @ A ) => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ))).
% 0.59/0.83  thf('1', plain,
% 0.59/0.83      (![X0 : $i, X1 : $i]:
% 0.59/0.83         (~ (v1_relat_1 @ X0) | (v1_relat_1 @ (k7_relat_1 @ X0 @ X1)))),
% 0.59/0.83      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 0.59/0.83  thf(fc8_funct_1, axiom,
% 0.59/0.83    (![A:$i,B:$i]:
% 0.59/0.83     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.59/0.83       ( ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) & 
% 0.59/0.83         ( v1_funct_1 @ ( k7_relat_1 @ A @ B ) ) ) ))).
% 0.59/0.83  thf('2', plain,
% 0.59/0.83      (![X12 : $i, X13 : $i]:
% 0.59/0.83         (~ (v1_funct_1 @ X12)
% 0.59/0.83          | ~ (v1_relat_1 @ X12)
% 0.59/0.83          | (v1_funct_1 @ (k7_relat_1 @ X12 @ X13)))),
% 0.59/0.83      inference('cnf', [status(esa)], [fc8_funct_1])).
% 0.59/0.83  thf('3', plain, ((r2_hidden @ sk_A @ sk_B)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('4', plain, ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C_1))),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf(t86_relat_1, axiom,
% 0.59/0.83    (![A:$i,B:$i,C:$i]:
% 0.59/0.83     ( ( v1_relat_1 @ C ) =>
% 0.59/0.83       ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) <=>
% 0.59/0.83         ( ( r2_hidden @ A @ B ) & ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) ) ) ))).
% 0.59/0.83  thf('5', plain,
% 0.59/0.83      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.59/0.83         (~ (r2_hidden @ X2 @ X3)
% 0.59/0.83          | ~ (r2_hidden @ X2 @ (k1_relat_1 @ X4))
% 0.59/0.83          | (r2_hidden @ X2 @ (k1_relat_1 @ (k7_relat_1 @ X4 @ X3)))
% 0.59/0.83          | ~ (v1_relat_1 @ X4))),
% 0.59/0.83      inference('cnf', [status(esa)], [t86_relat_1])).
% 0.59/0.83  thf('6', plain,
% 0.59/0.83      (![X0 : $i]:
% 0.59/0.83         (~ (v1_relat_1 @ sk_C_1)
% 0.59/0.83          | (r2_hidden @ sk_A @ (k1_relat_1 @ (k7_relat_1 @ sk_C_1 @ X0)))
% 0.59/0.83          | ~ (r2_hidden @ sk_A @ X0))),
% 0.59/0.83      inference('sup-', [status(thm)], ['4', '5'])).
% 0.59/0.83  thf('7', plain, ((v1_relat_1 @ sk_C_1)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('8', plain,
% 0.59/0.83      (![X0 : $i]:
% 0.59/0.83         ((r2_hidden @ sk_A @ (k1_relat_1 @ (k7_relat_1 @ sk_C_1 @ X0)))
% 0.59/0.83          | ~ (r2_hidden @ sk_A @ X0))),
% 0.59/0.83      inference('demod', [status(thm)], ['6', '7'])).
% 0.59/0.83  thf('9', plain,
% 0.59/0.83      ((r2_hidden @ sk_A @ (k1_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))),
% 0.59/0.83      inference('sup-', [status(thm)], ['3', '8'])).
% 0.59/0.83  thf(d5_funct_1, axiom,
% 0.59/0.83    (![A:$i]:
% 0.59/0.83     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.59/0.83       ( ![B:$i]:
% 0.59/0.83         ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 0.59/0.83           ( ![C:$i]:
% 0.59/0.83             ( ( r2_hidden @ C @ B ) <=>
% 0.59/0.83               ( ?[D:$i]:
% 0.59/0.83                 ( ( ( C ) = ( k1_funct_1 @ A @ D ) ) & 
% 0.59/0.83                   ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) ))).
% 0.59/0.83  thf('10', plain,
% 0.59/0.83      (![X6 : $i, X8 : $i, X10 : $i, X11 : $i]:
% 0.59/0.83         (((X8) != (k2_relat_1 @ X6))
% 0.59/0.83          | (r2_hidden @ X10 @ X8)
% 0.59/0.83          | ~ (r2_hidden @ X11 @ (k1_relat_1 @ X6))
% 0.59/0.83          | ((X10) != (k1_funct_1 @ X6 @ X11))
% 0.59/0.83          | ~ (v1_funct_1 @ X6)
% 0.59/0.83          | ~ (v1_relat_1 @ X6))),
% 0.59/0.83      inference('cnf', [status(esa)], [d5_funct_1])).
% 0.59/0.83  thf('11', plain,
% 0.59/0.83      (![X6 : $i, X11 : $i]:
% 0.59/0.83         (~ (v1_relat_1 @ X6)
% 0.59/0.83          | ~ (v1_funct_1 @ X6)
% 0.59/0.83          | ~ (r2_hidden @ X11 @ (k1_relat_1 @ X6))
% 0.59/0.83          | (r2_hidden @ (k1_funct_1 @ X6 @ X11) @ (k2_relat_1 @ X6)))),
% 0.59/0.83      inference('simplify', [status(thm)], ['10'])).
% 0.59/0.83  thf('12', plain,
% 0.59/0.83      (((r2_hidden @ (k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A) @ 
% 0.59/0.83         (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))
% 0.59/0.83        | ~ (v1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B))
% 0.59/0.83        | ~ (v1_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))),
% 0.59/0.83      inference('sup-', [status(thm)], ['9', '11'])).
% 0.59/0.83  thf('13', plain,
% 0.59/0.83      ((~ (v1_relat_1 @ sk_C_1)
% 0.59/0.83        | ~ (v1_funct_1 @ sk_C_1)
% 0.59/0.83        | ~ (v1_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B))
% 0.59/0.83        | (r2_hidden @ (k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A) @ 
% 0.59/0.83           (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B))))),
% 0.59/0.83      inference('sup-', [status(thm)], ['2', '12'])).
% 0.59/0.83  thf('14', plain, ((v1_relat_1 @ sk_C_1)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('15', plain, ((v1_funct_1 @ sk_C_1)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('16', plain,
% 0.59/0.83      ((~ (v1_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B))
% 0.59/0.83        | (r2_hidden @ (k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A) @ 
% 0.59/0.83           (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B))))),
% 0.59/0.83      inference('demod', [status(thm)], ['13', '14', '15'])).
% 0.59/0.83  thf('17', plain,
% 0.59/0.83      ((~ (v1_relat_1 @ sk_C_1)
% 0.59/0.83        | (r2_hidden @ (k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A) @ 
% 0.59/0.83           (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B))))),
% 0.59/0.83      inference('sup-', [status(thm)], ['1', '16'])).
% 0.59/0.83  thf('18', plain, ((v1_relat_1 @ sk_C_1)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('19', plain,
% 0.59/0.83      ((r2_hidden @ (k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A) @ 
% 0.59/0.83        (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))),
% 0.59/0.83      inference('demod', [status(thm)], ['17', '18'])).
% 0.59/0.83  thf('20', plain,
% 0.59/0.83      ((r2_hidden @ sk_A @ (k1_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))),
% 0.59/0.83      inference('sup-', [status(thm)], ['3', '8'])).
% 0.59/0.83  thf(t70_funct_1, axiom,
% 0.59/0.83    (![A:$i,B:$i,C:$i]:
% 0.59/0.83     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.59/0.83       ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) =>
% 0.59/0.83         ( ( k1_funct_1 @ ( k7_relat_1 @ C @ B ) @ A ) = ( k1_funct_1 @ C @ A ) ) ) ))).
% 0.59/0.83  thf('21', plain,
% 0.59/0.83      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.59/0.83         (~ (r2_hidden @ X14 @ (k1_relat_1 @ (k7_relat_1 @ X15 @ X16)))
% 0.59/0.83          | ((k1_funct_1 @ (k7_relat_1 @ X15 @ X16) @ X14)
% 0.59/0.83              = (k1_funct_1 @ X15 @ X14))
% 0.59/0.83          | ~ (v1_funct_1 @ X15)
% 0.59/0.83          | ~ (v1_relat_1 @ X15))),
% 0.59/0.83      inference('cnf', [status(esa)], [t70_funct_1])).
% 0.59/0.83  thf('22', plain,
% 0.59/0.83      ((~ (v1_relat_1 @ sk_C_1)
% 0.59/0.83        | ~ (v1_funct_1 @ sk_C_1)
% 0.59/0.83        | ((k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A)
% 0.59/0.83            = (k1_funct_1 @ sk_C_1 @ sk_A)))),
% 0.59/0.83      inference('sup-', [status(thm)], ['20', '21'])).
% 0.59/0.83  thf('23', plain, ((v1_relat_1 @ sk_C_1)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('24', plain, ((v1_funct_1 @ sk_C_1)),
% 0.59/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.83  thf('25', plain,
% 0.59/0.83      (((k1_funct_1 @ (k7_relat_1 @ sk_C_1 @ sk_B) @ sk_A)
% 0.59/0.83         = (k1_funct_1 @ sk_C_1 @ sk_A))),
% 0.59/0.83      inference('demod', [status(thm)], ['22', '23', '24'])).
% 0.59/0.83  thf('26', plain,
% 0.59/0.83      ((r2_hidden @ (k1_funct_1 @ sk_C_1 @ sk_A) @ 
% 0.59/0.83        (k2_relat_1 @ (k7_relat_1 @ sk_C_1 @ sk_B)))),
% 0.59/0.83      inference('demod', [status(thm)], ['19', '25'])).
% 0.59/0.83  thf('27', plain, ($false), inference('demod', [status(thm)], ['0', '26'])).
% 0.59/0.83  
% 0.59/0.83  % SZS output end Refutation
% 0.59/0.83  
% 0.66/0.84  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
