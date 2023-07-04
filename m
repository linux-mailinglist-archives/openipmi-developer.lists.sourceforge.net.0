Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B538747672
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jul 2023 18:25:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qGiqM-0000pt-Cl;
	Tue, 04 Jul 2023 16:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg573847474@gmail.com>) id 1qGiqK-0000pn-H7
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jul 2023 16:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6XAzfa0AL030g6ifAQiJNhROl73dItLhZ+SNNO+bSGo=; b=ZdpHm///Mhr5WJgd8c0Y9FY+/l
 KBqT6Ca+oYM4aQkXXWJ6Ss43kO+7ZyUby8PA8mzB3W/r28w8Z0R9TfxNr72dVtmZqmVLiHWz2nGNB
 cCfUgmwKEJOoq7WszQXpIQihlUhi9/jsrXWS9GRGkE14aEIcDAKDyn8YvpXmtQwrhSSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6XAzfa0AL030g6ifAQiJNhROl73dItLhZ+SNNO+bSGo=; b=Feb0cplUAkQDnafcyhdCWGiI/W
 EUUPFSXeDpPKx05mQjPRFibVPuzqfPaPd1/Np2mdxWvcikTsygXkViAUkTlVzHigst+frkAl0qZLW
 L8X6yWetuSuMVyVKB5AIyGs6zGmKh3Moqm9/LH7+eGwlWupE3/B8cwBWHXSWuD9NMvxE=;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qGiqD-0005P3-EH for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jul 2023 16:25:29 +0000
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-314313f127fso3264388f8f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 04 Jul 2023 09:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688487919; x=1691079919;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6XAzfa0AL030g6ifAQiJNhROl73dItLhZ+SNNO+bSGo=;
 b=VNMb8hDTHQXgh27fMtSJDQaeKeXo3N7ViDpsJ5PBXLnNdzgOKZArhJrwA1Slk8yqUA
 GQYqYWcE4BMYxLER1YY4d2qDLQu6jTL3GlCPvUUhdaPLaSfNXPmZvA/kDy9h511YrSQS
 fF+7GwJJBxCWRvdB089x38q1phL/ZToCIG7B1Z07V5KHMk2Sb9ZEYJM8IGzUiMw9gIv+
 yVtxK8rJnnnzxko8gjy23QBroBb4FfyGkwUYYCinhm8bC7KP9C3aX8oR9Iy8Q1mHoY3l
 rKNyTTX3c5jVFKyMx8yyEfcJ8pQqLfp7KBebAsJ3WtBycC+hKt6KsJ6QLBchY9045qp2
 F6gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688487919; x=1691079919;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6XAzfa0AL030g6ifAQiJNhROl73dItLhZ+SNNO+bSGo=;
 b=R6DxpeKUtSuoPztZJqCS9KR+AQq04+YxT0mAUCd4H/2FDB8GedVwbqa5NlK9458oXn
 r1t9WT+ujjMFrWcaj1Jz+yTF7Z4ZKGWZNY6Q51TTfXkHPeIb792BN7FzKEenHWt4O5za
 kAcO0wiDcsL7dqL5PaTASXvlAzqHyYEm/Z73aYWkCXFNF9Tfei6nfvipxf4kWwnMLrXt
 hTUZJfdCFNwNesND7dBj5bRQAaaOWbKkjscCbgcz3mWEGYG40FSVk+ddA7JBhrBwDsOr
 IsFCBlsalUwXsHA8PsagK5A4K5lOodlHiF4InZ01InDIczsCn4vzuMT+kuaRCh/OrFdF
 UW0A==
X-Gm-Message-State: ABy/qLbYvsdRLgKsc3vfPJrHMGuMR6T2AHlDmQW41kk/cW9Kp10LZspD
 9W82x5wmRqv76dCzfogj2MzLGOGQok7rkOc7tqs=
X-Google-Smtp-Source: APBJJlEkQ5vFgoXajAJ707PhJuPueGtz/EMKGz5jRQugQFGun91qTlVMP/vZg8ekFg9YvhbfvovbRxgek2RRpQw+NnA=
X-Received: by 2002:a5d:6305:0:b0:314:1e86:e75d with SMTP id
 i5-20020a5d6305000000b003141e86e75dmr10993197wru.34.1688487918688; Tue, 04
 Jul 2023 09:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230627152449.36093-1-dg573847474@gmail.com>
 <ZJwd0UDKYcK9AvSf@mail.minyard.net>
 <9691d898-22a9-4902-871d-73f5dafabf86@app.fastmail.com>
 <ZKQsY3DXXDbxy0om@mail.minyard.net>
In-Reply-To: <ZKQsY3DXXDbxy0om@mail.minyard.net>
From: Chengfeng Ye <dg573847474@gmail.com>
Date: Wed, 5 Jul 2023 00:25:07 +0800
Message-ID: <CAAo+4rW8uNf14BQYYYH3oiymSv=tSo5iBnPaaeefJWWif46mXA@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks so much for the reply! > Will this tool be available
 for general use? It's obviously quite > handy. And also thanks for your
 interest!
 I am still optimizing the tool, so far it still can report some false positives
 in some cases and require a certain effort of manual checking. Would let
 you know onc [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dg573847474[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dg573847474[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.51 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qGiqD-0005P3-EH
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix potential deadlock on
 &kcs_bmc->lock
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
Cc: Andrew Jeffery <andrew@aj.id.au>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks so much for the reply!

> Will this tool be available for general use?  It's obviously quite
> handy.

And also thanks for your interest! I am still optimizing the tool, so far
it still can report some false positives in some cases and require a certain
effort of manual checking. Would let you know once I finish my work and
open-source it later!

Best Regards,
Chengfeng


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
