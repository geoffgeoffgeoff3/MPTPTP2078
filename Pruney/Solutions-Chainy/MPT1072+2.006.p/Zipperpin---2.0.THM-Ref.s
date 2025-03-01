%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.gJkZLe6pZw

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:00:12 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   62 (  85 expanded)
%              Number of leaves         :   25 (  37 expanded)
%              Depth                    :    9
%              Number of atoms          :  410 (1056 expanded)
%              Number of equality atoms :   12 (  12 expanded)
%              Maximal formula depth    :   16 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k3_funct_2_type,type,(
    k3_funct_2: $i > $i > $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t189_funct_2,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ A )
             => ! [D: $i] :
                  ( ( ( v1_funct_1 @ D )
                    & ( v1_funct_2 @ D @ A @ B )
                    & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
                 => ( r2_hidden @ ( k3_funct_2 @ A @ B @ D @ C ) @ ( k2_relset_1 @ A @ B @ D ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ~ ( v1_xboole_0 @ B )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ A )
               => ! [D: $i] :
                    ( ( ( v1_funct_1 @ D )
                      & ( v1_funct_2 @ D @ A @ B )
                      & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
                   => ( r2_hidden @ ( k3_funct_2 @ A @ B @ D @ C ) @ ( k2_relset_1 @ A @ B @ D ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t189_funct_2])).

thf('0',plain,(
    ~ ( v1_xboole_0 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('2',plain,(
    ! [X7: $i,X8: $i] :
      ( ( r2_hidden @ X7 @ X8 )
      | ( v1_xboole_0 @ X8 )
      | ~ ( m1_subset_1 @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('3',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( r2_hidden @ sk_C @ sk_A ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    r2_hidden @ sk_C @ sk_A ),
    inference(clc,[status(thm)],['3','4'])).

thf('6',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t6_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_hidden @ C @ A )
       => ( ( B = k1_xboole_0 )
          | ( r2_hidden @ ( k1_funct_1 @ D @ C ) @ ( k2_relset_1 @ A @ B @ D ) ) ) ) ) )).

thf('7',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ~ ( r2_hidden @ X24 @ X25 )
      | ( X26 = k1_xboole_0 )
      | ~ ( v1_funct_1 @ X27 )
      | ~ ( v1_funct_2 @ X27 @ X25 @ X26 )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) )
      | ( r2_hidden @ ( k1_funct_1 @ X27 @ X24 ) @ ( k2_relset_1 @ X25 @ X26 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[t6_funct_2])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_D @ X0 ) @ ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_D ) )
      | ~ ( v1_funct_2 @ sk_D @ sk_A @ sk_B_1 )
      | ~ ( v1_funct_1 @ sk_D )
      | ( sk_B_1 = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    v1_funct_2 @ sk_D @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_D @ X0 ) @ ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_D ) )
      | ( sk_B_1 = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['8','9','10'])).

thf('12',plain,
    ( ( sk_B_1 = k1_xboole_0 )
    | ( r2_hidden @ ( k1_funct_1 @ sk_D @ sk_C ) @ ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['5','11'])).

thf('13',plain,(
    ~ ( r2_hidden @ ( k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ sk_C ) @ ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    m1_subset_1 @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k3_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ A ) )
     => ( ( k3_funct_2 @ A @ B @ C @ D )
        = ( k1_funct_1 @ C @ D ) ) ) )).

thf('16',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ~ ( v1_funct_2 @ X20 @ X21 @ X22 )
      | ~ ( v1_funct_1 @ X20 )
      | ( v1_xboole_0 @ X21 )
      | ~ ( m1_subset_1 @ X23 @ X21 )
      | ( ( k3_funct_2 @ X21 @ X22 @ X20 @ X23 )
        = ( k1_funct_1 @ X20 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k3_funct_2])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( ( k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ X0 )
        = ( k1_funct_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ sk_A )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( v1_funct_1 @ sk_D )
      | ~ ( v1_funct_2 @ sk_D @ sk_A @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    v1_funct_2 @ sk_D @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( ( k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ X0 )
        = ( k1_funct_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ sk_A )
      | ( v1_xboole_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['17','18','19'])).

thf('21',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ sk_A )
      | ( ( k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ X0 )
        = ( k1_funct_1 @ sk_D @ X0 ) ) ) ),
    inference(clc,[status(thm)],['20','21'])).

thf('23',plain,
    ( ( k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ sk_C )
    = ( k1_funct_1 @ sk_D @ sk_C ) ),
    inference('sup-',[status(thm)],['14','22'])).

