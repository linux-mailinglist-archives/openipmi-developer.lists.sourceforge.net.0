Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8354E759D87
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jul 2023 20:37:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qMC3L-0003sc-HO;
	Wed, 19 Jul 2023 18:37:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg573847474@gmail.com>) id 1qMC3K-0003sV-9N
 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Jul 2023 18:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wbzW658ot9d77mkw3ofuoH8LwLVnB+5s2Ey2zvsPMLA=; b=YRb8WjKCzcUCsLmDxcITcfFTPN
 n4QxuYWID/Oms3rDyPuajeb9qOczR7RDTe/0hwqS8G3Bxg/QlhETipRqTN9xgNIfWUEAVF79/B3Bl
 W/A8RXr3ie+TADVSL3TwfgJ9WjY/ugmHMhm9AltI9GgxhgEjhONS1Uu0h2oPuaIJKFgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wbzW658ot9d77mkw3ofuoH8LwLVnB+5s2Ey2zvsPMLA=; b=WD0dNrcVwqtDNQe6FIpnsbFk1v
 mAthusSP/ok99biLAMMRTNYGqAaThGWjMiJnpoGZXsxf0CW6MEIUNgxW4aOgwC+S++L2gMzDSHdON
 hs6XM9d5e/zcsl/aCxCg18d1dTKlH6tsfaEPoWLJbpyqr6N++nlsI2ELpSPel2lp9+4g=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMC3F-00DLoi-St for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Jul 2023 18:37:34 +0000
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-316eabffaa6so6349001f8f.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 Jul 2023 11:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689791843; x=1692383843;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wbzW658ot9d77mkw3ofuoH8LwLVnB+5s2Ey2zvsPMLA=;
 b=L2PGvrwI327GW5ln8uaCIDaHaJwt03XsUEF27j+7GuR690LN+uF0XU/ie3PTyqj0UL
 QSA3b+YYjWHJDTRxAMvm6GoFfREPV9pRn2+dtm/NELtJnK4XlEAp010kdPmvUoG5jL9P
 64rQc7pYOSEZ1jpvQwfEqCy4mr0G0UlOk5rXIxNigGRBBU0vNVFabQcJs1O2sAPy/cu+
 wtMF6O3xTRahupfRWnDUMAIcb9Gqx4ag8c9n3x0QFyhHE3YyL7pSkvPOb6pCzBzZhcLW
 cNBkYapGO4+d83y55R59ihHoUAjISxCtyrZhv643/3neDAsBgng+ezrbHLJqlf0FbhSC
 N3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689791843; x=1692383843;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wbzW658ot9d77mkw3ofuoH8LwLVnB+5s2Ey2zvsPMLA=;
 b=dTMKqnJIF21RKZbrZH6ZcoHCmPmjE+7bn/S/3cImDneLvO82s3p/7HQnoTIotOFTQQ
 q2VhBUvwoBYvHZxvPgxLrRtP1mLrxwuS8X4sDFf/5pl/YYLhz0rZ6ip8d04xeL65Tln4
 w/YPZDszOHU9MsSl7ZysLLOqM8uH0p4rnRhKyynqCcbukAeU12NXLJirLdVRtf5ujItu
 T9KZRNOVpurP/DzvNFcCg/kieZhnwhDfA2y1VtoMauGPeigKlEaqbj8Y9YSuahV1WKDV
 2Wkw27aVd3sQ05OJ7DljdQqT1Ek28fiMUw7yxvAAGxfoVCStT4aVsl8zm2zBzVvZPrHD
 tXsQ==
X-Gm-Message-State: ABy/qLa/WlUnboxywFmaWxVJN+YxZ7wb8Mk8zo01wkXvYGXSLqA7AYHU
 /0lRmgCU5WK0dHNVnHKGIx/u2OkxalvoshIvxz6vpXJ9SIzd2w==
X-Google-Smtp-Source: APBJJlGKJGSZ9wWN5QqDTFFlth9Ohf7bjuHUGOgd13rN/5JzESpmy06zg5Pd4gE36DsRje6KDHHWCWpDeVZxYJd7pJ4=
X-Received: by 2002:a05:6000:ce:b0:317:1911:fd7a with SMTP id
 q14-20020a05600000ce00b003171911fd7amr531921wrx.12.1689791843281; Wed, 19 Jul
 2023 11:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230627152449.36093-1-dg573847474@gmail.com>
 <ZJwd0UDKYcK9AvSf@mail.minyard.net>
 <9691d898-22a9-4902-871d-73f5dafabf86@app.fastmail.com>
 <ZKQsY3DXXDbxy0om@mail.minyard.net>
 <34c75a2f-2daa-49be-bdca-a3fff5ed5a4a@app.fastmail.com>
In-Reply-To: <34c75a2f-2daa-49be-bdca-a3fff5ed5a4a@app.fastmail.com>
From: Chengfeng Ye <dg573847474@gmail.com>
Date: Thu, 20 Jul 2023 02:37:12 +0800
Message-ID: <CAAo+4rXkVJ0WJM8Mrd35eUEnJC71Jzs2eff_J0Y5EEShybbd6g@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>, Corey Minyard <minyard@acm.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Reviewed-by: Andrew Jeffery > Tested-by: Andrew Jeffery
 Thanks much for your time and effort in reviewing/testing the patch. Best
 Regards, Chengfeng 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dg573847474[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dg573847474[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.46 listed in list.dnswl.org]
X-Headers-End: 1qMC3F-00DLoi-St
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> Tested-by: Andrew Jeffery <andrew@aj.id.au>

Thanks much for your time and effort in reviewing/testing the patch.

Best Regards,
Chengfeng


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
