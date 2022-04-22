Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8923E50B685
	for <lists+openipmi-developer@lfdr.de>; Fri, 22 Apr 2022 13:49:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhrn0-0008Se-JJ; Fri, 22 Apr 2022 11:49:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1nhnz5-0002NF-NN
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Apr 2022 07:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mozxGpVNThVpDxU3FVNcRd3/bjSVUfsXgVBZGesYHcQ=; b=Vg2mVPkimAZVrNxAfnJcsphmWE
 W+5VnbMJLCje1ycgYO656vfH17P1d8A4ZgC91tgXi4ekZw0ELMx11JPZeb9FXtvivIKFNzOy/PYG2
 dRVseFToQxK//XY3dH4Wxqmig3IiDMWO6cOFVnG5kMuiJypgjwJTcYZo/IQV5SoZJgeA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mozxGpVNThVpDxU3FVNcRd3/bjSVUfsXgVBZGesYHcQ=; b=Hf/BmmZvHjwIlnj//Qk7r9Y+Dt
 lu1jilEJUZP7eerbOFj5Is00kEiGGORRQUjOPVUfpXd4Uxtx/+WeLWWcIOFubPD8Y96YpZ3M793Xf
 WZnrIpG5Xj0EAL77kzhCQunbdswPYDxuVd7PhTratu5Ksjnz4ZRage5K+tv2w0dyJxTc=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nhnz2-006Exi-09
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Apr 2022 07:45:42 +0000
Received: by mail-lf1-f53.google.com with SMTP id p10so12807626lfa.12
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 22 Apr 2022 00:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mozxGpVNThVpDxU3FVNcRd3/bjSVUfsXgVBZGesYHcQ=;
 b=dFaXJiaZInJnghQJtlvgdh4lXAnWTxUSVihj7RkPF/++bL8fVbLlZ/pLUAlKoZh/x8
 /iRlc0YIE88TB85pKs95phIGUI/VkIX6cRyEPwLOu+jObgbS6pxqnNXgPu7s+7vukl5h
 lcuad8p9vJHqQyAzwldWPyxExC36yVWvnDVof7Vbm9EN2N0axmsvQY9kU2I1T1X4XSgE
 FGiihVPBg//1Jg5T7zeEPibKuZVkjKFrMhSaB2QQBt/HGD5BAFODvxz7MQYEk95yZU1g
 +1OKDbmG2bGMtaCmlNZ68Qfq7vVUr4uQVSSjEb6KQJn9j16zS2FsiU9Xige6DKLdCv4d
 wYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mozxGpVNThVpDxU3FVNcRd3/bjSVUfsXgVBZGesYHcQ=;
 b=HlpsSuzB/KVZNxO7Uh+jresKgKxfON681vOJ3UhzL1Xo+Q9Sn7Rn6p4zHbcTKS09Mk
 9vy90HPeOvtJzQK1GMb38e38sKkl59GjC0lf01L24j2A2rtSOPSs49sjjXbp4mTSdt7S
 Ywg1Us6GqcEye9LAeBzuFDgH5dvQUzILwVP+cTLxX/yAtcPiTgRhL4VwWfCt7eEfxlXf
 ULO7WytxobGHQRhdPQBd2pOX2Jeo5vfxwoff5e/SntFsorcx8vcVqFBlRer0XPyG9hxW
 G8RPkom82aZ1iKtL6CGWbzIbm53MT1iGvMdYrqkhCVQUT//Dmu/U2aMxuK8RDDyku7LE
 RA/A==
X-Gm-Message-State: AOAM532EosJFx8qWEdAN3RNaIQPcroRmeMyEKyxK41WxIq5kb3GkMHug
 nQVjicgbyL7fFekUz2XaS3j5e+bEB+mGLw==
X-Google-Smtp-Source: ABdhPJwijLHu2gqRX7mBCn8elSy2a/cyiAkiWa5IL9L5CDIleQFKOvKyFF0yVvaYGr/UJ2+gL0DWmg==
X-Received: by 2002:a17:906:7f02:b0:6cf:86d8:c31c with SMTP id
 d2-20020a1709067f0200b006cf86d8c31cmr3012426ejr.518.1650612085191; 
 Fri, 22 Apr 2022 00:21:25 -0700 (PDT)
Received: from [192.168.0.230] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 f5-20020a1709067f8500b006da68bfdfc7sm471328ejr.12.2022.04.22.00.21.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Apr 2022 00:21:24 -0700 (PDT)
Message-ID: <55cbbc16-5769-ecd2-e65e-c3b39a34dfbb@linaro.org>
Date: Fri, 22 Apr 2022 09:21:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Quan Nguyen <quan@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-3-quan@os.amperecomputing.com>
 <153da61e-dc9d-467e-221c-b48d6f54c6c2@os.amperecomputing.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <153da61e-dc9d-467e-221c-b48d6f54c6c2@os.amperecomputing.com>
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22/04/2022 06:16, Quan Nguyen wrote: > Added Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org> > as I'm not aware of the email
 change The email change from @canonical.com was 1.5 months ago, so it would
 be better if rebase your changes on more recent Linux kernel. You get all
 proper .mailmap entries. 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nhnz2-006Exi-09
X-Mailman-Approved-At: Fri, 22 Apr 2022 11:49:30 +0000
Subject: Re: [Openipmi-developer] [PATCH v7 2/3] bindings: ipmi: Add binding
 for SSIF BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 22/04/2022 06:16, Quan Nguyen wrote:
> Added Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> as I'm not aware of the email change

The email change from @canonical.com was 1.5 months ago, so it would be
better if rebase your changes on more recent Linux kernel. You get all
proper .mailmap entries.


Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
