Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC727384D1
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Jun 2023 15:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qBxlR-0001R9-Nf;
	Wed, 21 Jun 2023 13:20:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jani.nikula@intel.com>) id 1qBxiJ-0001Nu-9V;
 Wed, 21 Jun 2023 13:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6oZcvSHWqtgEUtsTf2+2MRV1QLa/jDxQtuRf2WPWods=; b=Z8NEB/qwSC7AFmJl3JBc022+Zw
 k/d9V1f1hPa0cOC4tCgqwihahZkdlYXP9SpSbhIy5e5dx89KxFCnVML0Y+431a1/3QjvQMAtD3y9h
 dLvKC/+NaPCUZeX9BYkPEIXNNYfBT3CWWtn9fZbKCd1mmSdFqXLKNgFGw7Nh27aS/Q74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6oZcvSHWqtgEUtsTf2+2MRV1QLa/jDxQtuRf2WPWods=; b=W9K4eM2RldCFu241uJNoDAmjEs
 HENYeYwqbp9/BASo+bmLWdkB+Y4+CnPtMh6xM5z6ylxu96Ova4opyyZQnK8lbjx60hlb1r+fpogz+
 PyIu3/fpsKrdFGTfyKslVPJk6vdT9//RK+ksGGTENDFdMEumlD+3MjfcWa9L9eNLncMI=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBxiE-0002u5-Gm; Wed, 21 Jun 2023 13:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687353450; x=1718889450;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9eMWiG7JI6/9oPvFtdl/3iOGYIkGUexXwjKhm4v9hgQ=;
 b=bCKCupaYl+EEOS5QZZqFy7/P+ML1IyBgPHBQi6X+UU8780XpNTpf4U6B
 gFrDdR8bKiHWep8CBCfe+n3QcNA4kM2mVaRIrbZBZZkzO5Pc41a93wxH/
 deR0l3dJH1ofc/Owpgw21aSPf9Oltci2/V99rUNO20vRvyv0ZsS5VB7Ts
 sKB8gqtYRiN3W+n++5YvMKBFRyWHoyBW5/rm47wwDkrLmFGQYaz2Uhi/e
 WBbKSEilvIyOf60jil0GTDrDM6Wa+s8i8SKVh3rSRX6UE6fHg3afFOtl+
 OPjnTHLAfOkzS0xosvF88juEap/GL0nYFRRaas3CCUFF95JN9fehY2Wu8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="446546888"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="446546888"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 06:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="664658294"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="664658294"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 06:15:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Joel Granados <j.granados@samsung.com>
In-Reply-To: <20230621130614.s36w4u7dzmb5d5p3@localhost>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230621091000.424843-1-j.granados@samsung.com>
 <CGME20230621094824eucas1p2b6adfbd3f15ff3665674917f419b25d3@eucas1p2.samsung.com>
 <20230621094817.433842-1-j.granados@samsung.com>
 <87o7l92hg8.fsf@intel.com> <20230621130614.s36w4u7dzmb5d5p3@localhost>
