Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C38B86147
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 Sep 2025 18:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:References:In-Reply-To:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e61nI2BPQopsRgNbIKiWLWg5Zzxa+SSGfiAccXUrw0g=; b=GwutT6re4jefBs/Z4InZ/kwO1c
	5QAQpfjtdp+Az8Aaz9FHNxeIaYi6WJu4y1MwSBRjgaEDHNnCnb/YlJNjS+iE0VpR9j/nQ3RydY930
	sxveHKJ8Ck4HkuU+jEiMTIZ4H6BYdSTr3JpEZg18PbHyUbOld0u6/a/e526CDaXMbQYE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uzHji-0002Lk-3w;
	Thu, 18 Sep 2025 16:43:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corbet@lwn.net>) id 1uzHjh-0002Le-8X
 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 Sep 2025 16:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=okc8cPe2ZWbxfmOUNi5nG+59TfojPQ0/kotl+uzMIx4=; b=Vw7vzwYCpL/h0wgykfCbgvgzS4
 Ru4fuETz4aDd2ASTXSt61s7MNAnkqzZf1ZXUODJwnIaKR3PSmMPXOF5O+HHNxC/vjdEpnSLJ1sMHy
 2G3ZiZAybFQ2MdLkM7EPYlSghcIQeru0lRbq36GlDRvGT44H3XHQ6aDnSjnVpQ0sU8+E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=okc8cPe2ZWbxfmOUNi5nG+59TfojPQ0/kotl+uzMIx4=; b=V27zp0xYiT5BZYaBuhWBV+Yox9
 ASt5AcjObQwe0RgBuDjwjVlmTNmscT2PW5drfiWnG+VF0fcvUGmvQdK4UhIPSShparhhaDZTU8c9n
 B4x+kxZJ1i1yC1PvWP12aQIMsm1hZI4ryJmTzNgeH2Yte/hPZrhW+2JWVS/Tie/q0mMY=;
Received: from ms.lwn.net ([45.79.88.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzHjg-00031h-Rp for openipmi-developer@lists.sourceforge.net;
 Thu, 18 Sep 2025 16:43:57 +0000
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net A0E4E406FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1758213830; bh=okc8cPe2ZWbxfmOUNi5nG+59TfojPQ0/kotl+uzMIx4=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=skAot3YMbvaiZa04MZfLYUQLW0PCAhwuSWuoXyO2sFGU7wgEptywDrQ7m4cCgVghX
 5LR8C0EO7gbcAlQTNnGQZvtcZXrpZ77zp6qbCHzWknWW2Ky8MDtvyZdQJdp5S60SGs
 3n/t4u+CrQ9yveIFet2KmuZ/bBfC72/5KtV+tlr0C9wPqbfZyEVezcdkt11oude8t0
 sRJqeqdNVkmOTs8HD88fKmxpz+dzMDYMLBmYM/Mby9blshRxbXJaeW2qys7CTpQvmg
 Gi8skg2ZVMFjqeimW2bhdjMeAOK16meWZgviUXyrxShz4UmN9dpILXsJ5K/SROYs66
 2l4ZeDgZHnwkQ==
Received: from localhost (unknown [IPv6:2601:280:4600:2da9::1fe])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id A0E4E406FA;
 Thu, 18 Sep 2025 16:43:50 +0000 (UTC)
From: Jonathan Corbet <corbet@lwn.net>
To: Marneni PoornaChandu <poornachandumarneni@gmail.com>
In-Reply-To: <20250917220430.5815-1-Poornachandumarneni@gmail.com>
References: <20250917220430.5815-1-Poornachandumarneni@gmail.com>
Date: Thu, 18 Sep 2025 10:43:49 -0600
Message-ID: <87wm5v7ltm.fsf@trenco.lwn.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Marneni PoornaChandu <poornachandumarneni@gmail.com> writes:
 > Replace incorrect plural form "busses" with "buses" in > multiple
 documentation
 files under "Documentation/driver-api". > > Signed-off-by: Marneni
 PoornaChandu <Poornachandumarneni@gmail.com> > --- [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uzHjg-00031h-Rp
Subject: Re: [Openipmi-developer] [PATCH] docs: driver-api: fix spelling of
 "buses".
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
Cc: alexandre.belloni@bootlin.com,
 Marneni PoornaChandu <Poornachandumarneni@gmail.com>,
 linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, corey@minyard.net, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, linux-i3c@lists.infradead.org, mchehab@kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel-mentees@lists.linux.dev,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Marneni PoornaChandu <poornachandumarneni@gmail.com> writes:

> Replace incorrect plural form "busses" with "buses" in
> multiple documentation files under "Documentation/driver-api".
>
> Signed-off-by: Marneni PoornaChandu <Poornachandumarneni@gmail.com>
> ---
>  Documentation/driver-api/device-io.rst             | 4 ++--
>  Documentation/driver-api/driver-model/overview.rst | 2 +-
>  Documentation/driver-api/driver-model/platform.rst | 2 +-
>  Documentation/driver-api/eisa.rst                  | 6 +++---
>  Documentation/driver-api/i3c/protocol.rst          | 4 ++--
>  Documentation/driver-api/ipmi.rst                  | 4 ++--
>  Documentation/driver-api/media/tx-rx.rst           | 4 ++--
>  Documentation/driver-api/nvdimm/nvdimm.rst         | 2 +-
>  Documentation/driver-api/pm/devices.rst            | 4 ++--
>  Documentation/driver-api/scsi.rst                  | 4 ++--
>  Documentation/driver-api/spi.rst                   | 2 +-
>  Documentation/driver-api/usb/hotplug.rst           | 2 +-
>  Documentation/driver-api/usb/usb.rst               | 4 ++--
>  13 files changed, 22 insertions(+), 22 deletions(-)

"Busses" is considered to be a legitimate spelling as well.  I have gone
ahead and applied this in the hope that it will reduce the temptation
for others to "fix" it, but this kind of change in general is a sort of
churn that does not really help the kernel project.  Thanks for working
to improve our documentation, but I do hope that you will find more
useful improvements going forward.

Thanks,

jon


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
