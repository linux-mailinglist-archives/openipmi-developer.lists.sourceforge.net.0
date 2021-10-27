Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C243D093
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Oct 2021 20:20:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mfnXb-0003t3-44; Wed, 27 Oct 2021 18:20:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mfnXa-0003ru-4b
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Oct 2021 18:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YdhI8fqzmWGcXeq1t4NkGBwtDfcAf+zoczP4+N0COBM=; b=WTo8IWVo5WpDAOZj+h+ELaTU6Y
 HXrYf00NvAiTRlFiSck7WPlTQvSdLVj8bP02/C5k1OhmQTGbGUA4JdQCsEEYL5ZGORA74RkkBUJ/V
 qsFpObE4YGj1c0NKbbPTRlCSw+27cbslfBavdGAthZIuprKpuSu3EpS113gvLDGM5kUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YdhI8fqzmWGcXeq1t4NkGBwtDfcAf+zoczP4+N0COBM=; b=IJ96kr8p0W3wZwDCXU+PjtuVs3
 C0v/oKAezPjojKQvJe/O6Gh/yOMc3xTmO6oOGAoHyg4wNsx7wfjGj4hGpmcwNZyqPbNYW3xP1aSCM
 6eNkEpazUSSG2ZU9TlJYy+WKu1HrQYJKsPvv5uYxmAa85mtl0I/G5DACW3pQHIqRWDjI=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfnXQ-001uQ0-AB
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Oct 2021 18:20:44 +0000
Received: by mail-qk1-f179.google.com with SMTP id i9so2825325qki.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 11:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=YdhI8fqzmWGcXeq1t4NkGBwtDfcAf+zoczP4+N0COBM=;
 b=UTMB/+zSl9YaXYKS5BIRPUFlja5Yb/zUUzpmDA3Q6nOQoKY09lCDDzzDyx8Pp/MWRP
 NUY2AUwhZ/rDft1ftVxAnklTJ7lhok4v77RoW45TjuaaJGHIoEXmpKp8FDFttj5rWdTY
 6djh9GLZu1HZceh0sS3yVz2gVbOwe8Lz3vaPVkQ1TV+UsBqd0ePw8IWfrLbX1uuQKEox
 f+6wFrOgLpK5fzd0FP8xD+/nZrYziatzpKvJ9ueINRtteSFGOb44Ym7W2YFl36zKQdrK
 XSusEVPjEfh104pL6Ct7uK580QctaqhsnpqQISSG9diA5WXNUMj3L3XUwIcOqaqbdDmm
 zX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=YdhI8fqzmWGcXeq1t4NkGBwtDfcAf+zoczP4+N0COBM=;
 b=vtnDGrBahuxAg9pOzCegKEWZxdAVc9P1Xc70MqC1H1WHJ8mit+yB4JHTQPU+/1dhR5
 2dZ7i3nfw6z52mMJ7hJT6hdqkciuQxSd0eMWOLYl93BeXqz5kSgTIOyeXujDkGAROL2L
 q5z5nskljgwng440RtG5JA0rQD4Rgpp/MMxlcHtdJ6PjszU+xq02+tSryUqw9fplqD3W
 ZLLLzuDp32FewM8AoxtMEjuy3mkuBTx09o0QabMQVaGzbThURXCRUxOardzbAyr3YIHh
 V6o13MRbk4r7OZqmDbIc0oUStHPIorMHXFesoZpmGSNY0sMj8DcU4ieCC8B4doNcoDIj
 Tjog==
X-Gm-Message-State: AOAM531uXtXZRUIMlaI5GcTnPYRYN/JjpqsKydzwg/PEv0WsGQTIujg+
 bmNfEH49O3uGZwjDcJ7Bk1xld6s3DA==
X-Google-Smtp-Source: ABdhPJxHCbQ5fxTJTcJ15Ko66SwsXysTHrVqW3EAxaWenw0fZN9tHIVGY90nR6tCxWS2qsbTXO0tQQ==
X-Received: by 2002:a05:620a:28c9:: with SMTP id
 l9mr25620637qkp.360.1635358830392; 
 Wed, 27 Oct 2021 11:20:30 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id v17sm468522qkl.123.2021.10.27.11.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 11:20:29 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ece2:c5c7:8266:ec0b])
 by serve.minyard.net (Postfix) with ESMTPSA id B6F531800B4;
 Wed, 27 Oct 2021 18:20:28 +0000 (UTC)
Date: Wed, 27 Oct 2021 13:20:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20211027182027.GG2744412@minyard.net>
References: <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
 <20210917132648.GG108031@montezuma.acc.umu.se>
 <20210920113802.GC545073@minyard.net>
 <20210920141231.GH108031@montezuma.acc.umu.se>
 <20210920144146.GD545073@minyard.net> <YXmTbYhFvDJ0m5KX@sashalap>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXmTbYhFvDJ0m5KX@sashalap>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 27, 2021 at 01:59:09PM -0400, Sasha Levin wrote:
 > On Mon, Sep 20, 2021 at 09:41:46AM -0500, Corey Minyard wrote: > > On Mon,
 Sep 20, 2021 at 04:12:31PM +0200, Anton Lundin wrote: > > > On [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mfnXQ-001uQ0-AB
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Reply-To: minyard@acm.org
Cc: Anton Lundin <glance@acc.umu.se>, openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Oct 27, 2021 at 01:59:09PM -0400, Sasha Levin wrote:
> On Mon, Sep 20, 2021 at 09:41:46AM -0500, Corey Minyard wrote:
> > On Mon, Sep 20, 2021 at 04:12:31PM +0200, Anton Lundin wrote:
> > > On 20 September, 2021 - Corey Minyard wrote:
> > > 
> > > > Well, that was dumb.  Fix follows...
> > > >
> > > > Thanks for working on this.  On your approval, I'll send this to Linus.
> > > 
> > > Winner winner chicken dinner!
> > > 
> > > This fixes the issue, and now panic timer works, and we get crashdumps
> > > to pstore.
> > > 
> > > Great job, I approve!
> > > 
> > > 
> > > Thanks for your help getting this fixed.
> > 
> > Thanks for reporting this.  I'll get the patch in.
> 
> Hey Corey,
> 
> Just checking in to see if this patch was lost; I haven't seen it in
> Linus's tree just yet.

I generally wait until the merge window for changes.  It's too late in
the process for a patch now unless it's really critical.

rc7 is out now, the merge window should be opening soon.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