thf('24',plain,(
    ~ ( r2_hidden @ ( k1_funct_1 @ sk_D @ sk_C ) @ ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['13','23'])).

thf('25',plain,(
    sk_B_1 = k1_xboole_0 ),
    inference('sup-',[status(thm)],['12','24'])).

thf(t4_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('26',plain,(
    ! [X4: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('27',plain,(
    ! [X9: $i,X10: $i] :
      ( ( r1_tarski @ X9 @ X10 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('28',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf(existence_m1_subset_1,axiom,(
    ! [A: $i] :
    ? [B: $i] :
      ( m1_subset_1 @ B @ A ) )).

thf('29',plain,(
    ! [X3: $i] :
      ( m1_subset_1 @ ( sk_B @ X3 ) @ X3 ) ),
    inference(cnf,[status(esa)],[existence_m1_subset_1])).

thf('30',plain,(
    ! [X7: $i,X8: $i] :
      ( ( r2_hidden @ X7 @ X8 )
      | ( v1_xboole_0 @ X8 )
      | ~ ( m1_subset_1 @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('31',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('32',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( r2_hidden @ X15 @ X16 )
      | ~ ( r1_tarski @ X16 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ~ ( r1_tarski @ X0 @ ( sk_B @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['28','33'])).

thf('35',plain,(
    $false ),
    inference(demod,[status(thm)],['0','25','34'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.gJkZLe6pZw
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:54:56 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.51  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.51  % Solved by: fo/fo7.sh
% 0.20/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.51  % done 80 iterations in 0.053s
% 0.20/0.51  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.51  % SZS output start Refutation
% 0.20/0.51  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.51  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.20/0.51  thf(k3_funct_2_type, type, k3_funct_2: $i > $i > $i > $i > $i).
% 0.20/0.51  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.51  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.20/0.51  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.51  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.51  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.51  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.20/0.51  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.51  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.20/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.51  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.51  thf(t189_funct_2, conjecture,
% 0.20/0.51    (![A:$i]:
% 0.20/0.51     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.51       ( ![B:$i]:
% 0.20/0.51         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.20/0.51           ( ![C:$i]:
% 0.20/0.51             ( ( m1_subset_1 @ C @ A ) =>
% 0.20/0.51               ( ![D:$i]:
% 0.20/0.51                 ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.20/0.51                     ( m1_subset_1 @
% 0.20/0.51                       D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.51                   ( r2_hidden @
% 0.20/0.51                     ( k3_funct_2 @ A @ B @ D @ C ) @ 
% 0.20/0.51                     ( k2_relset_1 @ A @ B @ D ) ) ) ) ) ) ) ) ))).
% 0.20/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.51    (~( ![A:$i]:
% 0.20/0.51        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.51          ( ![B:$i]:
% 0.20/0.51            ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.20/0.51              ( ![C:$i]:
% 0.20/0.51                ( ( m1_subset_1 @ C @ A ) =>
% 0.20/0.51                  ( ![D:$i]:
% 0.20/0.51                    ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.20/0.51                        ( m1_subset_1 @
% 0.20/0.51                          D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.51                      ( r2_hidden @
% 0.20/0.51                        ( k3_funct_2 @ A @ B @ D @ C ) @ 
% 0.20/0.51                        ( k2_relset_1 @ A @ B @ D ) ) ) ) ) ) ) ) ) )),
% 0.20/0.51    inference('cnf.neg', [status(esa)], [t189_funct_2])).
% 0.20/0.51  thf('0', plain, (~ (v1_xboole_0 @ sk_B_1)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('1', plain, ((m1_subset_1 @ sk_C @ sk_A)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf(t2_subset, axiom,
% 0.20/0.51    (![A:$i,B:$i]:
% 0.20/0.51     ( ( m1_subset_1 @ A @ B ) =>
% 0.20/0.51       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.20/0.51  thf('2', plain,
% 0.20/0.51      (![X7 : $i, X8 : $i]:
% 0.20/0.51         ((r2_hidden @ X7 @ X8)
% 0.20/0.51          | (v1_xboole_0 @ X8)
% 0.20/0.51          | ~ (m1_subset_1 @ X7 @ X8))),
% 0.20/0.51      inference('cnf', [status(esa)], [t2_subset])).
% 0.20/0.51  thf('3', plain, (((v1_xboole_0 @ sk_A) | (r2_hidden @ sk_C @ sk_A))),
% 0.20/0.51      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.51  thf('4', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('5', plain, ((r2_hidden @ sk_C @ sk_A)),
% 0.20/0.51      inference('clc', [status(thm)], ['3', '4'])).
% 0.20/0.51  thf('6', plain,
% 0.20/0.51      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf(t6_funct_2, axiom,
% 0.20/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.51     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.20/0.51         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.51       ( ( r2_hidden @ C @ A ) =>
% 0.20/0.51         ( ( ( B ) = ( k1_xboole_0 ) ) | 
% 0.20/0.51           ( r2_hidden @ ( k1_funct_1 @ D @ C ) @ ( k2_relset_1 @ A @ B @ D ) ) ) ) ))).
% 0.20/0.51  thf('7', plain,
% 0.20/0.51      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.20/0.51         (~ (r2_hidden @ X24 @ X25)
% 0.20/0.51          | ((X26) = (k1_xboole_0))
% 0.20/0.51          | ~ (v1_funct_1 @ X27)
% 0.20/0.51          | ~ (v1_funct_2 @ X27 @ X25 @ X26)
% 0.20/0.51          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26)))
% 0.20/0.51          | (r2_hidden @ (k1_funct_1 @ X27 @ X24) @ 
% 0.20/0.51             (k2_relset_1 @ X25 @ X26 @ X27)))),
% 0.20/0.51      inference('cnf', [status(esa)], [t6_funct_2])).
% 0.20/0.51  thf('8', plain,
% 0.20/0.51      (![X0 : $i]:
% 0.20/0.51         ((r2_hidden @ (k1_funct_1 @ sk_D @ X0) @ 
% 0.20/0.51           (k2_relset_1 @ sk_A @ sk_B_1 @ sk_D))
% 0.20/0.51          | ~ (v1_funct_2 @ sk_D @ sk_A @ sk_B_1)
% 0.20/0.51          | ~ (v1_funct_1 @ sk_D)
% 0.20/0.51          | ((sk_B_1) = (k1_xboole_0))
% 0.20/0.51          | ~ (r2_hidden @ X0 @ sk_A))),
% 0.20/0.51      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.51  thf('9', plain, ((v1_funct_2 @ sk_D @ sk_A @ sk_B_1)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('10', plain, ((v1_funct_1 @ sk_D)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('11', plain,
% 0.20/0.51      (![X0 : $i]:
% 0.20/0.51         ((r2_hidden @ (k1_funct_1 @ sk_D @ X0) @ 
% 0.20/0.51           (k2_relset_1 @ sk_A @ sk_B_1 @ sk_D))
% 0.20/0.51          | ((sk_B_1) = (k1_xboole_0))
% 0.20/0.51          | ~ (r2_hidden @ X0 @ sk_A))),
% 0.20/0.51      inference('demod', [status(thm)], ['8', '9', '10'])).
% 0.20/0.51  thf('12', plain,
% 0.20/0.51      ((((sk_B_1) = (k1_xboole_0))
% 0.20/0.51        | (r2_hidden @ (k1_funct_1 @ sk_D @ sk_C) @ 
% 0.20/0.51           (k2_relset_1 @ sk_A @ sk_B_1 @ sk_D)))),
% 0.20/0.51      inference('sup-', [status(thm)], ['5', '11'])).
% 0.20/0.51  thf('13', plain,
% 0.20/0.51      (~ (r2_hidden @ (k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ sk_C) @ 
% 0.20/0.51          (k2_relset_1 @ sk_A @ sk_B_1 @ sk_D))),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('14', plain, ((m1_subset_1 @ sk_C @ sk_A)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('15', plain,
% 0.20/0.51      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf(redefinition_k3_funct_2, axiom,
% 0.20/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.51     ( ( ( ~( v1_xboole_0 @ A ) ) & ( v1_funct_1 @ C ) & 
% 0.20/0.51         ( v1_funct_2 @ C @ A @ B ) & 
% 0.20/0.51         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.20/0.51         ( m1_subset_1 @ D @ A ) ) =>
% 0.20/0.51       ( ( k3_funct_2 @ A @ B @ C @ D ) = ( k1_funct_1 @ C @ D ) ) ))).
% 0.20/0.51  thf('16', plain,
% 0.20/0.51      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.20/0.51         (~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 0.20/0.51          | ~ (v1_funct_2 @ X20 @ X21 @ X22)
% 0.20/0.51          | ~ (v1_funct_1 @ X20)
% 0.20/0.51          | (v1_xboole_0 @ X21)
% 0.20/0.51          | ~ (m1_subset_1 @ X23 @ X21)
% 0.20/0.51          | ((k3_funct_2 @ X21 @ X22 @ X20 @ X23) = (k1_funct_1 @ X20 @ X23)))),
% 0.20/0.51      inference('cnf', [status(esa)], [redefinition_k3_funct_2])).
% 0.20/0.51  thf('17', plain,
% 0.20/0.51      (![X0 : $i]:
% 0.20/0.51         (((k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ X0) = (k1_funct_1 @ sk_D @ X0))
% 0.20/0.51          | ~ (m1_subset_1 @ X0 @ sk_A)
% 0.20/0.51          | (v1_xboole_0 @ sk_A)
% 0.20/0.51          | ~ (v1_funct_1 @ sk_D)
% 0.20/0.51          | ~ (v1_funct_2 @ sk_D @ sk_A @ sk_B_1))),
% 0.20/0.51      inference('sup-', [status(thm)], ['15', '16'])).
% 0.20/0.51  thf('18', plain, ((v1_funct_1 @ sk_D)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('19', plain, ((v1_funct_2 @ sk_D @ sk_A @ sk_B_1)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('20', plain,
% 0.20/0.51      (![X0 : $i]:
% 0.20/0.51         (((k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ X0) = (k1_funct_1 @ sk_D @ X0))
% 0.20/0.51          | ~ (m1_subset_1 @ X0 @ sk_A)
% 0.20/0.51          | (v1_xboole_0 @ sk_A))),
% 0.20/0.51      inference('demod', [status(thm)], ['17', '18', '19'])).
% 0.20/0.51  thf('21', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('22', plain,
% 0.20/0.51      (![X0 : $i]:
% 0.20/0.51         (~ (m1_subset_1 @ X0 @ sk_A)
% 0.20/0.51          | ((k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ X0)
% 0.20/0.51              = (k1_funct_1 @ sk_D @ X0)))),
% 0.20/0.51      inference('clc', [status(thm)], ['20', '21'])).
% 0.20/0.51  thf('23', plain,
% 0.20/0.51      (((k3_funct_2 @ sk_A @ sk_B_1 @ sk_D @ sk_C) = (k1_funct_1 @ sk_D @ sk_C))),
% 0.20/0.51      inference('sup-', [status(thm)], ['14', '22'])).
% 0.20/0.51  thf('24', plain,
% 0.20/0.51      (~ (r2_hidden @ (k1_funct_1 @ sk_D @ sk_C) @ 
% 0.20/0.51          (k2_relset_1 @ sk_A @ sk_B_1 @ sk_D))),
% 0.20/0.51      inference('demod', [status(thm)], ['13', '23'])).
% 0.20/0.51  thf('25', plain, (((sk_B_1) = (k1_xboole_0))),
% 0.20/0.51      inference('sup-', [status(thm)], ['12', '24'])).
% 0.20/0.51  thf(t4_subset_1, axiom,
% 0.20/0.51    (![A:$i]: ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ))).
% 0.20/0.51  thf('26', plain,
% 0.20/0.51      (![X4 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X4))),
% 0.20/0.51      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.20/0.51  thf(t3_subset, axiom,
% 0.20/0.51    (![A:$i,B:$i]:
% 0.20/0.51     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.51  thf('27', plain,
% 0.20/0.51      (![X9 : $i, X10 : $i]:
% 0.20/0.51         ((r1_tarski @ X9 @ X10) | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ X10)))),
% 0.20/0.51      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.51  thf('28', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.20/0.51      inference('sup-', [status(thm)], ['26', '27'])).
% 0.20/0.51  thf(existence_m1_subset_1, axiom,
% 0.20/0.51    (![A:$i]: ( ?[B:$i]: ( m1_subset_1 @ B @ A ) ))).
% 0.20/0.51  thf('29', plain, (![X3 : $i]: (m1_subset_1 @ (sk_B @ X3) @ X3)),
% 0.20/0.51      inference('cnf', [status(esa)], [existence_m1_subset_1])).
% 0.20/0.51  thf('30', plain,
% 0.20/0.51      (![X7 : $i, X8 : $i]:
% 0.20/0.51         ((r2_hidden @ X7 @ X8)
% 0.20/0.51          | (v1_xboole_0 @ X8)
% 0.20/0.51          | ~ (m1_subset_1 @ X7 @ X8))),
% 0.20/0.51      inference('cnf', [status(esa)], [t2_subset])).
% 0.20/0.51  thf('31', plain,
% 0.20/0.51      (![X0 : $i]: ((v1_xboole_0 @ X0) | (r2_hidden @ (sk_B @ X0) @ X0))),
% 0.20/0.51      inference('sup-', [status(thm)], ['29', '30'])).
% 0.20/0.51  thf(t7_ordinal1, axiom,
% 0.20/0.51    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.51  thf('32', plain,
% 0.20/0.51      (![X15 : $i, X16 : $i]:
% 0.20/0.51         (~ (r2_hidden @ X15 @ X16) | ~ (r1_tarski @ X16 @ X15))),
% 0.20/0.51      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.20/0.51  thf('33', plain,
% 0.20/0.51      (![X0 : $i]: ((v1_xboole_0 @ X0) | ~ (r1_tarski @ X0 @ (sk_B @ X0)))),
% 0.20/0.51      inference('sup-', [status(thm)], ['31', '32'])).
% 0.20/0.51  thf('34', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.20/0.51      inference('sup-', [status(thm)], ['28', '33'])).
% 0.20/0.51  thf('35', plain, ($false),
% 0.20/0.51      inference('demod', [status(thm)], ['0', '25', '34'])).
% 0.20/0.51  
% 0.20/0.51  % SZS output end Refutation
% 0.20/0.51  
% 0.20/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
