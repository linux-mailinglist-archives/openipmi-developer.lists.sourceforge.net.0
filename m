Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9147C49011
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Nov 2025 20:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nYm9kuXBbXTnO9m4hluIo9Kk5XLZQI27AgUSz92zjs=; b=PUs1iccNW6f2guTy19EiyOh8yX
	RYcxftqkJdB9qRVXng7dC/hJjndVv+NLyUDCpIzfP4xdpgI3sKkP5huHewaN6dIsLq2ci/qx4Jsx6
	CXwUjmfe2ZqnR0z+IC4LaIHZd+HoUA3uIOPsevMHUxtubpwlAhw8LPBKwPfxHQxembp0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIXWW-0002U8-IN;
	Mon, 10 Nov 2025 19:25:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rostedt@goodmis.org>) id 1vIXWV-0002U1-Cm
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ktIs30ya9peSXxJK3db/ZzfBKHPyHn572eY2KsO3+r0=; b=ib+ahCIqfgAguGV79qFXz5jxcO
 4E3FalzUvw0ilhjH/YaQOBbKlBBzbkDfzGWJ8ItEK6JD5F++n6W2io75TiKtksvPA5H2bHwpkYTIr
 UZqwP8XUy70cKbj8KMN1weTR/RLUqJujNaaEsLwNMPyw34BV7NOtvvvSgNDaV81dUzOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ktIs30ya9peSXxJK3db/ZzfBKHPyHn572eY2KsO3+r0=; b=lDj2qzY6UjNce1PQnwZJueo4RF
 WAQmOMkIHhT6CaktmjjONyScH73G/1MQH0fNjiUh2R/Bgoo8apHH8a9+urNXZ9ISmQlfTuZrin6HD
 sIuGySOb1qxt6AVmO7CNufE810JgaCFRiJ1C5HAHEJFZc+KBjzCuNdvBkMlNq16GuKmk=;
Received: from smtprelay0016.hostedemail.com ([216.40.44.16]
 helo=relay.hostedemail.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIXWV-0004f4-0u for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:25:55 +0000
Received: from omf01.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay02.hostedemail.com (Postfix) with ESMTP id 93E52139F71;
 Mon, 10 Nov 2025 19:13:00 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by
 omf01.hostedemail.com (Postfix) with ESMTPA id 8E96560009; 
 Mon, 10 Nov 2025 19:12:20 +0000 (UTC)
Date: Mon, 10 Nov 2025 14:12:28 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20251110141228.3f91d9a7@gandalf.local.home>
In-Reply-To: <20251110184727.666591-24-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-24-andriy.shevchenko@linux.intel.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: 8E96560009
X-Stat-Signature: 5hi1hakohzsg8hn7n1iyodmbff6458bx
X-Spam-Status: No, score=1.40
X-Rspamd-Server: rspamout06
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/1YrbZuC0QyunYMMdAkDIH9kIv38TXqEA=
X-HE-Tag: 1762801940-392122
X-HE-Meta: U2FsdGVkX1/BylAg4AKkX/T62VAai09Fwoml7NNoYheN1mcYKcRGTBSABLgOYxDBmZc3QXGw435NWRW1fm6j26IoZJclHSgat1CYtqifdgYizQSiwftLFhR3KIWkHQZvWjzyXLg2mc0Q3PcpPlmly9wdl81xZUnfgj6L460ZoglHnyWOhH4JCMlOWSZwOcmlpyYl23ptJhBgBsvpLR2Kx8Ll9VVqHi6WIJKGvEKEkx6ilvffX6p0Md+SqUXFIyHv2WyDFgTArKQogLnmdfsVyUsJ0uOL4cbXthMvjI+fNrmir9/oaclf5f3+GPufx6UoMsebdMhlI3Sr4FpPoQrK6K880hi143pnEp1yWy8fDYta7ZhDYpeLLlRXJu8Dj1z7txbS6MErRzmgbJiDnG8EIQ==
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon,
 10 Nov 2025 19:40:42 +0100 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 wrote: > Use %ptSp instead of open coded variants to print content of > struct
 timespec64 in human readable format. > > Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> > --- > kernel/trace [...] 
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [216.40.44.16 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1vIXWV-0004f4-0u
Subject: Re: [Openipmi-developer] [PATCH v1 23/23] tracing: Switch to use
 %ptSp
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
Cc: Andrew Lunn <andrew@lunn.ch>, Takashi Iwai <tiwai@suse.de>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-sound@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 freedreno@lists.freedesktop.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 linux-doc@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Satish Kharat <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Corey Minyard <corey@minyard.net>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Xiubo Li <xiubli@redhat.com>, intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 10 Nov 2025 19:40:42 +0100
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  kernel/trace/trace_output.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Acked-by: Steven Rostedt (Google) <rostedt@goodmis.org>

-- Steve


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
