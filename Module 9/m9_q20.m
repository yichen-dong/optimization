for node=[7 9]

for index=1:10
    node
    index

    in=ind(index,node)

    if in~=0

        out =ind(node,index)

        flow = x(in)-x(out)

        x(in)=max(flow,0)

        x(out)=max(-flow,0)

    end

end

end