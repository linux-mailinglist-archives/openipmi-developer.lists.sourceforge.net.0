Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7374524A24E
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 17:00:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8PZT-0004FU-UY; Wed, 19 Aug 2020 15:00:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <James.Bottomley@HansenPartnership.com>)
 id 1k8PZO-0004Et-Uy; Wed, 19 Aug 2020 15:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kQcO2LQaX3eQIWobyRoXKgRErtQkUzKBQnAQ4hIuODk=; b=eN6ZpbDCzSMDiW4YfP5VBWrtg5
 bDVGm80/NbSs8EhS13B8gu4hUZuvBC9qJ28k7/cgfh/ahqczriE3ZGfVWLLN9TmOZs8SopDFgKqbj
 spg1ONRqLfVnluiNzw2h1vhvBSWgffJvs61sDoFGQYkQZ6mQLmCb/SSlVmg4lXJm2sGw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kQcO2LQaX3eQIWobyRoXKgRErtQkUzKBQnAQ4hIuODk=; b=XDIW03Go4tF2NdHjDXxU5694pe
 AYcVoL0G3ekqtF+ydQST1LkZc8/Fpt3CUM1lE6ty12M2w9YkpIcwr86RtNxfEtfAuQxD9VfUQCupi
 5pQwsIBXHg/vPPHO20J+csb5nOEO+BSbCQyGO4bXxpafmwAYLc9j7PSSntGAy53w9Koc=;
Received: from bedivere.hansenpartnership.com ([66.63.167.143])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8PZJ-00GBSh-DP; Wed, 19 Aug 2020 15:00:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id D115F8EE17F;
 Wed, 19 Aug 2020 07:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597849189;
 bh=7PMu9izfvJP0Yqog7vxhcEQb9h62GDKPX1If4m+L8R0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=OjUAwUTp/ItAZSlbV+f5fOCaWVzt9DqIN+w9yoJxaEE0gnHE6rZZVb54+Hz0c5ZZE
 Hb/3aibCu54t6gcW2aVqbWIIDHBKiOLbR/fOvAY90fW0SUrQP0QkX8+CeCZ+PSzzdQ
 ViQuLsoRKTFDhSIJnCWv76g7gqa9l4AuHedfCKt8=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id XOU0COqUWmkB; Wed, 19 Aug 2020 07:59:49 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net
 [73.35.198.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 6C2C88EE0E9;
 Wed, 19 Aug 2020 07:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597849189;
 bh=7PMu9izfvJP0Yqog7vxhcEQb9h62GDKPX1If4m+L8R0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=OjUAwUTp/ItAZSlbV+f5fOCaWVzt9DqIN+w9yoJxaEE0gnHE6rZZVb54+Hz0c5ZZE
 Hb/3aibCu54t6gcW2aVqbWIIDHBKiOLbR/fOvAY90fW0SUrQP0QkX8+CeCZ+PSzzdQ
 ViQuLsoRKTFDhSIJnCWv76g7gqa9l4AuHedfCKt8=
Message-ID: <1597849185.3875.7.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jens Axboe <axboe@kernel.dk>, Kees Cook <keescook@chromium.org>
Date: Wed, 19 Aug 2020 07:59:45 -0700
In-Reply-To: <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8PZJ-00GBSh-DP
Subject: Re: [Openipmi-developer] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, kys@microsoft.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 2020-08-19 at 07:00 -0600, Jens Axboe wrote:
> On 8/18/20 1:00 PM, James Bottomley wrote:
[...]
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as
> > container_of with the only difference being you name the containing
> > structure instead of having to specify its type.
> 
> Not to incessantly bike shed on the naming, but I don't like
> cast_out, it's not very descriptive. And it has connotations of
> getting rid of something, which isn't really true.

Um, I thought it was exactly descriptive: you're casting to the outer
container.  I thought about following the C++ dynamic casting style, so
out_cast(), but that seemed a bit pejorative.  What about outer_cast()?

> FWIW, I like the from_ part of the original naming, as it has some
> clues as to what is being done here. Why not just from_container()?
> That should immediately tell people what it does without having to
> look up the implementation, even before this becomes a part of the
> accepted coding norm.

I'm not opposed to container_from() but it seems a little less
descriptive than outer_cast() but I don't really care.  I always have
to look up container_of() when I'm using it so this would just be
another macro of that type ...

James



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
