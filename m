Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4456296FE7
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Oct 2020 15:09:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kVwpB-0006p1-40; Fri, 23 Oct 2020 13:09:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>)
 id 1kUDuz-0007gk-9H; Sun, 18 Oct 2020 19:00:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q0BhqrN3gbd6Z80uxUuHxnuOGNa3MQpvn/ujKpbjoKc=; b=PuYLz0rApqBdJB19B0Ean1Slyf
 wWgeMOeRkd9TJm4ewTPeH/YUqRxmBQZ2PhW5Rv1v1C6c7M1xmr19XWcd7cHGecpjLzB/aJXTepRKu
 jy6M5RGh89AWGpmwm4iKB7fRSDH89QyUHId/zrBFBUKEk0cFYxHWdGT49isPVcwH52MQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q0BhqrN3gbd6Z80uxUuHxnuOGNa3MQpvn/ujKpbjoKc=; b=QgYrit7hDVxom4vmZalUwRAunP
 YO0Ug6MZTAByPxT6XquwkTctRYlcbkHSVcitLHKnYMOEC11MPf8v8nRSP1AHfN6Njgndj6XpZ+y5L
 ccfBF5OWiTL+P+YW75Xk3GaHRlUvmgoFFP1qcAOS+rT8WV0XDgoW92yjeVbHqWPTwIps=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kUDus-002rt8-76; Sun, 18 Oct 2020 19:00:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=q0BhqrN3gbd6Z80uxUuHxnuOGNa3MQpvn/ujKpbjoKc=; b=qhWiWAYm9fZ2KNDR/Yk3WeXFl4
 HF2RciAjYHBQMCf3sjKhvFkXSfibnOaNYa7rSxO4GAjMdOb5lKFie8w5W48ySlrw8CCYSSnOZO0Xg
 5v+vzHZ7K/VxCxY2aBAso6UvZLXpaapi00aBgR18RXogoXyWfK3p9m9265NrgW55bmABmFf/ljB+D
 9Af5uL1UZOzL5n8T3eza+cGiO5HDs2I27gnorvuwnA1XSsP05jdLks+n6C8PrE6p/2IOOkRu9s0Qf
 2gQIITEDGF8BYWCD3hQsOGqb9beW/Q62vFU/IQef0kDvAQTCEweywjgtWsVjiKxR3wbF0iuVRtPwK
 m1h79KbA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kUDuB-0007Wk-NT; Sun, 18 Oct 2020 18:59:43 +0000
Date: Sun, 18 Oct 2020 19:59:43 +0100
From: Matthew Wilcox <willy@infradead.org>
To: trix@redhat.com
Message-ID: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: llvm.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kUDus-002rt8-76
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:09:39 +0000
Subject: Re: [Openipmi-developer] [Ocfs2-devel] [RFC] treewide: cleanup
 unreachable breaks
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
Cc: alsa-devel@alsa-project.org, linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, usb-storage@lists.one-eyed-alien.net,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-pm@vger.kernel.org,
 ath10k@lists.infradead.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, industrypack-devel@lists.sourceforge.net,
 linux-pci@vger.kernel.org, spice-devel@lists.freedesktop.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfc@lists.01.org,
 linux-serial@vger.kernel.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 storagedev@microchip.com, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, clang-built-linux@googlegroups.com,
 patches@opensource.cirrus.com, linux-crypto@vger.kernel.org,
 linux-integrity@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> clang has a number of useful, new warnings see
> https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 

Please get your IT department to remove that stupidity.  If you can't,
please send email from a non-Red Hat email address.

I don't understand why this is a useful warning to fix.  What actual
problem is caused by the code below?

> return and break
> 
>  	switch (c->x86_vendor) {
>  	case X86_VENDOR_INTEL:
>  		intel_p5_mcheck_init(c);
>  		return 1;
> -		break;

Sure, it's unnecessary, but it's not masking a bug.  It's not unclear.
Why do we want to enable this warning?



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
