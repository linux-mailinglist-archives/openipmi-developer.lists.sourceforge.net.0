Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D72296FED
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Oct 2020 15:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kVwpC-0006pO-Qf; Fri, 23 Oct 2020 13:09:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <James.Bottomley@HansenPartnership.com>)
 id 1kUEJn-0006BJ-86; Sun, 18 Oct 2020 19:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UjUcVY25R4bafGP+9qdVd0aoGYpiqH6Q+ARLhsHNcW4=; b=NvRLqSQYXyl23SqbrOhsWru/W4
 uN/nJpxWQIUzE5/AoVvKX+m3fYbFQeYxghxBbOp646onfvlaNvJobhds1CmfeBT28Vv9IqOcsRYSi
 Z69mxpAj75h/AjW9+A6RtkkgWoANiW+1YV/HXrNgD2GxEeZdqp0i1nIq/aVFhGaKPANE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UjUcVY25R4bafGP+9qdVd0aoGYpiqH6Q+ARLhsHNcW4=; b=S5P8bHSVLpfkeAG0LoriQH059+
 YJbmvqlLtA4ZvpY8fztIFumlmi96LZVCjwn80e9N+yuV9WqUfSdKA6rMq65IL2Cx7kKy8wXdKxayU
 yv9o/r5ql0cXVU+bFKxLln0oXMvuzlqMtk+XNDUni7InmB3IFXq/qJm6wK0LqB2ehW2o=;
Received: from bedivere.hansenpartnership.com ([96.44.175.130])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kUEJb-00Eszu-Tq; Sun, 18 Oct 2020 19:26:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 7A1D5128046A;
 Sun, 18 Oct 2020 12:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1603048682;
 bh=aTHhEGSm6DrUFNt/hKuOWL0f+WzaMvx/rc4IP5RJYRs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=WcP5INjnqihCMCJ+2ZkHdzEWBsqi3wavZOcf0NGlcoun37UNiQ4GoZk+2AoMrr8hd
 1s2t7Y8IzQcDUGm581+QcIuy/enpzpZm6HswhyX4zoKl9l3S5fk96frr/LU4I9kVw8
 r8s7AtR/5wOGbwEsua/QdQrVgo3j6VSqYIXYukhg=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id ywWMwLsGscQI; Sun, 18 Oct 2020 12:18:02 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::c447])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 340C31280456;
 Sun, 18 Oct 2020 12:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1603048682;
 bh=aTHhEGSm6DrUFNt/hKuOWL0f+WzaMvx/rc4IP5RJYRs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=WcP5INjnqihCMCJ+2ZkHdzEWBsqi3wavZOcf0NGlcoun37UNiQ4GoZk+2AoMrr8hd
 1s2t7Y8IzQcDUGm581+QcIuy/enpzpZm6HswhyX4zoKl9l3S5fk96frr/LU4I9kVw8
 r8s7AtR/5wOGbwEsua/QdQrVgo3j6VSqYIXYukhg=
Message-ID: <0a739bcd421a3154c2521b49779b287e6c0d08a2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Sun, 18 Oct 2020 12:17:59 -0700
In-Reply-To: <20201018191618.GO20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018185943.GM20115@casper.infradead.org>
 <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
 <20201018191618.GO20115@casper.infradead.org>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: urldefense.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kUEJb-00Eszu-Tq
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:09:38 +0000
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
Cc: alsa-devel@alsa-project.org, linux-iio@vger.kernel.org, trix@redhat.com,
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, usb-storage@lists.one-eyed-alien.net,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-pm@vger.kernel.org,
 ath10k@lists.infradead.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, industrypack-devel@lists.sourceforge.net,
 nouveau@lists.freedesktop.org, spice-devel@lists.freedesktop.org,
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

On Sun, 2020-10-18 at 20:16 +0100, Matthew Wilcox wrote:
> On Sun, Oct 18, 2020 at 12:13:35PM -0700, James Bottomley wrote:
> > On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> > > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > > clang has a number of useful, new warnings see
> > > > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> > > 
> > > Please get your IT department to remove that stupidity.  If you
> > > can't, please send email from a non-Red Hat email address.
> > 
> > Actually, the problem is at Oracle's end somewhere in the ocfs2
> > list ... if you could fix it, that would be great.  The usual real
> > mailing lists didn't get this transformation
> > 
> > https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/
> > 
> > but the ocfs2 list archive did:
> > 
> > https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html
> > 
> > I bet Oracle IT has put some spam filter on the list that mangles
> > URLs this way.
> 
> *sigh*.  I'm sure there's a way.  I've raised it with someone who
> should be able to fix it.

As someone who works for IBM I can only say I feel your pain ...

James




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