Date: Wed, 21 Jun 2023 16:15:46 +0300
Message-ID: <878rcd2by5.fsf@intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com>
 wrote: > On Wed, Jun 21, 2023 at 02:16:55PM +0300, Jani Nikula wrote: >>
 On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com> wrote: [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qBxiE-0002u5-Gm
X-Mailman-Approved-At: Wed, 21 Jun 2023 13:20:48 +0000
Subject: Re: [Openipmi-developer] [PATCH 09/11] sysctl: Remove the end
 element in sysctl table arrays
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Juri Lelli <juri.lelli@redhat.com>, Miaohe Lin <linmiaohe@huawei.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org,
 Ben Segall <bsegall@google.com>, linux-sctp@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>, Wei Liu <wei.liu@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, bridge@lists.linux-foundation.org,
 James Morris <jmorris@namei.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Eric Biggers <ebiggers@kernel.org>,
 linux-cachefs@redhat.com, Mel Gorman <mgorman@suse.de>, "Darrick J.
 Wong" <djwong@kernel.org>, Waiman Long <longman@redhat.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Martin Schiller <ms@dev.tdt.de>,
 Russ Weight <russell.h.weight@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Boqun Feng <boqun.feng@gmail.com>, Nicholas Piggin <npiggin@gmail.com>,
 John Ogness <john.ogness@linutronix.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Remi Denis-Courmont <courmisch@gmail.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, Christian Brauner <brauner@kernel.org>,
 Will Drewry <wad@chromium.org>, Neil Horman <nhorman@tuxdriver.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, mcgrof@kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, netfilter-devel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 Andrew Morton <akpm@linux-foundation.org>, linux-trace-kernel@vger.kernel.org,
 linux-wpan@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 linux-aio@kvack.org, "Jason A.
 Donenfeld" <Jason@zx2c4.com>, linux-ia64@vger.kernel.org,
 Naoya Horiguchi <naoya.horiguchi@nec.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, Phillip Potter <phil@philpotter.co.uk>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 keyrings@vger.kernel.org, John Stultz <jstultz@google.com>,
 Stanislav Fomichev <sdf@google.com>, Jan Karcher <jaka@linux.ibm.com>,
 codalist@telemann.coda.cs.cmu.edu, linux-s390@vger.kernel.org,
 Valentin Schneider <vschneid@redhat.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Corey Minyard <minyard@acm.org>,
 Leon Romanovsky <leon@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Will Deacon <will@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Mat Martineau <martineau@kernel.org>, Matthew Bobrowski <repnop@google.com>,
 Julian Anastasov <ja@ssi.bg>, coreteam@netfilter.org,
 Roopa Prabhu <roopa@nvidia.com>, Yonghong Song <yhs@fb.com>,
 Iurii Zaikin <yzaikin@google.com>, Sven Schnelle <svens@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Mike Travis <mike.travis@hpe.com>,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Xin Long <lucien.xin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, Hao Luo <haoluo@google.com>,
 Theodore Ts'o <tytso@mit.edu>, Stephen Boyd <sboyd@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, Florian Westphal <fw@strlen.de>,
 Robin Holt <robinmholt@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Jon Maloy <jmaloy@redhat.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 Mike Kravetz <mike.kravetz@oracle.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-hams@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Marc Dionne <marc.dionne@auristor.com>,
 Jiri Slaby <jirislaby@kernel.org>, linux-afs@lists.infradead.org,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, lvs-devel@vger.kernel.org,
 coda@cs.cmu.edu, Doug Gilbert <dgilbert@interlog.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Paolo Abeni <pabeni@redhat.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 intel-gfx@lists.freedesktop.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-crypto@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net, mptcp@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, linux-nfs@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, Andy Lutomirski <luto@amacapital.net>,
 linux-xfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 netdev@vger.kernel.org, Ying Xue <ying.xue@windriver.com>, bpf@vger.kernel.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Alexander Aring <alex.aring@gmail.com>, Jan Kara <jack@suse.cz>,
 Steve Wahl <steve.wahl@hpe.com>, Peter Zijlstra <peterz@infradead.org>,
 Balbir Singh <bsingharora@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 KP Singh <kpsingh@kernel.org>, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, "H. Peter
 Anvin" <hpa@zytor.com>, David Airlie <airlied@gmail.com>,
 Steffen Klassert <steffen.klassert@secunet.com>, rds-devel@oss.oracle.com,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-scsi@vger.kernel.org,
 dccp@vger.kernel.org, Mark Fasheh <mark@fasheh.com>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, Joerg Reuter <jreuter@yaina.de>,
 linux-hyperv@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, Paul Moore <paul@paul-moore.com>,
 Juergen Gross <jgross@suse.com>, John Johansen <john.johansen@canonical.com>,
 linux-x25@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 David Ahern <dsahern@kernel.org>, kexec@lists.infradead.org,
 linux-security-module@vger.kernel.org, Benjamin LaHaise <bcrl@kvack.org>,
 tipc-discussion@lists.sourceforge.net, Daniel Vetter <daniel@ffwll.ch>,
 Martin KaFai Lau <martin.lau@linux.dev>, Karsten Graul <kgraul@linux.ibm.com>,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com> wrote:
> On Wed, Jun 21, 2023 at 02:16:55PM +0300, Jani Nikula wrote:
>> On Wed, 21 Jun 2023, Joel Granados <j.granados@samsung.com> wrote:
>> > Remove the empty end element from all the arrays that are passed to the
>> > register sysctl calls. In some files this means reducing the explicit
>> > array size by one. Also make sure that we are using the size in
>> > ctl_table_header instead of evaluating the .procname element.
>> 
>> Where's the harm in removing the end elements driver by driver? This is
>> an unwieldy patch to handle.
>
> I totally agree. Its a big one!!! but I'm concerned of breaking bisectibility:
> * I could for example separate all the removes into separate commits and
>   then have a final commit that removes the check for the empty element.
>   But this will leave the tree in a state where the for loop will have
>   undefined behavior when it looks for the empty end element. It might
>   or might not work (probably not :) until the final commit where I fix
>   that.
>
> * I could also change the logic that looks for the final element,
>   commit that first and then remove the empty element one commit per
>   driver after that. But then for all the arrays that still have an
>   empty element, there would again be undefined behavior as it would
>   think that the last element is valid (when it is really the sentinel).
>
> Any ideas on how to get around these?

First add size to the register calls, and allow the last one to be
sentinel but do not require the sentinel.

Start removing sentinels, adjusting the size passed in.

Once enough sentinels have been removed, add warning if the final entry
is a sentinel.

Never really remove the check? (But surely you can rework the logic to
not count the number of elements up front, only while iterating.)


BR,
Jani.

>> 
>> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> > index f43950219ffc..e4d7372afb10 100644
>> > --- a/drivers/gpu/drm/i915/i915_perf.c
>> > +++ b/drivers/gpu/drm/i915/i915_perf.c
>> > @@ -4884,24 +4884,23 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>> >  
>> >  static struct ctl_table oa_table[] = {
>> >  	{
>> > -	 .procname = "perf_stream_paranoid",
>> > -	 .data = &i915_perf_stream_paranoid,
>> > -	 .maxlen = sizeof(i915_perf_stream_paranoid),
>> > -	 .mode = 0644,
>> > -	 .proc_handler = proc_dointvec_minmax,
>> > -	 .extra1 = SYSCTL_ZERO,
>> > -	 .extra2 = SYSCTL_ONE,
>> > -	 },
>> > +		.procname = "perf_stream_paranoid",
>> > +		.data = &i915_perf_stream_paranoid,
>> > +		.maxlen = sizeof(i915_perf_stream_paranoid),
>> > +		.mode = 0644,
>> > +		.proc_handler = proc_dointvec_minmax,
>> > +		.extra1 = SYSCTL_ZERO,
>> > +		.extra2 = SYSCTL_ONE,
>> > +	},
>> >  	{
>> > -	 .procname = "oa_max_sample_rate",
>> > -	 .data = &i915_oa_max_sample_rate,
>> > -	 .maxlen = sizeof(i915_oa_max_sample_rate),
>> > -	 .mode = 0644,
>> > -	 .proc_handler = proc_dointvec_minmax,
>> > -	 .extra1 = SYSCTL_ZERO,
>> > -	 .extra2 = &oa_sample_rate_hard_limit,
>> > -	 },
>> > -	{}
>> > +		.procname = "oa_max_sample_rate",
>> > +		.data = &i915_oa_max_sample_rate,
>> > +		.maxlen = sizeof(i915_oa_max_sample_rate),
>> > +		.mode = 0644,
>> > +		.proc_handler = proc_dointvec_minmax,
>> > +		.extra1 = SYSCTL_ZERO,
>> > +		.extra2 = &oa_sample_rate_hard_limit,
>> > +	}
>> >  };
>> 
>> The existing indentation is off, but fixing it doesn't really belong in
>> this patch.
>
> Agreed. But I actually was trying to fix something that checkpatch
> flagged. I'll change these back (which will cause this patch to be
> flagged).
>
> An alternative solution would be to fix the indentation as part of the
> preparation patches. Tell me what you think.
>
> Thx
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
